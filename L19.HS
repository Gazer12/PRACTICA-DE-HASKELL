--Dada una lista contar la cantidad de posiciones pares

par :: [a] -> Integer -> Integer
par [] _= 0
par (x:xs) i 
    |i `mod` 2 == 0 = 1 + par xs (i + 1)
    |otherwise = par xs (i + 1)


main :: IO()
main = do
    putStrLn "ingrese la cadena de nunmero separado por espacios "
    cadena <- getLine 

    let a = map read (words cadena ) :: [Integer]

    putStrLn("el resultado es " ++ show (par a 0))
