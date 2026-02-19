--Escriba una función prom que retorne el promedio de una secuencia de números  almacenados en una lista. 

suma :: [Float] -> Float
suma [] = 0
suma (x:xs) = x + suma xs

total :: [a] -> Float
total [] = 0
total (_:xs) = 1 + total xs

prom :: [Float] -> Float
prom xs = suma xs / total xs

main :: IO ()
main = do
    putStrLn "Ingrese numeros separados por espacios:"
    linea <- getLine
    let lista = map read (words linea) :: [Float]
    putStrLn ("Ingrese numeros separados por espacios:" ++ show (prom lista))
