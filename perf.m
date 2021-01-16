snr_vector = [50 40 30 24 21 18 15 12];
n_vector = [32 64 128 256];
taux_pilote_vector = [0.25 0.125];

 result = zeros(4,8,3);

% N=64;
Ts=3.2e-6;
% taux_pilote=0.25;
% pilote=N*taux_pilote;
prefix=3;

for taux=1:length(taux_pilote_vector)
    taux_pilote = taux_pilote_vector(taux);
    for n=1:length(n_vector)
        N = n_vector(n);
        pilote = N*taux_pilote;
        for j=1:length(snr_vector)
            SNR = snr_vector(j);
            sim("main");
%             error_rate(j) = BEURRE(1);
            result(n,j, taux) = mean(BEURRE(1).Data(:,1));
            disp(result);
        end
    end
end


% error_rate.Data