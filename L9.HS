--Dada una cadena s / long(s) >= n, implemente una función carn que retorne el n-ésimo carácter de s. 
--EN RESUMEN ME PASE UN NUMERO Y DIGO QUE LETRA ESTA EN ESA POSICION 
 pepe :: [a] -> Integer -> a -- a me deuvelve cualquiero sea el tipo de la letra o numero que este en esa posicion 
 pepe(x:_) 1 = x --cuando mi numero es 1 significa que estoy en la letra por lo tanto tengo que devolver X y como no me interesa lo que hay en xs no lo uso
 pepe (_:xs) n = pepe xs (n-1)


 main :: IO()
 main = do 
    putStrLn "ingrese frase papuuuu"
    frase <- getLine 

    putStrLn "ingrese la numero"
    numero <- getLine 

    let a = read numero :: Integer

    putStrLn("la letra es " ++ show (pepe frase a))
