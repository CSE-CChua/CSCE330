-- [y | x <- [1..10],
--     let y = x * x,
--     y < 50]

 (filter (\y -> y < 50) (map (\x -> x * x) [1..10]))