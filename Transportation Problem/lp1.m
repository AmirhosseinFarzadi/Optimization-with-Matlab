clc;
clear;
close all;

%% Create Model

model=CreateModel();

%% Create Matrices

out=CreateMatrices(model);

f=out.f;
A=out.A;
B=out.B;
Aeq=out.Aeq;
Beq=out.Beq;
lb=out.lb;
ub=out.ub;

%% Call LINPROG

options=optimset('Display','iter',...
                 'LargeScale','on',...
                 'Simplex','off');

[x z exitflag output lambda]=linprog(f,A,B,Aeq,Beq,lb,ub,[],options);

%% Reshpe Solution

x=reshape(x,model.n,model.m);
