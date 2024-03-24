main :: IO ()
main = putStrLn "Hello, Haskell!"

double :: Num a => a -> a
double x = x + x

sumDouble :: Num a => a -> a -> a
sumDouble x y = double x + double y

nums :: [Integer]
nums = [1,2,3]
moreNums :: [Integer]
moreNums = 0:nums -- NOTE: adding to the start of the list is instantaneous
evenMore :: [Integer]
evenMore = moreNums ++ [4] -- NOTE: adding to the end of the list is costly
positionThree :: Integer
positionThree = evenMore !! 2

-- NOTE: there is also last, tail and init, lenght and null, reverse, `take n` and `drop n`
-- there is also minimum and maximum, sum and product, elem (similar to `in` in python)
headPosition :: Integer
headPosition = head evenMore

crazyAmount :: [Integer]
crazyAmount = [1..20] -- NOTE: works for char too ['a'..'z']
stepAmount :: [Integer]
stepAmount = [1,3..20] -- NOTE: a reverse range would be [20,19..1], [20..1] wont work

infinityAmount :: [Integer]
infinityAmount = [1..] -- NOTE: works like a generator/iterator in python, there is also cycle and repeat
finiteAmount :: [Integer]
finiteAmount = take 5 infinityAmount

listComprehension :: [Integer]
listComprehension = [double x | x <- take 10 [1..], double x >= 10]  -- definition
boomBangs :: [Integer] -> [String]
boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]  -- function
multiplingLists :: [Integer]
multiplingLists = [x * y | x <- [1, 2, 3], y <- [8, 10, 11]]

-- Exercise: write a function that calculates the length of the list
myLength :: Num a => [a] -> a
myLength xs = sum [1 | _ <- xs]
removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, elem c ['A'..'Z']] 

doubleSmall :: (Ord a, Num a) => a -> a
doubleSmall x = if x > 100
     then x
     else double x

-- only work on pairs, does not work on triples, 4-tuples, etc
firstOne = fst (1, 2)
secondOne = snd (1, 2)
zipLists = zip [1,2,3] [4,5,6]

triangles = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], (a^2) + (b^2) == (c^2) ]
trianglesPerimeter = [ a+b+c | (a,b,c) <- triangles ]
trianglesHypothenuse = [ c | (a,b,c) <- triangles ]

