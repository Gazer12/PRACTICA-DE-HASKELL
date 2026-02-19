--foldr funcion valorInicial lista "estructura del plegador"
--foldr (+) 0 [1,2,3]
--1 + (2 + (3 + 0))

mayor :: [Int] -> Int
mayor (x:xs) = foldl max x xs
mayor [] = error "La lista no puede estar vacia"

main :: IO ()
main = do
    putStrLn "Ingrese numeros separados por espacios:"
    linea <- getLine
    
    -- Convertimos la linea en lista de Int
    let lista = map read (words linea) :: [Int]
    
    putStrLn ("El mayor es: " ++ show (mayor lista))

