--Usando un plegador apropiado, definir una función que determine si existe al menos un número negativo en una lista dada.

pepe :: [Int] -> Bool
pepe xs = 
    foldr (\x c -> x < 0 || c) False xs

--True || loQueSea = True 
main::IO()
main=do 
    putStrLn"ingrese nuemro"
    a <-getLine 

    let x = map read (words a) :: [Int]
    putStrLn("resultado " ++ show (pepe x))

