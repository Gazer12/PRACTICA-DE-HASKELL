-- Escribir un programa funcional que determine la longitud de una lista cualquiera.

pepe :: [a] -> Integer --el [a] significq ue no me importa el tipo de dato sea char, integer etc 
pepe [] = 0
pepe (_:xs) = 1 + pepe xs -- pongo el "_" en vez de la "x" porque no me importa saber el primer carcater


main :: IO()
main = do 
    putStrLn "ingrese la frase papa" 
    frase <- getLine --getline me tranforma sea lo que sea a caracter

    putStrLn ("la longuitud de la frase es " ++ show (pepe frase))


