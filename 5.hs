--aca tengo que sumar los numero poseterio es decir 5 -> 5 + 4 -> 4+3 ...

suma :: Integer -> Integer 
suma 0 = 0 
suma n 
    | n > 0  = n + suma (n-1)
    | otherwise = error"no se que poner pero esta mal"


main :: IO()
main = do 
        putStrLn "ingrese un numero pa realizar la suma pe"
        nStr <- getLine
        let n = read nStr :: Integer 
        let resultado = suma n 

        putStrLn ("el resultado de la suma es = " ++ show resultado)
        

