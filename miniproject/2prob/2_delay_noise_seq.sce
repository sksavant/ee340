// Group_13:    Bhargava B
//              Surya K
//              S K Savant
// Question:
//Let v(n) be a Gaussian random sequence with zero mean and variance
//sigma^2 . Write a program that generates the sequence y(n), 
//0 <=n<= 299, for alpha = 0.9 and D = 20. Plot the signals x(n),
//y(n), 0 <= n <= 199
//
//
exec("../1prob/normalnoisevec.sci",-1)
exec("../1prob/sinusoidal_vector.sci",-1)
LENGTH_MAX=200
function[yseq]=delay_noise_seq(xseq,variance,alpha,D,plottheg)
    N=200//length(xseq)
    //disp(N)
    nvec=linspace(0,N-1,N)
    //disp(nvec)
    noiseseq=gaussiannoise(variance,N-1)
    //disp(length(noiseseq))
    yseq=nvec
    //disp(21)
    //disp(length(yseq))
    for i=1:N
        if (i>20 & i<20+length(xseq)) then
            //disp(i)
            yseq(i)=alpha*xseq(i-20)+noiseseq(i)
        else
            yseq(i)=noiseseq(i)
        end
    end
    //`disp('ok')
    newseq=[]
    for i=1:N
        if (i<=0 | i>length(xseq)) then
            newseq=[newseq,0]
        else
            newseq=[newseq,xseq(i)]
        end
    end
    disp(length(newseq))
    if (plottheg==1) then
        xset('window',1)
        subplot(2,1,1)
        title('Given sequence')
        plot(nvec,newseq)
        subplot(2,1,2)
        title('Delay and Noise sequence')
        plot(nvec,yseq)
    end
endfunction

barker=[1 1 1 1 1 -1 -1 1 1 -1 1 -1 1]
delay_noise_seq(barker,0.01,0.9,20,1)
//delay_noise_seq(sinusoidalvec(0.1,200),0.01,0.9,20,1)
