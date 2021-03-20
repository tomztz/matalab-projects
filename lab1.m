

close all;

count=1;
for k=[1,3,5,10,50,500]
 
 subplot(3,2,[count]);
 
 t=-1:0.01:1;
 ft=0;
 for n=1:2:k*2
 f=sin(2*pi*n*t)/n;

 ft=ft+f;
  
 end
 fts=4/pi*ft;
 
plot(t,fts)
 hold on;
  x=-1:0.5:1;
 y=square(2*pi*x);
  stairs(x,y)
  ylim([-2,2]);
count=count+1;
 end

