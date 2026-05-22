%%
clc; 
clear;
close all;

%% ================= VEHICLE PARAMETERS =================
ms = 1500;          % Sprung mass (kg)
mu = 45;            % Unsprung mass per wheel (kg)
ks = 12000;         % Suspension stiffness (N/m)
     % Suspension damping (N.s/m)
kt = 200000;        % Tire stiffness (N/m)
cs= 3500;
a = 1.2;            % CG to front axle (m)
b = 1.6;            % CG to rear axle (m)
track = 0.75;       % Half track width (m)

Ix = 3200;          % Roll inertia (kg.m^2)
Iy = 2500;          % Pitch inertia (kg.m^2)

%% ================= TIME SETTINGS =================
T  = 5;             % Simulation time (s)
fs = 1000;          % Sampling frequency (Hz)
dt = 1/fs;
time = 0:dt:T;

%% ================= VEHICLE SPEED =================
V = 40/3.6;         % Speed (m/s)
wheelbase = a + b;
delay = wheelbase / V;
xs=0.3;
ys=0.0;

%% ================= ROAD INPUT =================
%% ================= ROAD INPUT =================
V = 40/3.6;
wheelbase = a + b;
delay = wheelbase / V;
rng(2);   % Repeatability

% Low-frequency road waviness (critical for comfort)
waviness = 0.01 * sin(2*pi*1.2*time);   % 1.2 Hz undulation

% Medium roughness (ISO-type random road)
rough = 0.006 * randn(size(time));

% Repeated speed bumps (more realistic than single bump)
bump1 = 0.025 * exp(-((time-1.2)/0.12).^2);
bump2 = 0.020 * exp(-((time-2.8)/0.15).^2);
bump3 = 0.018 * exp(-((time-4.0)/0.12).^2);

% Total front road profile
zr_front = waviness + rough + bump1 + bump2 + bump3;

% Rear road (delayed by wheelbase/speed)
zr_rear = interp1(time, zr_front, time - delay, 'linear', 0);

% Simulink input format
road_front.time = time';
road_front.signals.values = zr_front';
road_front.signals.dimensions = 1;

road_rear.time = time';
road_rear.signals.values = zr_rear';
road_rear.signals.dimensions = 1;


%% ================= INITIAL CONDITIONS =================
x0 = zeros(14,1);   % [zb zbd th thd ph phd zu1 zud1 ... zu4 zud4]

%% ================= DONE =================
disp('Initialization complete: Road + vehicle parameters loaded');
%% ================= HUMAN BIODYNAMIC MODEL PARAMETERS =================
% Masses (kg)
m1 = 40;   % Pelvis
m2 = 25;   % Torso
m3 = 6;    % Head

% Spring stiffness (N/m)
k1 = 15000;  % Pelvis to seat
k2 = 12000;  % Torso to pelvis
k3 = 8000;   % Head to torso

% Damping coefficients (N.s/m)
c1 = 500;    % Pelvis
c2 = 350;    % Torso
c3 = 250;    % Head

% Initial conditions (displacement & velocity)
X0 = zeros(6,1); % [x1 dx1 x2 dx2 x3 dx3]

% Sampling time (should match vehicle simulation)
fs = 1000;        % Hz (example)
dt = 1/fs;

% Time vector (example: 5 seconds)
Tseat = 0:dt:5; 

% Seat acceleration (to be provided from vehicle model heave output)
% Example: seat_acc = zeros(size(Tseat));  % Replace with heave block output
% ISO 2631-1 Wk Frequency Weighting (Vertical Axis)
% acc = input acceleration signal (pelvis)
% fs  = sampling frequency
% aw  = weighted acceleration

[bf,af] = butter(4, [0.5 80] / (fs/2), 'bandpass');