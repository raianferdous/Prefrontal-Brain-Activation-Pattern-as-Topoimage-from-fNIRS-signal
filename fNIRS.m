clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Part-1(Generating Brain Activation Pattern)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Uploading HbO Data To MATLAB Workspace
x=load('HBO.txt');

% Select a specific Data point
data=x(55,:);

%Assigning channel datas into variables for future steps 
P01=0; P11=data(:,2); P21=data(:,4); P31=data(:,6); P41=data(:,8); P51=data(:,10);
P61=data(:,12); P71=data(:,14); P81=data(:,16); P91=0;

P02=0; P12=data(:,1); P22=data(:,3); P32=data(:,5); P42=data(:,7); P52=data(:,9);
P62=data(:,11); P72=data(:,13); P82=data(:,15); P92=0;

P00=0; P10=P11*0.15; P20=P21*0.15; P30=P31*0.15; P40=P41*0.15; P50=P51*0.15; 
P60=P61*0.15; P70=P71*0.15; P80=P81*0.15; P90=0;

P03=0; P13=P12*0.15; P23=P22*0.15; P33=P32*0.15; P43=P42*0.15; P53=P52*0.15; P63=P62*0.15;
P73=P72*0.15; P83=P82*0.15; P93=0;


%Basic Activation Pattern Scheme
%2nd and 3rd row represents the 16 Channels 
V=   [P00 P10 P20 P30 P40 P50 P60 P70 P80 P90;...
      P01 P11 P21 P31 P41 P51 P61 P71 P81 P91;...
      P02 P12 P22 P32 P42 P52 P62 P72 P82 P92;...
      P03 P13 P23 P33 P43 P53 P63 P73 P83 P93];

%Creating 2D Rectangular Grid  
[X,Y] = meshgrid(0:9,0:3);


%Creating the query points for interpolation process
[Xq,Yq] = meshgrid(0:0.05:9,0:0.05:3);

%Brain Activation Pattern Generation
%In the Publication "hot" colorbar is used
%The Greater The Blue, The Greater The Activation
%The Greater The Red, The Least The Activation

%Spline Interpolation%
figure; 
Vq = interp2(X,Y,V,Xq,Yq,'spline');
[cc hh]=contourf(Xq,Yq,Vq,200,'LineStyle','none');
set(hh,'EdgeColor','none')
set(gca,'Visible','off');
colormap(flipud(jet))
colorbar
fprintf('\n Figure 1 Represents the Spline Interpolation')


%Cubic Interpolation%
figure; 
Vq2 = interp2(X,Y,V,Xq,Yq,'cubic');
[cc hh]=contourf(Xq,Yq,Vq2,200,'LineStyle','none');
set(hh,'EdgeColor','none')
set(gca,'Visible','off');
colormap(flipud(jet))
colorbar
fprintf('\n Figure 2 Represents the Cubic Interpolation')


%Linear Interpolation%
figure; 
Vq3 = interp2(X,Y,V,Xq,Yq,'linear');
[cc hh]=contourf(Xq,Yq,Vq3,200,'LineStyle','none');
set(hh,'EdgeColor','none')
set(gca,'Visible','off');
colormap(flipud(jet))
colorbar
fprintf('\n Figure 3 Represents the Linear Interpolation')


%%%%%%%%%%%%%%%%Part-2(Topographical Image/Brain Activation Pattern on Brain Image)%%%%%%%%%%%%%%
