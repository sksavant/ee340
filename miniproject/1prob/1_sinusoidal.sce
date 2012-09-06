// Group_13:    Bhargava B
//              Surya K
//              S K Savant
// Question:
// To generate and plot a sinusoidal sequence x(n)=cos(a\pi n) 0<=n<=N 0<=a<=1
exec("sinusoidal_vector.sci",-1)
function[]=plotsinusoidal(a,N)
    nvec=linspace(0,N,N+1)
    if (a<0 | a>1) then
        disp("Give alpha value between 0 and 1")
    else
        //disp(nvec)
        xset('window',55)
        title('Sinusoidal sequence')
        xlabel('n')
        ylabel('sin(a*pi*n)')
        plot(nvec,sinusoidalvec(a,N))
    end
endfunction

plotsinusoidal(0.01,1000)
