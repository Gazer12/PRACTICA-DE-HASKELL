--Escribir una función recursiva que sume todos los números menores de 3 que  aparezcan en una lista de enteros usando guardas
pepe :: [Integer] -> Integer --cpmo se usa una lista tenemos que suar el [tipo del dato]
pepe [] = 0 
pepe (x:xs) 
    |x < 3 = x + pepe xs 
    | otherwise = pepe xs 

main :: IO()
main = do 
    putStrLn "ingrese numeros separado por espacios "
    numero <- getLine 

    let lista = map read (words numero) :: [Integer]
    putStrLn ("La suma de los menores a 3 es: " ++ show (pepe lista))

-- si mete todos los numero segudo no anda 