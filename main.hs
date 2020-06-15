module Main where

insertion :: Int -> [Int] -> [Int]
insertion one [] = [one]
insertion first (second:other) = if first < second
                        then first:second:other
                        else second : insertion first other

insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort [one] = [one]
insertionSort (first:xs) = insertion first (insertionSort xs)

testArray1 = []
testArray2 = [1]
testArray3 = [1, 3, 4, 2, 8, 5, 5, 9, 7, 1]
testArray4 = [1, 3, 4, 4, 2, 8, 5, 9, 7, 3, 5, 3, 7, 9, 2, 6, 7]
testArray5 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]



findTwo :: [Int] -> Int
findTwo [] = -1
findTwo [one] = -1
findTwo [first, second] = if first == second then first else -1
findTwo (first:other) = if first == (head other) then first else findTwo other


main :: IO ()
main = do
    print (insertionSort testArray1)
    print (insertionSort testArray2)
    print (insertionSort testArray3)
    print (insertionSort testArray4)
    print (insertionSort testArray5)

    print (findTwo testArray1)
    print (findTwo testArray2)
    print (findTwo testArray3)
    print (findTwo testArray4)
    print (findTwo testArray5)

