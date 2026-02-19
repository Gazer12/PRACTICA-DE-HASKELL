 --Mostrar si el enésimo entero de una lista ingresada es par. 

pepe :: [Integer] -> Integer -> Integer
pepe (x:_) 1 = x
pepe (_:xs) n = pepe xs (n - 1)

par :: Integer -> Bool
par n = n `mod` 2 == 0

main :: IO ()
main = do
    putStrLn "Ingrese la lista de numeros separados por espacios:"
    cadena <- getLine

    putStrLn "Ingrese la posicion del elemento a buscar:"
    numero <- getLine

    let lista = map read (words cadena) :: [Integer]
    let n = read numero :: Integer

    let elemN = pepe lista n
    let esPar = par elemN

    putStrLn ("El numero en la posicion " ++ show n ++ " es " ++ show elemN ++ " y es par = " ++ show esPar)
