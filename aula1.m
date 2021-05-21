clc;clear all; close all;

% PPGFon
% Curso MATLAB para Fonoaudi�logos
% Aluna: Carolina Evangelista

%% Definindo vari�veis 
Nome= {'Carol';'Thalliny';'Leila';'Brenda'; 'Heitor'}; % alunos
N1= [9.4;10;9.3;8;6]; % nota avalia��o 1
N2=[6;7.6;10;9.8;9.7]; % nota avalia��o 2
N3=[8.5;5;6;7.9;7]; % nota avaliacao 3
boletimTurma=table(N1,N2,N3); % tabelando

%% mostrando os resultados
% tarefa aula 01 pt.2

boletimTurma.Properties.RowNames = Nome % dando nome as colunas
disp('A m�dia da turma na primeira avalia��o foi: ')
mediaturmaN1=mean(boletimTurma.N1) % m�dia da nota 1 da turma 
disp('A m�dia final de cada aluno foi: ')
boletimTurma.Media = (N1+N2+N3)/3; % m�dia por aluno das notas 1, 2 e 3
Media = boletimTurma.Media;
boletimTurma(1:5,4:4)

%% chamando a fun��o
% desafio aula 01 pt.3 

% crie uma fun��o que receba 5 valores e retorne media, std, max e min.
% aqui irei usar os mesmos valores das notas dos 5 alunos em cada avalia��o.

disp('esses � o desempenho geral dos alunos na primeira avalia��o:')
[media, desvio, maiorNota, menorNota]=calcular(N1)
disp('esses � o desempenho dos alunos na segunda avalia��o:')
[media, desvio, maiorNota, menorNota]=calcular(N2)
disp('esses � o desempenho dos alunos na terceira avalia��o:')
[media, desvio, maiorNota, menorNota]=calcular(N3)

%% fun��o

function [media, desvio, maiorNota, menorNota] = calcular(N)
    media = mean(N);
    desvio = std(N);
    maiorNota = max(N);
    menorNota = min(N);
end