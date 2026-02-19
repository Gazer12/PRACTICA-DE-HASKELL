--Definir una función en Haskell que, usando listas por comprensión, determine los primeros n números abundantes.
--(Un número es abundante si la suma de sus divisores propios es mayor que el número.
--Ej: 12 es abundante porque 1+2+3+4+6 = 16 > 12)

pepe :: Int -> Bool
pepe n = 
    let num = [x | x<-[1..n], n `mod` x == 0 ] 
        cant = sum num 
    in cant > n 


main :: IO()
main =do 
    putStrLn "ingrese numero"
    m <- getLine 

    let a = read m ::Int 

    putStrLn ("resultado " ++ show (pepe a))