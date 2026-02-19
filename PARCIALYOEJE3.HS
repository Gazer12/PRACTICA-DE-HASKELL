--Definir una función Haskell que, usando listas por comprensión, determine los primeros “n” números perfectos.
--(Un número perfecto es igual a la suma de sus divisores propios. Ej: 6 → 1+2+3 = 6)
lol :: Int -> Bool
lol n =
    let suma = sum [x | x <- [1..n-1], n `mod` x == 0]
    in suma == n

main :: IO ()
main = do
    putStrLn "Ingrese un numero:"
    num <- getLine
    let a = read num :: Int
    putStrLn ("El numero " ++ show a ++ " es perfecto: " ++ show (lol a))
