--Usando un plegador apropiado, definir una función que determine si todos los elementos de una lista son pares.
pepe :: [Int] -> Bool
pepe xs = 
     foldr (\x a -> (x `mod` 2 == 0) && a) True xs --ojo aca el a guada los valores de verdad  ejemplo [2 4 6] deuvelve true true ture =true
    --a toma el valor que lo defino en este caso "TRUE" 

main :: IO()
main = do 
    putStrLn "ingrese numero separado por espcio"
    b <- getLine 
    let a =map read ( words b) :: [Int]
    putStrLn ("reultado " ++ show (pepe a))