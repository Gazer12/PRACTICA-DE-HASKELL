--defina una funcion que usando una lista por compresion determine lo9s primero N numero divisibles (son los enteros que son divisible por la cantidad de sus divisores) eje 12 es divisible por sus divisores son 6 (1,2,3,4,6,12) que divide a 12
--[ expresion | variable <- lista, condicion ] asi se definen las listas por compresion 
num :: Int -> Bool
num n =
    let divs = [x | x <- [1..n], n `mod` x == 0]
        cant = length divs
    in n `mod` cant == 0

main :: IO ()
main = do
    putStrLn "Ingrese numero:"
    pepe <- getLine
    let a = read pepe :: Int
    putStrLn ("El resultado de " ++ pepe ++ " es " ++ show (num a))
