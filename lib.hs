factors n = filter (\x -> n `mod` x == 0) (reverse [1..n])
