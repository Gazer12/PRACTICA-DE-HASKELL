--Usando un plegador apropiado, definir una función que calcule la cantidad de elementos negativos en una lista dada.

pepe :: [Int] -> Int 
pepe xs = 
    foldr (\x c -> if x < 0 then c + 1 else c) 0 xs 

main::IO()
main=do 
    putStrLn"ingrese un numerito"
    b <- getLine 

    let a = map read (words b) :: [Int]
    putStrLn ("resultado "++ show (pepe a))