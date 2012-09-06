//Outputs a sinusoidal vector
function[sinusoidalf]=sinusoidalvec(a,N)
    if (a<0 | a>1) then
        disp("Give alpha value between 0 and 1")
    else
        sinusoidalf=[]
        for n=0:N
            sinusoidalf=[sinusoidalf,cos(a*%pi*n)]
        end
        nvec=linspace(0,N,N+1)
        //disp(nvec)
        //disp(sinusoidalf)
    end
endfunction
