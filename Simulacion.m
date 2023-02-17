%Simulación Rocas Volcánicas
n=1;
coord=[];
disp('Simulacion de Rocas Volcanicas arrojadas por el Volcan de Fuego en Guatemala')
fprintf('Condiciones iniciales:\nAltura: 3763 metros\nDensidad del aire: 1.2 kg/m3\nMasa de la roca: 16 kg\nArea de la roca: 0.00298 m2\nVolumen de la roca: 0.0000152 m3\nGravedad: -9.81 m/s2\nTime Step: 1 seg\n')
disp('Condiciones Variables: Angulo de lanzamiento y Velocidad inicial')
a=input('Dame el angulo de lanzamiento en grados:\n');
vo=input('Dame la velocidad inicial en m/s :\n');
xo=0;
yo=3763;
vox=vo*(cos(a*(pi/180)));
voy=vo*(sin(a*(pi/180)));
xoo=xo-vox;8
yoo=yo-voy;
b=0.0210107;
g=-9.81;
m=16;
ts=1;
aox=-abs(vox)/vox*b/m*vox^2;
aoy=g-abs(voy)/voy*b/m*voy^2;
x1=(2*xo-xoo)+0.5*aox*ts^2;
y1=(2*yo-yoo)+0.5*aoy*ts^2;
vx1=x1-xo;
vy1=y1-yo;
ax=-abs(vx1)/vx1*b/m*vx1^2;
ay=g-abs(vy1)/vy1*b/m*vy1^2;

figure(1)
title('Lanzamientos')
xlabel('Desplazamiento')
ylabel('Altura')
hold on
grid on
axis([-6000 6000 0 8000])
l=-3000:1:3000;
c=-0.001.*(l.*l)+3763;
plot(l,c,'k-','LineWidth',2)

while y1>=0
    comet(x1,y1)
    coord(n,1)=x1;
    coord(n,2)=y1;
    coord(n,3)=vx1;
    coord(n,4)=vy1;
    coord(n,5)=sqrt(vx1^2+vy1^2);
    n=n+1;
    xoo=xo;
    yoo=yo;
    xo=x1;
    yo=y1;
    x1=(2*xo-xoo)+0.5*ax*ts^2;
    y1=(2*yo-yoo)+0.5*ay*ts^2;
    vx1=x1-xo;
    vy1=y1-yo;
    ax=-abs(vx1)/vx1*b/m*vx1^2;
    ay=g-abs(vy1)/vy1*b/m*vy1^2;
end

T=array2table(coord,'VariableNames',{'Desplazamiento','Altura','Velocidad en x','Velocidad en y','Velocidad resultante'});
T
