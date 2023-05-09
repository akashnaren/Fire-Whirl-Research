% Define parameters
fuel_tank_weight_initial = 100; % initial weight of fuel tank in grams
fuel_tank_weight_final = 75; % final weight of fuel tank in grams
plate_diameter = 10; % diameter of plate in centimeters
vane_angles = [10, 20, 30, 40, 50, 60, 70, 80, 90]; % angles of vanes in degrees
num_angles = length(vane_angles); % number of vane angles
hole_diameters = [1, 2, 3, 4, 5]; % diameters of holes in plate in millimeters
num_holes = length(hole_diameters); % number of hole diameters

% Initialize results matrix
results = zeros(num_angles, num_holes);

% Loop over vane angles and hole diameters
for i = 1:num_angles
    for j = 1:num_holes
        % Light fire for one plate diameter with current vane angle and hole diameter
        disp(['Lighting fire for vane angle ', num2str(vane_angles(i)), ' and hole diameter ', num2str(hole_diameters(j)), ' mm...']);
        % Make observations and record notes
        % Measure fuel tank weight before and after
        fuel_consumption = fuel_tank_weight_initial - fuel_tank_weight_final;
        % Store result in results matrix
        results(i,j) = fuel_consumption;
    end
end

% Plot results as a heatmap
heatmap(hole_diameters, vane_angles, results);
xlabel('Hole Diameter (mm)');
ylabel('Vane Angle (degrees)');
colorbar;

%%Regular Plot
% Define parameters
fuel_tank_weight_initial = 100; % initial weight of fuel tank in grams
fuel_tank_weight_final = 75; % final weight of fuel tank in grams
plate_diameter = 10; % diameter of plate in centimeters
vane_angles = [10, 20, 30, 40, 50, 60, 70, 80, 90]; % angles of vanes in degrees
num_angles = length(vane_angles); % number of vane angles
hole_diameters = [1, 2, 3, 4, 5]; % diameters of holes in plate in millimeters
num_holes = length(hole_diameters); % number of hole diameters

% Initialize results matrix
results = zeros(num_angles, num_holes);

% Loop over vane angles and hole diameters
for i = 1:num_angles
    for j = 1:num_holes
        % Light fire for one plate diameter with current vane angle and hole diameter
        disp(['Lighting fire for vane angle ', num2str(vane_angles(i)), ' and hole diameter ', num2str(hole_diameters(j)), ' mm...']);
        % Make observations and record notes
        % Measure fuel tank weight before and after
        fuel_consumption = fuel_tank_weight_initial - fuel_tank_weight_final;
        % Store result in results matrix
        results(i,j) = fuel_consumption;
    end
end

% Plot results as a regular plot
figure;
hold on;
for i = 1:num_angles
    plot(hole_diameters, results(i,:), '-o', 'DisplayName', ['Vane Angle ', num2str(vane_angles(i)), ' Degrees']);
end
hold off;
xlabel('Hole Diameter (mm)');
ylabel('Fuel Consumption (grams)');
title('Fuel Consumption vs. Hole Diameter for Different Vane Angles');
legend('Location', 'Northwest');
