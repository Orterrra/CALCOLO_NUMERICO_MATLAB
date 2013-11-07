%%====================================%%
%%== SISTEMI LINEARI.		==========%%
%%====================================%%
%%== Choleski                =========%%
%%====================================%%

clc;
clear all;
n=5;
B=rand(n);
det(B);

A=B'*B;   %% se B � non simmetrica, A � simmetrica e definita positiva
A-A';      %% dovrebbe essere 0 (verifichiamo la simmetria)
eig(A);    %% controliamo che autovalori>0

R=chol(A); %% R � tale che A=R'*R

%% A^-1=R^-1*(R^-1)'   // cos� � pi� efficiente
R1=inv(R);
inversa=R1*R1';
inv(A)-inversa        %% il risultato � circa 10^-13.. non precississimo perch� MATLAB usa inversa un po' diversa e bisognerebbe controllare
                       %% il condizionamento


