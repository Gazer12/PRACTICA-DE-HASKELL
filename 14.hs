-- Definir recursivamente una función que devuelva la cantidad de ‘a’ en una cadena usando guardas.
pepe :: String -> Integer 

pepe [] = 0
pepe (x:xs) 
    | x == 'a' = 1 + pepe xs 
    | otherwise = pepe xs


main :: IO()
main = do 
    putStrLn "ingrese frase "
    frase <- getLine 

    putStrLn("la cantidad de letras A es " ++ show (pepe frase))