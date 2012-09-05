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
exec "../1prob/2_noise.sce"
exec "../1prob/1_sinusoidal.sce"
function[]=delay_noise_seq(xseq,variance,alpha,D)
    N=length(xseq)
    nvec=linspace(1,N-1,N)
    noiseseq=uniformnoise(variance,N+D)
    //disp(length(noiseseq))
    yseq=nvec
    //disp(length(yseq))
    for i=1:N+20
        if i>20 then
            yseq(i)=alpha*xseq(i-20)+noiseseq(i)
        else
            yseq(i)=noiseseq(i)
        end
    end
    nvec=linspace(1,N+D-1,N+D)
    for i=1:D
        xseq=[xseq,0]
    end
    xset('window',1)
    subplot(2,1,1)
    title('Given sequence')
    plot(nvec,xseq)
    subplot(2,1,2)
    title('Delay and Noise sequence')
    plot(nvec,yseq)
endfunction

delay_noise_seq(plotsinusoidal(0.1,200),0.01,0.9,20)
