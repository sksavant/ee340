//Write a program to obtain the period of x(n) from the noise 
//corrupted sinusoidal sequence y(n).
//
function[periodoffunc]=get_period(y)
    fy=fft(y)
    //disp(length(fy))
    N=length(y)
    nvec=linspace(0,N-1,N)
    //disp(length(nvec))
    xset('window',6)
    plot(nvec(1:N/2),fy(1:N/2))
    maxfval=0
    index=0
    for i=1:(N/2)
        if (abs(fy(i))>maxfval) then
            maxfval=abs(fy(i))
            index=i
        end
    end
    //disp(nvec(index))
    periodoffunc=N/nvec(index)
endfunction

exec("3_signal_noise.sce",-1)
y=plotsignalnoise(0.1,200,0.01)
get_period(y)
