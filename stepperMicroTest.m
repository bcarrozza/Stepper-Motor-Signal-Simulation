clear
steps=80;
res=100; %resolution

w=pi/2;
micros=steps*res;


for i=1:micros
    A(i)=posi(w,i,0,res);
    B(i)=posi(w,i,1,res);
    C(i)=posi(w,i,2,res);
    D(i)=posi(w,i,3,res);
    end
t=1:micros;
plot(t,A,'k',t,B,'b',t,C,'c',t,D,'g')


function x=posi(w,t,phi,res)
p=sin(w*(t/res-phi));
if p<=0
    x=0;
else 
    x=255.*p;
end
end