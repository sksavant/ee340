exec("sinusoidal_vector.sci",-1)
exec("normalnoisevec.sci",-1)
function[]=plotsignalnoise(a,N,Variance)
    xvec=sinusoidalvec(a,N)
    vvec=gaussiannoise(Variance,N)
    disp(length(xvec))
    disp(length(vvec))
    yvec=xvec+vvec
    nvec=linspace(0,N,N+1)
    plot(nvec,yvec)
endfunction

plotsignalnoise(0.01,1000,0.1)
