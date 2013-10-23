
-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2
-- For example, 32 + 42 = 9 + 16 = 25 = 52.
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.
-- a < b < c, a+b+c = 1000, a^2 + b^2 = c^2 - last condition is not explicity defined but is implicit in a+b+sqrt(x) == 1000

main = print $ floor $ head [ a * b * c | a <- [1 .. 333], b <- [(a+1) .. (999-a)], let c = sqrt $ (a^2) + (b^2), (a+b+c) == 1000 ]
