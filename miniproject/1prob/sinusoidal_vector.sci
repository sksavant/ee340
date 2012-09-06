// Group_13:    Bhargava B  100070054
//              Surya K     100070055
//              S K Savant  100070056
//Outputs a sinusoidal vector
function[sinusoidalf]=sinusoidalvec(a,N)
        sinusoidalf=[]
        for n=0:N
            sinusoidalf=[sinusoidalf,cos(a*%pi*n)]
        end
        //disp(nvec)
        //disp(sinusoidalf)
endfunction
