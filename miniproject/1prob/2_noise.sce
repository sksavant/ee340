// Group_13:    Bhargava B
//              Surya K
//              S K Savant
// Question:
// Generate uniformly distributed random noise v(n), 0<=n<=N 
// with zero mean and variance sigma^2
// Plot v(n).

function[randvec]=uniformnoise(variance,N)
    nvec=linspace(0,N-1,N)
    //disp(nvec)
    rand('normal') //Want a normal variable
    randvec=rand(nvec)  //Want N values of random variable
    randvec=sqrt(variance)*randvec //Variance(a*X)=a^2 Variance(X)
    //disp(randvec)
    title('Normal Random noise')
    xlabel('n')
    ylabel('noise')
    plot(nvec,randvec)
    //disp(sum(randvec)/N) //Checks mean
    //disp(sum(randvec^2)/N)  //Checks variance
endfunction
