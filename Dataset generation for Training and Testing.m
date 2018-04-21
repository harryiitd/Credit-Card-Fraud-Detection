clc
clear
t=0;
g=1;
f=0;
s_g = 6;
mu_g = 30;
s_f = 40;
mu_f = 100;
n=10000;
v=zeros(n,3);
s=g;
rng(1234);
i=1;

for i=1:n
    r = rand;
if(r>=0 && r<=0.7)
    s=g;
    t=exprnd(0.25);
else
    s=f;
    t=exprnd(1/9);
end
if(s==g)
    v(i,1) = t;
    v(i,2) = g;
    v(i,3) = randn*s_g + mu_g;
else
    v(i,1) = t;
    v(i,2) = f;
    v(i,3) = randn*s_f + mu_f;
end

end

xlswrite('Generated_Dataset.xlsx',v);
