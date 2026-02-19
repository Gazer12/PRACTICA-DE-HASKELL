--sumar todo los elementos de una lista 

pepe :: [Int] ->Int 
pepe xs = foldr (+) 0 xs --la funcion es el (+) 0 es el valor inicial y xs la cola de la lista jajaj


main :: IO()
main = do 
    putStrLn "ingrese un numero"
    num <- getLine 

    let n = read num :: Int
    let a = [1..n]

    putStrLn ("resultado " ++ show (pepe a))

