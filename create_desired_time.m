
signal = zeros(size(t));
t_des = time.signals.values;

% Create pulses at desired times
for i = 1:length(t_des)
    [~, idx] = min(abs(t - t_des(i)));  % Find closest time index
    signal(idx) = 1;
end
time_des = timeseries(signal,t);