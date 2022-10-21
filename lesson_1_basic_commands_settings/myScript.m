%% sections

% create sections using "%%" for selective execution 
%% house keeping commands

clc         % clear cosole
clear       % clear workspace 
clear mex   % clear mex 
clear all   % clear all  
close       % close active figure 
close all   % close all active figures 
%% help and doc

help struct % short description 
doc struct % detailed documentation 
%% variables

% scalar variable, 1x1 matrix 
a=1 % default is double 
b=2
c=int16(a) % spefific datatype  
%% array or more commonly referred to as vector

% vector definition 
d=1:10 % array, default is row vector 

d=1:1:10 % linearly spaced 

d=1:2:10 % odd numbers

% vector operations 
e=d' % transpose, row to column vector conversion   

%% matrix

% define matrix 
f=magic(3) % 3x3 square matrix, in-built matlab command 

f=magic(4) % 4x4 

% access matrix elements 
f(1,:) % access 1st row of matrix f  
% f(0,:) - fails since indexes start from "1" in matlab unlike in C/Python
% where indices start from "0" 
f(:,1) % access 1st column of matrix f 
f(2,2) % access 2nd element in 2nd row of matrix f 
% matrix operations 
inv(f)
%% structure

% structure definition 
motor = struct % empty structure 
motor.r = 2 %ohm, field and value of the structure 
motor.l = 1 %mH
motor.noOfPhases = 2 %#
% structure element operations 
motor.r * 2 % accessing structure elemetns and operating on them 
%% boolean datatype

g1 = boolean(0) % logical 0 
g2 = boolean(1) % logical 1
h = boolean(1:10) % logical vector
i = false % logical 0
j = true % logical 1
%% more in-build functions

% vector operations 
max(d) % find max value in a vector 
min(d) % find min value in a vector 
median(d) % median 
mean(d) % mean or average 
% matrix operations 
k = max(f) % max in col 
l = max(f,[],2) % max in row 
m = max(f,[],'all') % max element 
c(:) % all matrix elements as a column vector 
n=max(f(:)) % note that m and n are same 
%% print or display on console

% print a variable 
x = 1;
disp(x)
disp("x = "+string(x)) % note many ways 
disp('x = '+string(x))
disp("x = "+ string(x))
disp(['x = ', num2str(x)])
% print a vector 
y = 1:10;
disp(['y = ',num2str(y)]) 
% print each element 
disp("y = "+string(y)) % note the difference, iterates over elements  
% print a matrix 
z = magic(3);
disp(['z = ', mat2str(z)])
% form a string and then print it 
myStr = sprintf('%s is %f and x is %d.', 'pi', pi, x);
disp(myStr)
% directly print a string 
fprintf('%s is %f and x is %d.', 'pi', pi, x);
%% function

[p,q] = mult(1,1)
[p,~] = mult(1,1) % ignoring other output arguements 
%% plots continuous

figure % new window 
plot(11:20)
%% plots just data points

figure 
plot(11:20, 'o' )
%% plots discrete

figure 
stairs(11:20)
%% plot overlaps

figure 
plot(11:20, 'r'), hold on 
plot(11:20, 'go')
stairs(11:20, 'k')
hold off 
legend('rep1','rep2','rep3')
xlabel('samples')
ylabel('data')
%% using workspace in simulink model

% open myModel.slx 
model_gain = 2;
model_constant = 5;