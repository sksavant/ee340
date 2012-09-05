// Group_13:    Bhargava B
//              Surya K
//              S K Savant
// Question:
// Let x(n) be the 13-point Barker sequence 
// x(n) = {+1, +1, +1, +1, +1, -1, -1, +1, +1, -1, +1, -1, +1}.
// Determine the auto-correlation of the above sequence.
//
// Function to find auto_correlation of x

//Barker NOT WORKING : To FIX TO Auto_Correlation
function[corrvec]=auto_correlation(sequence)
    N=length(sequence)
    nvec=linspace(0,2*N,2*N) // -
    corrvec=[]
    for i=0:2*N-1 // i= 0 to 2N+1
        corrval=0
        for j=1:N
            if(i-j>0 & i-j<=N) then
                //disp(i-j)
                corrval=corrval+sequence(i-j)*sequence(j)
            end
        end
        corrvec=[corrvec,corrval]
    end
    disp(corrvec)
    //disp(length(corrvec))
    //disp(length(nvec))
    plot(nvec,corrvec)
endfunction

barker=[1,1,1,1,1,-1,-1,1,1,-1,1,-1,1]
auto_correlation(barker)
