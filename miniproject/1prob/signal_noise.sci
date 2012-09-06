// Group_13:    Bhargava B  100070054
//              Surya K     100070055
//              S K Savant  100070056exec("sinusoidal_vector.sci",-1)
exec("normalnoisevec.sci",-1)
function[yvec]=signalnoise(a,N,Variance)
    xvec=sinusoidalvec(a,N)
    vvec=gaussiannoise(Variance,N)
    //disp(length(xvec))
    //disp(length(vvec))
    yvec=xvec+vvec
endfunction
