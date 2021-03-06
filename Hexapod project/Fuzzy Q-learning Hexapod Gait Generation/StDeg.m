% This function maps the states to the joint variables. every state is coded as a 6 digit integer. Leg number 1,2,...,6. 
% The inverse kinematic of the states are solved and stored in
% "ThetaStaCom.mat and is loaded to be used.

function Y=StDeg(St)

load ThetaStaCom

S6=mod(St,10);
S5=mod(.1*(St-S6),10);
S4=mod(.01*(St-S6-S5*10),10);
S3=mod(.001*(St-S6-S5*10-S4*100),10);
S2=mod(.0001*(St-S6-S5*10-S4*100-S3*1000),10);
S1=mod(.00001*(St-S6-S5*10-S4*100-S3*1000-S2*10000),10);

Theta.t1=ThetaSta.t1(:,floor(S1));
Theta.t2=ThetaSta.t2(:,floor(S2));
Theta.t3=ThetaSta.t3(:,floor(S3));
Theta.t4=ThetaSta.t4(:,floor(S4));
Theta.t5=ThetaSta.t5(:,floor(S5));
Theta.t6=ThetaSta.t6(:,floor(S6));


Y=Theta;