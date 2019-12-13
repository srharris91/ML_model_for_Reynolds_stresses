clear all; close all; clc;
tic
fname='data/bl_H-type_PSE_inflow_dt_period.85000';
fid=fopen(fname,'r','b');
time=fread(fid,1,'float64')
nu=fread(fid,1,'float64')

n   = fread(fid,1,'int32');
x   = fread(fid,n,'float64');

n   = fread(fid,1,'int32');
y   = fread(fid,n,'float64');

n   = fread(fid,1,'int32');
z   = fread(fid,n,'float64');

n   = fread(fid,1,'int32');
xm  = fread(fid,n,'float64');

n   = fread(fid,1,'int32');
ym  = fread(fid,n,'float64');

n   = fread(fid,1,'int32');
zm  = fread(fid,n,'float64');

n   = fread(fid,3,'int32');
U   = fread(fid,n(1)*n(2)*n(3),'float64');
U   = reshape(U,n(1),n(2),n(3));

n   = fread(fid,3,'int32');
V   = fread(fid,n(1)*n(2)*n(3),'float64');
V   = reshape(V,n(1),n(2),n(3));

n   = fread(fid,3,'int32');
W   = fread(fid,n(1)*n(2)*n(3),'float64');
W   = reshape(W,n(1),n(2),n(3));

fclose(fid);
toc
% plot
figure(1)
subplot(3,1,1)
pcolor(x,ym,U(:,2:end-1,3)'), shading flat, axis equal, axis tight

subplot(3,1,2)
pcolor(xm,y,V(2:end-1,:,3)'), shading flat, axis equal, axis tight

subplot(3,1,3)
pcolor(xm,ym,W(2:end-1,2:end-1,3)'), shading flat, axis equal, axis tight

drawnow

