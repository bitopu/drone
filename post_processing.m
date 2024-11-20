idx = test.signals.values(:)'>2e-3;
correct_idx = [];
for i = 1:numel(idx)
    if idx(i)>0
        correct_idx=[correct_idx,i];
    end
end
vout_left_copy = vout_left;
vout_left = vout_left(:,:,:,correct_idx);
pos.signals.values = pos.signals.values(correct_idx,:);
psi.signals.values = psi.signals.values(:,:,correct_idx);
phi.signals.values = phi.signals.values(correct_idx,:);