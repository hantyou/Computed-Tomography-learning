clc,clear;
% iptsetpref('ImshowAxesVisible','on')
% I = zeros(1000,1000);
% I(25:75, 25:75) = 1;
% theta = 0:180;
% [R,xp] = radon(gpuArray(I),theta);
% imshow(R,[],'Xdata',theta,'Ydata',xp,...
%             'InitialMagnification','fit')
% xlabel('\theta (degrees)')
% ylabel('x''')
% colormap(gca,hot), colorbar
% iptsetpref('ImshowAxesVisible','off')

% clc,clear;
% iptsetpref('ImshowAxesVisible','on')
% I = zeros(1000,1000);
% I(25:75, 25:75) = 1;
% theta = 0:180;
% [R,xp] = radon(I,theta);
% imshow(R,[],'Xdata',theta,'Ydata',xp,...
%             'InitialMagnification','fit')
% xlabel('\theta (degrees)')
% ylabel('x''')
% colormap(gca,hot), colorbar
% iptsetpref('ImshowAxesVisible','off')
close all;
I=ones(512);
R=50;
vert=0;
hori=0;
I=GenCircle(I,vert,hori,R);
I2=GenCircle(I,135,172,30);
I=not(I);
I2=not(I2);
I=uint8(I).*1;
I2=uint8(I2).*1;
subplot(121),imshow(I);
subplot(122),imshow(I2);


RI=fanbeam(I,364);
RI=uint8(RI);
RI2=fanbeam(I2,364);
RI2=uint8(RI2);
figure,subplot(121),imshow(RI);
subplot(122),imshow(RI2);
iRI2=ifanbeam(double(RI2),100);
figure,imshow(iRI2);
% r=sqrt((vert-256)^2+(hori-256)^2);
% for theta=1:180
%     for s=1:512
%         if(abs(s-r*cos(theta))<R)
%         RIC(s,theta)=2*1*sqrt(R^2-(s-r*cos(theta))^2);
%         end
%     end
% 
% end
% figure,imshow(RIC);
% for
