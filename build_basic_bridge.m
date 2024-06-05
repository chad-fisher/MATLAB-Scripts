function bridgedrive(nos)
[A,xc,yc,L]=build_basic_bridge(nos);
[dx,dy,W,X,Y]=deform_basic_bridge(nos,A,xc,yc,L,f,1)
end
function [A,xc,yc,L]=build_basic_bridge(nos)
q=1/sqrt(2);
top=[1,0,0,0;0,0,q,q];
bottom=[0,-1,0,1;0,0,q,-q;-1,0,0,0];
section=[0,-1,0,1,0,0,0,0;0,0,-q,q,q,-q,0,0;0,0,-1,0,0,0,1,0;-q,-q,0,0,0,0,q,q;-1,0,0,0,1,0,0,0];
A=zeros(5+nos*5,4*nos+4);
A([1,2],1:4)=top;
A(end-2:end,end-3:end)=bottom;
for k=1:nos
    A((5*k-2):(5*k+2),(4*k-3):(4*k+4))=section;
end
xc=zeros(5+nos*5,2);
yc=zeros(5+nos*5,2);
xc(1,:)=[0,1];
yc(1,:)=[0,0];
xc(2,:)=[0,1];
yc(2,:)=[0,1];
xc(end,:)=[1+nos,2+nos];
yc(end,:)=[0,0];
xc(end-1,:)=[1+nos,2+nos];
yc(end-1,:)=[1,0];
xc(end-2,:)=[1+nos,1+nos];
yc(end-2,:)=[0,1];
for k=1:nos
    xs=[k,k;k,k+1;k,k+1;k,k+1;k,k+1];
    ys=[0,1;1,0;1,1;0,1;0,0];
    xc((5*k-2):(5*k+2),:)=xs;
    yc((5*k-2):(5*k+2),:)=ys;
end

L=ones(5*nos+5,1);
L(2)=1/q;
for k=1:nos
    L(5*k-1)=1/q;
    L(5*k+1)=1/q;
end
L(end-1)=1/q;
line(xc',yc','color','k','linewidth',2)
hold on
fill([-.1,.1,.1,-.1],[0,0,-.2,-.2],'w')
fill([1.9+nos,2.1+nos,2.1+nos,1.9+nos],[0,0,-.2,-.2],'w')
axis off
axis equal
hold off
end

function [dx,dy,W,X,Y]d=deform_basic_bridge(nos,A,xc,yc,L,f,E)
R=E./L;
k=diag(R);
x=(A'*k*A).\f;
W=x'.*f;
X=x(1:2:end);
Y=x(2:2:end);
dx=zeros(size(xc));
dy=zeros(size(yc));
dx(1,:)=xc(1,:)+[0 X(1)];
dx(2,:)=xc(2,:)+[0 X(2)];
dy(1,:)=yc(1,:)+[0 Y(1)]; 
dy(2,:)=yc(2,:)+[0 Y(2)];
disp(x)
end
