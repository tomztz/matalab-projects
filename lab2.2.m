 [test,fsampling]= audioread('exercise notes.wav');
 N=10000;
%  newX=fsampling/N*(-N/2:N/2-1);
 newX=transpose(-fsampling/2:fsampling/N:fsampling/2-fsampling/N);
 test1=test(1:7000); 
 test2=test(7001:10001);
 subplot(2,2,[1])
 plot(test1);
 sound(test1);
 
 subplot(2,2,[2]);
 plot(test2);
 sound(test2);

 
 F1=fftshift(abs(fft(test1,N)));
 F2=fftshift(abs(fft(test2,N)));
 subplot(2,2,[3])
 plot(newX,F1);
 subplot(2,2,[4])
 plot(newX,F2);