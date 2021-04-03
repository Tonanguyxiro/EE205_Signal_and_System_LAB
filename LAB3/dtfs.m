% 3.5最后一问

function a=dtfs(x,n_init);
if n_init==0
    a=1/length(x)*fft(x);
else if n_init<0
        for i=1:-n_init
            x=[x x(i)];
        end
        x=x(1-n_init:length(x));
         a=1/length(x)*fft(x);
    else n_init>0
        for i=i:n_init
            x=[x(length(x)-i+1) x];
        end
        x=x(1:length(x)-n_init);
        a=1/length(x)*fft(x);
    end
end