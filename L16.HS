--VER SI UN NUMERO ES PRIMO 

ver :: Integer -> Integer -> Bool
ver n d
    | d * d > n      = False
    | n `mod` d == 0 = True
    | otherwise      = ver n (d + 1)

pepe :: Integer -> Bool
pepe n
    | n <= 1    = False
    | otherwise = not (ver n 2)

main :: IO ()
main = do
    putStrLn "Ingrese un número:"
    input <- getLine
    let n = read input :: Integer
    if pepe n
        then putStrLn "El número es primo."
        else putStrLn "El número NO es primo."

