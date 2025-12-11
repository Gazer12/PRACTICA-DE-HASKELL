--saber los numero primos en un rango ingreado por el usuario 
ver :: Integer -> Integer -> Bool--saco los divisores
ver n d
    | d * d > n      = False
    | n `mod` d == 0 = True
    | otherwise      = ver n (d + 1)

pepe :: Integer -> Bool--me fijo si son primos
pepe n
    | n <= 1    = False
    | otherwise = not (ver n 2)

primosEnRango :: Integer -> Integer -> [Integer] -- uso el rango 
primosEnRango a b = [ x | x <- [a..b], pepe x ]

main :: IO ()
main = do
    putStrLn "Ingrese el primer número del rango:"
    inputA <- getLine
    putStrLn "Ingrese el segundo número del rango:"
    inputB <- getLine

    let a = read inputA :: Integer
    let b = read inputB :: Integer

    let listaPrimos = primosEnRango a b

    putStrLn "Los números primos en ese rango son:"
    print listaPrimos
