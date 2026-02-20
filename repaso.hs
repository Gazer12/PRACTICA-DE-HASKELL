--Usando listas por comprensión, definir una función que obtenga todos los números que tengan exactamente 4 divisores entre dos valores dados

pepe :: Int -> Int -> [Int]
pepe a b =
  [ x | x <- [a..b], length [s | s <- [1..x], x `mod` s == 0] == 4]

main::IO()
main=do
    putStrLn"ingrese un numnero"
    x <- getLine 
    putStrLn"ingrese un numnero"
    y <- getLine 

    let g = read x ::Int 
    let h =read y ::Int 
    putStrLn("resultado " ++ show (pepe g h))

