% Define parameters
fuel_tank_weight_initial = 2730.72; % initial weight of fuel tank in grams
plate_diameter = 2.5; % diameter of plate in centimeters
vane_angles = [10, 20, 30, 40, 50, 60, 70, 75, 80, 85]; % angles of vanes in degrees
num_angles = length(vane_angles); % number of vane angles

% Define weight change recordings
weight_changes = [
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

% Initialize results matrix
results = zeros(length(weight_changes), num_angles);

% Loop over weight changes and vane angles
for i =1:length(weight_changes)
    for j=1:num_angles
        
        % Light fire for one plate diameter with current vane angle
        disp(['Lighting fire for vane angle ', num2str(vane_angles(j)), ' degrees and weight change ', num2str(weight_changes(i)), '...']);
        
        % Make observations and record notes
        fuel_tank_weight_final = fuel_tank_weight_initial - weight_changes(i); % Use weight change corresponding to the current angle and diameter
        fuel_consumption = fuel_tank_weight_initial - fuel_tank_weight_final; % Measure fuel tank weight before and after
        
        % Store result in results matrix
        results(i,j) = fuel_consumption;
    end
end

% Transpose results matrix to match dimensions of weight_changes
results = transpose(results);

% Plot results as a heatmap
heatmap(vane_angles, weight_changes(:,1), results);
xlabel('Vane Angle (degrees)');
ylabel('Weight (grams)');
colorbar;
