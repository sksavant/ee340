// Group_13:    Bhargava B
//              Surya K
//              S K Savant
// Question:
// To generate a sinusoidal sequence x(n)=cos(a\pi n) 0<=n<=N 0<=a<=1
function[sinusoidalf]=plotsinusoidal(a,N)
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
        title('Sinusoidal sequence')
        xlabel('n')
        ylabel('sin(a*pi*n)')
        plot(nvec,sinusoidalf)
    end
endfunction
