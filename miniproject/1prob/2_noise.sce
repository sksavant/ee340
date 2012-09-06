// Group_13:    Bhargava B
//              Surya K
//              S K Savant
// Question:
// Generate uniformly distributed random noise v(n), 0<=n<=N 
// with zero mean and variance sigma^2
// Plot v(n).
exec("normalnoisevec.sci",-1)
function[]=plotguassiannoise(Variance,N)
    nvec=linspace(0,N,N+1)
    //disp(randvec)
    title('Normal Random noise')
    xlabel('n')
    ylabel('noise')
    //disp(length(randvec))
    plot(nvec,gaussiannoise(Variance,N))
    //disp('OK')
    //disp(sum(randvec)/N) //Checks mean
    //disp(sum(randvec^2)/N)  //Checks variance
endfunction
