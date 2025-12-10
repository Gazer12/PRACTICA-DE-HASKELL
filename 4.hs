--Escribir una función resto que calcule el resto de una división entera utilizando resta unicamente 

fact:: Integer -> Integer
fact 0 = 1 
fact n 
    | n > 0  = n* fact (n-1)
    |otherwise = error " el numero debe ser negativo "

main :: IO()
main = do 
        putStrLn "ingrese numero "
        nStr <- getLine --leo nunmero como string
        let n = read nStr :: Integer --comvieroto a integer 
        let resultado = fact n 
        putStrLn ("El factorial de " ++ show n ++ " es " ++ show resultado)
