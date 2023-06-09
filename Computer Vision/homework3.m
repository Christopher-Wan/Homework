clc;
clear;
close all;
Image=imread('image1.jpg');
Image_gray=rgb2gray(Image);
Input1=imnoise(Image_gray,'salt & pepper');
Output1=edge(Input1,'Roberts');
Output2=edge(Input1,'Sobel');
Output3=edge(Input1,'Prewitt');
Output4=edge(Input1,'log');
Output5=edge(Input1,'Canny');
[BW,threshOut] = edge(Input1,'Canny');
threshOut
Output6=edge(Input1,'Canny',[ 0.0438,0.3]);
figure;
imshow(Input1);title('原图像');
figure;
imshow(Output1);title('Roberts算子');
figure;
imshow(Output2);title('Sobel算子');
figure;
imshow(Output3);title('Prewitt算子');
figure;
imshow(Output4);title('LoG算子');
figure;
imshow(Output5);title('Canny算子');
figure;
imshow(Output6);title('Canny算子更改阈值');
