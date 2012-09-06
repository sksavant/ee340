//Outputs a sinusoidal vector
function[sinusoidalf]=sinusoidalvec(a,N)
        sinusoidalf=[]
        for n=0:N
            sinusoidalf=[sinusoidalf,cos(a*%pi*n)]
        end
        //disp(nvec)
        //disp(sinusoidalf)
endfunction
