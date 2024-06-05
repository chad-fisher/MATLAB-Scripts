function cooldrive
a=.1;
b=3;
tol=.01;
x_store=1:31;
for i=1:31
    L=1+(i-1)*.1;
    x_store(i)=bisect(a,b,tol,L);
    b=x_store(i);
    disp(x_store(i))
end
L=1:.1:4;
hold on
plot(L,x_store.^2,'x-b')
grid on
ylabel('Decay Rate, x^2')
xlabel('Bar Length, L')
title('Chad Fisher - Assignment 2')
ax = gca;
ax.GridLineStyle = ':';
hold off
disp(x_store)
end
function [m]=cool(a,b,tol,L)
m=(a+b)/2;
while abs(coolfun(m,L))>tol
    if coolfun(a,L)*coolfun(b,L)>0
        disp('unknown if function changes sign on interval')
    end
    if coolfun(a,L)*coolfun(m,L)>0
        a=m;
    elseif coolfun(b,L)*coolfun(m,L)>0
        b=m;
    end
    m=(a+b)/2;
end
end
function [val]=coolfun(x,L)
val=sin(x*L)+x*cos(x*L);
end