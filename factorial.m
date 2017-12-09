function [ fact ] = factorial(n)
%Returns n factorial, where n is an integer.
if n == 1
    fact = 1;
else
    fact = galton(n)*factorial(n-1);
end
fact = round(fact,0);
end

function [ g ] = galton(n)
%Creates a decent estimation of n choose 1
total = 0;
%If one row of binomial sums to 2^n, we have it 16 times
for i = 1:2^(n+12)
    sum = 0;
    for k = 1:n
        sum = sum + randi([0,1],1);
    end
    if sum == 1
        total = total + 1;
    end
end
g = total/(2^12);
end

