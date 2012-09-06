// Group_13:    Bhargava B
//              Surya K
//              S K Savant
// Question:
//Compute and plot the cross-correlation rxy (m), 0<= m<= 99.
//Use the plot to estimate the value of the delay D.
exec("../2prob/2_delay_noise_seq.sce",-1)
exec("../1prob/sinusoidal_vector.sci",-1)
exec("../1prob/normalnoisevec.sci",-1)
function[crosscorrvec]=cross_correlation(xseq,yseq,M)
    N=200
    //disp(length(xseq))
    //disp(length(yseq))
    crosscorrvec=linspace(1,M,M)
    mvec=linspace(1,M,M)
    //disp(crosscorrvec)
    for i =1:M
        crosscorrvec(i)=0
        for n=1:N
            if(n+i>0 & n+i<length(xseq)) then
                crosscorrvec(i)=crosscorrvec(i)+xseq(n+i)*yseq(n)
            end
        end
    end
    disp(length(crosscorrvec))
    xset('window',5)
    plot(mvec,crosscorrvec)
endfunction

xvec=sinusoidalvec(0.1,200)
xvec=barker
yvec=delay_noise_seq(xvec,0.0001,0.9,20,-1)
cross_correlation(xvec,yvec,100)
