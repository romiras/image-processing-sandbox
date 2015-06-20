%% Plot Hue-Saturation distribution diagram

[r, t] = huedist(Hue);
figure, polar(t * pi * 2, r, '--')