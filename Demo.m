clc;
clear all;
load model%the predict model of NSIQM which is saved in model.mat
r = 2; 
eps = 0.1^2; 
w=[-13.8026,-121.5477,20.1502,29.4161,-21.9511,162.3058];%weights of each feature which are saved in weight.mat
img=imread('testimage.bmp');
ff=feature_extraction(img,r,eps,w);
Quality=NSIQM(ff,model)
