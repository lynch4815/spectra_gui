function error = fitblackbody(y,lambda,spectra_known)        % Inputs:    % y(1,1) = Guessed Temp in Kelvin    % y(2,1) = Guessed Emissivity     % Lambda = Wavelength Array in nm!!!    % Spectra_known = Radiance also in uW/cm^2/sr/nm        % Extract Estimated Solutions    temp = y(1,1);    eps  = y(2,1);        % Get Spectral Radiance Model from Temp and Wavelength array    radiance=blackbody(temp,lambda);       % Adjust to account for emissivity    radiance = radiance.*eps;        % Get Error Norm of Computed (from Given Temperature) vs Known (Measured)    error = norm(radiance-spectra_known);    end