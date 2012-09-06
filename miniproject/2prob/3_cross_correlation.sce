// Group_13:    Bhargava B  100070054
//              Surya K     100070055
//              S K Savant  100070056
// Question:
//Compute and plot the cross-correlation rxy (m), 0<= m<= 99.
//Use the plot to estimate the value of the delay D.
exec("../2prob/2_delay_noise_seq.sce",-1)
exec("../1prob/sinusoidal_vector.sci",-1)
exec("../1prob/normalnoisevec.sci",-1)
function[delay,corrvec]=cross_correlation(xseq,yseq,M)
    newseq=[]
    for i=1:length(yseq)
        if (i<=0 | i>length(xseq)) then
            newseq=[newseq,0]
        else
            newseq=[newseq,xseq(i)]
        end
    end
    N=length(newseq)
    corrvec=[]
    for m=-99:99
        corrval=0
        for n=1:200
            if (n-m>0 & n-m<=200) then
                corrval=corrval+newseq(n)*yseq(n-m)
                //disp(n,n-m)
            end
        end
        corrvec=[corrvec,corrval]
    end
    maxf=0
    index=i
    nvec=linspace(-99,99,199)
    for i=1:length(corrvec)
        if(corrvec(i)>maxf) then
            maxf=corrvec(i)
            index=i
        end
    end
    //disp(nvec(index))
    //disp(corrvec)
    delay=-nvec(index)
    disp('Delay is')
    disp(delay)
    //disp(length(corrvec))
    //disp(length(nvec))
    //disp(length(corrvec))
    xset('window',5)
    plot(nvec,corrvec)

endfunction

//xvec=sinusoidalvec(0.1,200)
xvec=barker
yvec=delay_noise_seq(xvec,0.001,0.9,20,-1)
cross_correlation(xvec,yvec,100)
