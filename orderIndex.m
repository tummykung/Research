function output = orderIndex(eigVal)
    n = length(eigVal);
    output = [];
    current = eigVal(1);
    for i = 2:n
        if (round(current) ~= round(eigVal(i)))
            output = [output i];
            current = eigVal(i);
        end
    end
end