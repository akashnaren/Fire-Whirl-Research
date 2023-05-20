%This code plots line, works only with one
% Define parameters
fuel_tank_weight_initial = 2730.72; % initial weight of fuel tank in grams
plate_diameter0 = 2.5; % diameter of plate in inches
plate_diameter1 = 0.75; % diameter of plate in inches
plate_diameter2 = 1; % diameter of plate in inches
vane_angles = [10, 20, 30, 40, 50, 60, 70, 75, 80, 85]; % angles of vanes in degrees
num_angles = length(vane_angles); % number of vane angles

% Define weight change recordings
% Plate Diameter 2.5 (in)
weight_changes0 = [
    2730.72, 2729.73; % Recording 1
    2722.31, 2721.68; % Recording 2
    2719.89, 2718.72; % Recording 3
    2665.56, 2660.60; % Recording 4
    2629.88, 2623.40; % Recording 5
    2577.6 , 2572.3 ; % Recording 6
    2561.23, 2556.03; % Recording 7
    2442.17, 2437.42; % Recording 8
    2404.31, 2388.87; % Recording 9
    2350.83,2343.99 ; % Recording10
];
% weight_changes1 = [ % Plate Diameter 0.75 (in)
%     2370.94, 2370.15;
%     2366.81, 2366.05;
%     2365.35, 2364.1;
%     2362.25, 2361.64;
%     2359.71, 2358.86;
%     2351.05, 2350.44;
%     2351.52, 2349.22;
%     2342.76, 2342.63;
%     2339.21, 2338.47;
%     2337.84, 2336.68;
% ];


% Initialize results matrix
results = zeros(length(weight_changes0), num_angles);


% Loop over weight changes and vane angles
for i =1:length(weight_changes0)
    for j=1:num_angles
        
        % Light fire for one plate diameter with current vane angle
        disp(['Lighting fire for vane angle ', num2str(vane_angles(j)), ' degrees and weight change ', num2str(weight_changes(i)), '...']);
        
        % Make observations and record notes
        fuel_tank_weight_final = fuel_tank_weight_initial - weight_changes(i);
        fuel_consumption = fuel_tank_weight_initial - fuel_tank_weight_final; % Measure fuel tank weight before and after
        
        % Store result in results matrix
        results(i,j) = fuel_consumption;
    end
end


% Transpose results matrix to match dimensions of weight_changes
results = transpose(results);

% Create line plot using the same axis
figure; hold on;
plot(vane_angles, results(1,:), '-o', 'DisplayName', 'Plate Diameter ' + string(plate_diameter0) + ' (in)', 'Color', 'b');
xlabel('Vane Angle (degrees)');
ylabel('Fuel Consumption (grams)');
legend('show');
