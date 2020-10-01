clear all;
clc;
close all;
%Signal
fm=0.02;
t=-100:0.01:100;
s= cos(2*pi*t*fm);
figure(1),subplot(2,2,1),plot(t,s);
xlabel('time');
ylabel('amplitude');
title('signal');
%sampling
fs=0.02;
ts=1/fs;
n=-100:100;
%  t=n.*ts;
% t=1:ts:500-ts;
s_n=cos(2*pi*(n/fs)*fm);
figure(1),subplot(2,2,2),plot(n,s_n);

xlabel('n');
ylabel('amplitude');
title('sampled signal when fs=0.02');
%
fs=0.04;
ts=1/fs;
n=-100:100;
s_n1=cos(2*pi*(n/fs)*fm);
figure(1),subplot(2,2,3),plot(n,s_n1);

xlabel('n');
ylabel('amplitude');
title('sampled signal when fs=0.04');
%
%
fs=0.5;
ts=1/fs;
n=-100:100;
s_n2=cos(2*pi*(n/fs)*fm);
figure(1),subplot(2,2,4),plot(n,s_n2);

xlabel('n');
ylabel('amplitude');
title('sampled signal when fs=0.5');
%