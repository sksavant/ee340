// Group_13:    Bhargava B  100070054
//              Surya K     100070055
//              S K Savant  100070056
exec("signal_noise.sci",-1)
function[]=plotsignalnoise(a,N,Variance)
    nvec=linspace(0,N,N+1)
    signnoise=signalnoise(a,N,Variance)
    xset('window',67)
    title('Signal with gaussian noise')
    plot(nvec,signnoise)
endfunction

plotsignalnoise(0.01,1000,0.1)
