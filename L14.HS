---scribir funciones que permitan duplicar los elementos de una lista y otra que permitan replicar los elementos de una lista dependiendo del número n que se pase como parámetro. 
pepe :: [a] -> [a]
pepe [] = []
pepe (x:xs) = x : x : pepe xs 


replicarElemento :: Integer -> a -> [a]
replicarElemento 0 _ = []
replicarElemento n x = x : replicarElemento (n-1) x


juan :: Integer -> [a] -> [a]
juan _ [] = []
juan n (x:xs) = replicarElemento n x ++ juan n xs


main :: IO()
main = do 
    putStrLn "ingrese la frase o algo"
    frase <- getLine 

    putStrLn "INGRESE EL NUMERO QUE SE VA A REPETIR" 
    numero <- getLine 

    let n = read numero :: Integer 

    putStrLn ("la frase duplicada es: " ++ pepe frase)
    putStrLn ("la frase se replica " ++ show n ++ " veces cada elemento: " ++ juan n frase)

