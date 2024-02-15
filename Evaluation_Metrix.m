I1=imread('final1.jpg');%Reading the original Image
I2=imread('t1.tif');%Reading the Ground Truth
I1=imbinarize(I1);
size(I1)
%% True Positive
I3= imresize(I1, size(I2));%Making the size equal
%imshow(I3);%Displaying the image
%% 
TP = immultiply(I2,I1);%Multiplying the two images
%imshow(TP)%SHowing the image
%% True Negative
I4 = imcomplement(I1);%Complimenting the image
I5 = imcomplement(I2);%Complimenting the image
I6= imresize(I4, size(I5));%Making the size equal
TN = immultiply(I5,I6);%Multiplying the two images
%% False Positive
I7= imresize(I4, size(I2));%Making the size equal
FP = immultiply(I2,I7);%Multiplying the two images
%% False Negative
I8= imresize(I5, size(I1));%Making the size equal
FN = immultiply(I8,I1);%Multiplying the two images
    
%% 
TP=sum(TP(:)==1);%Finding the count of number of ones
TN=sum(TN(:)==1);%Finding the count of number of ones
FP=sum(FP(:)==1);%Finding the count of number of ones
FN=sum(FN(:)==1);%Finding the count of number of ones
%% 
TP
TN
FP
FN
Accuracy=(TP+TN)/(TP+TN+FP+FN);%Finding the Accuracy
Accuracy*100%Finding the percentage of Accuracy
