exec("signal_noise.sci",-1)
y1=signalnoise(0.01,1000,0.01)
y2=signalnoise(0.01,1000,0.1)
y3=signalnoise(0.01,1000,1)
N=length(y1)
nvec=linspace(0,N-1,N)
xset('window',234)
subplot(3,1,1)
title('y1: Variance 0.01')
plot(nvec,y1)
subplot(3,1,2)
title('y2: Variance 0.1')
plot(nvec,y2)
subplot(3,1,3)
title('y3: Variance 1')
plot(nvec,y3)
exec("4_get_period.sce",-1)
[fy1,per1]=get_period(y1)
[fy2,per2]=get_period(y2)
[fy3,per3]=get_period(y3)
xset('window',235)
subplot(3,1,1)
title('y1: Variance 0.01')
plot(nvec(1:50),fy1(1:50))
subplot(3,1,2)
title('y2: Variance 0.1')
plot(nvec(1:50),fy2(1:50))
subplot(3,1,3)
title('y3: Variance 1')
plot(nvec(1:50),fy3(1:50))
disp("Period 1 :")
disp(per1)
disp("Period 2 :")
disp(per2)
disp("Period 3 :")
disp(per3)