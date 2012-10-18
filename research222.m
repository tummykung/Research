error = zeros(10000, 1);

for i = 1:10000
   error(i) = research2;
end

hist(error, 100);