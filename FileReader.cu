#include "FileReader.h"

void LoadImages(std::string filename){
    Mat image = imread(filename);

    if(image.empty()){
        std::cout << "File not found" << std::endl;
    }

    Mat gray;
    cvtColor(image, gray, COLOR_BGR2GRAY);

    Mat binary;
    adaptiveThreshold(gray, binary, 255, ADAPTIVE_THHRESH_GAUSSIAN_C, THRESH_BINARY, 11, 2);

    imshow("Oryginał", image);
    imshow("Przetworzone img", binary);
}
