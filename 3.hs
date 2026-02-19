--escribir una funcion que calcule el resto de una division entera utilizando unicament resta 
-- Función resto usando restas sucesivas 
resto :: Int -> Int -> Int
resto a b
    | b <= 0    = error "No se puede dividir por cero o negativo"
    | a < b     = a
    | otherwise = resto (a - b) b


main :: IO ()
main = do
    putStrLn "Ingrese el número a:"
    aStr <- getLine

    putStrLn "Ingrese el número b:"
    bStr <- getLine

    let a = read aStr :: Int
    let b = read bStr :: Int

    putStrLn ("El resto es: " ++ show (resto a b))


