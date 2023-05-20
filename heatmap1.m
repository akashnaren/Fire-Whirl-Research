

%line plot

% Define parameters
fuel_tank_weight_initial = 2730.72; % initial weight of fuel tank in grams
plate_diameter = 2.5; % diameter of plate in centimeters
vane_angles = [10, 20, 30, 40, 50, 60, 70, 80, 90]; % angles of vanes in degrees
num_angles = length(vane_angles); % number of vane angles
hole_diameters = [1, 2, 3, 4, 5]; % diameters of holes in plate in millimeters
num_holes = length(hole_diameters); % number of hole diameters

% Define weight change recordings
weight_changes = [
    % Plate Diameter 2.5 (in)
    2730.72, 2729.73; 
    2722.31, 2721.68; 
    2719.89, 2718.72;
    2665.56, 2660.60; 
    2629.88, 2623.40; 
    2577.6, 2572.3;   
    2561.23, 2556.03; 
    2442.17, 2437.42; 
    2404.31, 2388.87; 
    2350.83, 2343.99  
    
    % Plate Diameter 0.75 (in)
    2370.94, 2370.15;
    2366.81, 2366.05;
    2365.35, 2364.1;
    2362.25, 2361.64;
    2359.71, 2358.86;
    2351.05, 2350.44;
    2351.52, 2349.22;
    2342.76, 2342.63;
    2339.21, 2338.47;
    2337.84, 2336.68;
    
    % Plate Diameter 1 (in)
    2353.19, 2351.86;
    2351.64, 2350.61;
    2350.28, 2349.02;
    2346.29, 2345.42;
    2344.74, 2343.75;
    2342.8, 2340.83;
    2340.15, 2337.62;
    2336.79, 2332.27;
    2332.76, 2331.93;
    2328.34, 2326.66;
        
    % Plate Diameter 1.25 (in)
    2327.78, 2326.29;
    2324.08, 2320.12;
    2322.25, 2320.71;
    2320.65, 2318.85;
    2313.52, 2311.64;
    2311.56, 2309.95;
    2307.06, 2305.42;
    2303.63, 2302.19;
    2298.57, 2296.4;
    2289.93, 2287.5;
    
    % Plate Diameter 1.5 (in)
    2344.21, 2344.11;
    2342.28, 2340.54;
    2339.33, 2337.55;
    2335.8, 2334.1;
    2331.68, 2330.17;
    2327.37, 2325.92;
    2325.43, 2323.89;
    2319.16, 2317.36;
    2313.86, 2312.8;
    2322.87, 2318.61;
    
    % Plate Diameter 1.75 (in)
    2241.97, 2236.71;
    2226.77, 2223.34;
    2214.09, 2211.91;
    2210.49, 2206.68;
    2196.22, 2191.65;
    2166.4, 2165.34;
    2164.3, 2163.86;
    2168.39, 2166.38;
    2174.55, 2171.23;
    2134.45, 2133.4;
    
    % Plate Diameter 2 (in)
    2466.58, 2448.72;
    2468.4, 2442.71;
    2447.58, 2443.43;
    2543.23, 2540.04;
    2536.6, 2535.02;
    2547.8, 2543.14;
    2546.38, 2540.54;
    2543.08, 2537.55;
    2512.31, 2509.02;
    2444.69, 2434.72;
     
    % Plate Diameter 3 (in)
    2580.49, 2574.21;
    2575.04, 2571.37;
    2566.12, 2563.02;
    2560.62, 2553.66;
    2541.6, 2536.92;
    2532.49, 2528.25;
    2504.22, 2499.99;
    2492.77, 2487.56;
    2479.8, 2474.6;
    2465.95, 2459.14
    ];
% Initialize results matrix
results = zeros(num_angles, num_holes);

% Loop over vane angles and hole diameters
for i = 1:num_angles
    for j = 1:num_holes
        % Light fire for one plate diameter with current vane angle and hole diameter
        disp(['Lighting fire for vane angle ', num2str(vane_angles(i)), ' and hole diameter ', num2str(hole_diameters(j)), ' mm...']);
        
        % Make observations and record notes
        fuel_tank_weight_final = fuel_tank_weight_initial - weight_changes(i, j); % Use weight change corresponding to the current angle and hole
        
        % Measure fuel tank weight before and after
        fuel_consumption = fuel_tank_weight_initial - fuel_tank_weight_final;
        
        % Store result in results matrix
        results(i, j) = fuel_consumption;
    end
end

% Plot results as a heatmap
heatmap(hole_diameters, vane_angles, results);
xlabel('Vein Angle');
ylabel('Weight');
colorbar;
