close all;
count=1;
for k=[1,3,5,10,50,500]
    subplot(3,2,[count]);
    
    t=-1:0.01:1;
a=zeros(1,k);
 for n=1:1:k
 f=4/pi*(sin(2*pi*n*t)/n);

a(n) = max(f);
 end
 hold on;
stem(1:1:k,a)
count=count+1;
end