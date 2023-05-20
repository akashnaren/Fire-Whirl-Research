%% Initialize
va = [10 20 30 40 50 60 70 75 80 85];
d1 = [0.79 0.76 1.25 0.61 0.85 0.61 2.3 0.13 0.74 1.16];
d2 = [1.33 1.03 1.26 0.87 0.99 1.97 2.53 4.52 0.83 1.68];
d3 = [1.49 3.96 1.54 1.8 1.88 1.61 1.64 1.44 2.17 2.43];
d4 = [0.1 1.74 1.78 1.7 1.51 1.45 1.54 1.8 1.06 4.26];
d5 = [5.26 3.43 2.18 3.81 4.57 1.06 0.44 2.01 3.32 1.05];
d6 = [17.86 25.69 4.15 3.19 1.58 4.66 5.84 5.53 3.29 9.97];
d7 = [0.99 0.63 1.17 4.96 6.48 5.3 5.2 4.75 15.44 6.84];
d8 = [6.28 3.67 3.1 6.96 4.68 4.24 4.23 5.21 5.2 6.81];
n1 = d1./180;
n2 = d2./180;
n3 = d3./180
n4 = d4./180
n5 = d5./180
n6 = d6./180
n7 = d7./180
n8 = d8./180
%% Line of Best Fit
f1 = fit(va',d1','poly3');
f2 = fit(va',d2','poly3');
f3 = fit(va',d3','poly3');
f4 = fit(va',d4','poly3');
f5 = fit(va',d5','poly3');
f6 = fit(va',d6','poly3');
f7 = fit(va',d7','poly3');
f8 = fit(va',d8','poly3');
%% Plotting
figure(1)
plot(va,d1)
text(va(2),d1(2),'bruh')
hold on
plot(va,d2)
plot(va,d3)
plot(va,d4)
plot(va,d5)
plot(va,d6)
plot(va,d7)
plot(va,d8)
hold off
%% Plotting (per second)
figure(1)
plot(va,n1)
%text(va(2),n1(2),'bruh')
hold on
plot(va,n2)
plot(va,n3)
%plot(va,n4)
%plot(va,n5)
%plot(va,n6)
%plot(va,n7)
%plot(va,n8)
hold off
%% Plotting Fit
figure(1)
plot(va,f1(va))
hold on
%plot(va,f2(va)) %1
%plot(va,f3(va)) %1.25
%plot(va,f4(va)) %1.5 (similar to 1.25 for some reason)
%plot(va,f5(va)) %1.75
%plot(va,f6(va)) %2
%plot(va,f7(va)) %2.5
%plot(va,f8(va)) %3
hold off

