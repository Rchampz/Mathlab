clear all; clc; 
load 'matriksciri.mat';
lab=matriksciri(:,7)';
dataset=matriksciri(:,1:6)';
K=4;
[trainset,testset] = genKFold(K, dataset, lab);
