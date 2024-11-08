clc;
clear;
close all;

% Define zeros, poles, and gain of the transfer function
zeros = [ (-4)]; % Replace with your system's zeros
poles = [-25,-1,-3,-3]; % Replace with your system's poles
gain = 72; % Replace with your system's gain

% Create transfer function from zeros, poles, and gain
sys = zpk(zeros, poles, gain);

% Generate Bode plot and calculate margins
figure;
[mag, phase, w] = bode(sys); % Calculate magnitude, phase, and frequencies
margin(sys); % Plot Bode plot with margins

% Calculate margins and crossover frequencies
[GM, PM, Wcg, Wcp] = margin(sys);

% Display results
disp(['Gain Margin (dB): ', num2str(20*log10(GM))]);
disp(['Phase Margin (degrees): ', num2str(PM)]);
disp(['Gain Crossover Frequency (rad/s): ', num2str(Wcg)]);
disp(['Phase Crossover Frequency (rad/s): ', num2str(Wcp)]);