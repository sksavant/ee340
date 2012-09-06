
function[randvec]=gaussiannoise(variance,N)
    nvec=linspace(0,N,N+1)
    //disp(length(nvec))
    rand('normal') //Want a normal variable
    randvec=rand(nvec)  //Want N values of random variable
    randvec=sqrt(variance)*randvec //Variance(a*X)=a^2 Variance(X)
endfunction
