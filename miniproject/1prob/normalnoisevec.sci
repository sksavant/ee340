// Group_13:    Bhargava B  100070054
//              Surya K     100070055
//              S K Savant  100070056
function[randvec]=gaussiannoise(variance,N)
    nvec=linspace(0,N,N+1)
    //disp(length(nvec))
    rand('normal') //Want a normal variable
    randvec=rand(nvec)  //Want N values of random variable
    randvec=sqrt(variance)*randvec //Variance(a*X)=a^2 Variance(X)
endfunction
