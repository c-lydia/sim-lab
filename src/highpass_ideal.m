% --- Ideal Highpass Filter Impulse Response (Octave) ---

fc = 1000;                   % cutoff frequency in Hz
wc = 2 * pi * fc;
t = linspace(-0.01, 0.01, 2000);

% Ideal highpass impulse response
h_hp = -sinc(wc * t / pi);   % Octave's sinc = sin(pi*x)/(pi*x)
h_hp(t==0) = h_hp(t==0) + 1; % add delta approximation

% Plot
figure;
plot(t, h_hp);
title('Impulse Response of Ideal Highpass Filter');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Save figure
if ~exist('../plots', 'dir')
    mkdir('../plots');
end

print('../plots/highpass_response_octave.png', '-dpng');