#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <stdio.h>
#include <iostream>

/*
Ce programme permet d'extraire les choux de la vidéo choux.mp4 se trouvant dans le dossier ../data/
ou d'une autre vidéo donnée en paramètre
*/
using namespace cv;
using namespace std;

/*
Cette fonction gère la mise en pause du programme: si l'utilisateur appuie sur p la vidéo se fige
et il devra rappuyer sur p pour la relancer
*/
static void pause(){
	while(true){
		char key = waitKey(0);
		if ('p' == key) { break; }
	}
}

/*
Cette fonction est le coeur du programme: c'est elle qui permet d'extraire les choux d'une frame
Pour cela, on utilise un intervalle de couleur qui correspond à la couleur des choux
*/
static Mat extract(Mat frame){
	Mat extracted_frame = Mat::zeros(frame.size(), frame.type());

	if (!frame.empty()){
		//On passe d'abord l'image en HSV où les intervalles de couleur sont plus stables
		Mat hsv;
		cvtColor(frame, hsv, COLOR_BGR2HSV);

		//Une teinte et saturation de 60 (+/-20) semble donner les meilleurs résultats
		Mat bw;
		int limit = 20;
		inRange(hsv, Scalar(60-limit, 50, 50), Scalar(60+limit, 255, 255), bw);

		//On uniformise l'extraction avec les contours, pour combler les trous
		vector< vector<Point> > contours;
		findContours(bw.clone(), contours, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);
		drawContours(extracted_frame, contours, -1, Scalar::all(255), FILLED);

		//Enfin on extrait les choux de la frame initiale grâce au masque
		extracted_frame &= frame;

	}

	return extracted_frame;
}

/*
Cette fonction permet de lire la vidéo frame par frame et d'appeler la fonction extract sur chacune d'elle
*/
static void process_video(VideoCapture in_video){
	//On fait défiler les frames au même rythme que la vidéo d'origine
	int frame_rate = in_video.get(CAP_PROP_FPS);

	//Ce paramètre est géré par la barre espace, il permet d'effectuer l'extraction ou non
	bool extract_choux = false;
	
	while(true){
		Mat frame;

		in_video >> frame;

		//Si la vidéo est terminé, on sort de la fonction et la sauvegarde se lancera ensuite
		if (frame.empty()){
			break;
		}

		if (extract_choux){
			frame = extract(frame);
		}
		
		imshow("choux", frame);
		char key = waitKey(frame_rate);

		//Si l'utilisateur appuie sur q, la vidéo se termine et la sauvegarde se lance
		//S'il appuie sur r, cela relance la vidéo depuis le début
		//S'il presse la touche p, la vidéo se met en pause et ne reprend que lorsque l'on rappuie sur p
		//Enfin, la barre espace permet d'appliquer ou non l'extraction
		if ('q' == key) { break; }
		else if ('r' == key) { in_video.set(CAP_PROP_POS_FRAMES, 1); }
		else if ('p' == key) { pause(); }
		else if (' ' == key) { extract_choux=!extract_choux; }
	}
}

/*
Cette fonction permet de sauvegarder toute la vidéo en ne gardant que les choux
*/
static void save(VideoCapture in_video){
	cout << "Saving video extracted.avi to current folder..." << endl;
	//On reprend la vidéo du début
	in_video.set(CAP_PROP_POS_FRAMES, 1);
	int frame_rate = in_video.get(CAP_PROP_FPS);
	VideoWriter out_video("./extracted.avi", in_video.get(CAP_PROP_FOURCC), frame_rate, Size(in_video.get(CAP_PROP_FRAME_WIDTH),in_video.get(CAP_PROP_FRAME_HEIGHT)));
	//Et on l'écrit frame par frame
	while(true){
		Mat frame;
		in_video >> frame;
		frame = extract(frame);
		out_video.write(frame);
		if (frame.empty()){
			break;
		}
	}
	out_video.release();
}

int main(int argc, char* argv[]){

	VideoCapture in_video;

	//Si aucune vidéo n'a été fournie en input, on lance l'extraction sur la vidéo des choux
    if (argc < 2) {
    	//On sélectionne la vidéo
		in_video.open("../data/choux.mp4");
	} else {
		in_video.open(argv[1]);
	}

	//La fonction process_video est celle qui permet d'extraire les choux
	process_video(in_video);

	//On ne sauvegarde la vidéo qu'à la fin car l'écriture est un peu longue
	save(in_video);
	in_video.release();
	destroyAllWindows();
	return 0;
}