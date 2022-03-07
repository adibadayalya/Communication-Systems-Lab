%Aditya Badayalya, 510819056, Assignment 2
clc;clear;
t = 0:100;
y = chirp(t,0,1,0.001);
figure('name',"Question 7",'numbertitle', 'off');
stem(t,y);