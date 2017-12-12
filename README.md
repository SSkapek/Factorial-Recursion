# Factorial-Recursion
A recursive method for generating the factorial of an integer

This is based off the idea that a common test is to see if one can program this function
f(1) = 1
f(n) = n * f(n-1)

So I know that a normal Galton board take on a binomial distribution, so on an N level board, you have slots from 0 to N, and the distribution into slot k is (N choose k)(1/2^N). As such, after running this 2^N times I get (N choose k), or for the slot k=1 you should expect to have N!/(1!)(N-1)!.

This is equivalent to the number of binary strings of length N with exactly one 1 in the string. I generate 2^(N+8) strings, which if all should goes well should be approximately 256*(N!/(N-1)!) = X. Divide X by 256 to get g(N) = Y.

Note then N! = g(N) * (N-1)!. Thus, we say f(N) = N! = g(N) * g(N-1) * (N-1)! = g(N) * g(N-1) * g(N-2) * ... g(N-a+1) * (N-a)!.
We define g(0) = g(1) = 1, and voila, we have a series of recursively defined probabilistic functions that approximate N!. Obviously, we have to round our value of f(N) to the nearest integer, but who cares really?

In any case, if you want a recursive function that sometimes calculates N! in approximately O(2^(N+9)) time, this is your guy.

Note that in five runs of f(6), I got 714, 719, 720, 720, and 722. Hey, that's within experimental error if you majored in any subject that ends with "Studies".

Have fun!

