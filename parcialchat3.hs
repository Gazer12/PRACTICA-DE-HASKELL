--Definir una función en Haskell que, usando listas por comprensión, determine los primeros n números que tienen exactamente 4 divisores.
--Ej: 6 tiene 4 divisores (1,2,3,6).
--es decir ingresa un unmero y pongo en una lista solo los que la cantida de divisores sean 4 si tiene 5 divisores ya no

pepe :: Int -> [Int]
pepe n =
    take n [x | x <- [1..],length [a | a <- [1..x], x `mod` a == 0] == 4] 
--el take me da los piemro n elemento de una lista 
--ejemplo take 3 [1 2 3 4 5] devuelve  [1 2 3] es decir los primero 3 elementos

main::IO()
main =do 
    putStrLn"ingrese un numero mi rei"
    b <- getLine 

    let a = read b :: Int 

    putStrLn ("resultado" ++ show (pepe a))


