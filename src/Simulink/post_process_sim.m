
mask=ones(1,20)
m_ave=conv (out.sync, mask, 'valid')
om(abs(m_ave)>5)= 5
%med= medfilt1 (out.sync,70)
plot (out.sync,'Color',[0.07 0.62 1], 'linewidth', 0.69)
hold on
plot (m_ave,'Color',[0.5 0.73 0.79],'linewidth', 1)
hold on
plot(om, 'Color',[0.99 0.02 0.02],'linewidth', 1.2)
hold on 
plot(out.m, 'k', 'linewidth', 1)
xlabel('Time (t)'); ylabel('Voltage (V)');
set (gcf, 'color', 'w')
% plot(med)
