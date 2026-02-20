--Usando un plegador apropiado, definir una función que calcule la cantidad de números pares en una lista dada.
pepe :: [Int]-> Int 
pepe xs = 
    foldr (\x c -> if x `mod` 2 == 0 then c + 1 else c) 0 xs 


main ::IO()
main=do
    putStrLn " ingrese numero"
    n <- getLine 

    let a = map read (words n) :: [Int]
    putStrLn("resultado " ++ show (pepe a))
