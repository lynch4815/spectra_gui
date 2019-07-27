function radiance = blackbody(temp,lambda)
    
    % COmpute blackbody Spectra assum temp=kelvin and lambda = nm
    % output is in uW/cm^2/sr/nm
    
    % Constants
    c1=1.191042952624574e22; % 2*h*c^2*1e45(nm^5)*1e-10(convert_from_SI_to_W/cm^2/sr/um)/1000(convert um to nm)
    c2=1.438786232596302e7;  % In [hc/k (in SI) * 1e9] (to accomodate nm input)
    
    % Compute Radiance (in units uW/cm^2/sr/nm), assuming lambda is in nm,
    % temp in Kelvin, spectra to compare is also in uW/cm^2/sr/nm
    radiance = (c1./(lambda.^5))./( exp(c2./(lambda.*temp)) -1.0 );
    
end