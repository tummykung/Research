function x = highestFreqIndex(v, basis, zeroThresh)

[~,coeff] = decompose(v, basis);

for i = 1:length(basis)
   
    if ( abs(coeff(i)) > zeroThresh )
        x = length(basis) - i + 1;
        break;
    end
    
end

end