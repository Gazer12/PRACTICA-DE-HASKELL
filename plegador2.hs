--contar los elementos pares de una lista 

pepe :: [Int] -> Int
pepe xs = foldr ver 0 xs

ver :: Int -> Int -> Int
ver x c =
    if x `mod` 2 == 0 then 
        c + 1
    else 
        c


main :: IO()
main = do 
    putStrLn "ingrese un numero"
    a <- getLine
    let n = read a :: Int 
    let b = [1..n]

    putStrLn ("resultado es " ++ show (pepe b))


