-- [y | x <- [1..10],
--     let y = x * x,
--     y < 50]

main :: IO ()
main = print (filter (< 50) (map (\x -> x * x) [1..10]))