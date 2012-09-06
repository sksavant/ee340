// Group_13:    Bhargava B  100070054
//              Surya K     100070055
//              S K Savant  100070056
// Question:
// Let x(n) be the 13-point Barker sequence 
// x(n) = {+1, +1, +1, +1, +1, -1, -1, +1, +1, -1, +1, -1, +1}.
// Determine the auto-correlation of the above sequence.
//
// Function to find auto_correlation of x

//Barker NOT WORKING : To FIX TO Auto_Correlation
function[corrvec]=auto_correlation(sequence)
    N=length(sequence)
    nvec=linspace(-12,12,25) // -
    if (N>13) then
        disp("Invalid")
    end
    corrvec=[]
    for m=-12:12
        corrval=0
        for n=1:13
            if (n-m>0 & n-m<=13) then
                corrval=corrval+sequence(n)*sequence(n-m)
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
