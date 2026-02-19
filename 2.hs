-- una función cociente que calcule el cociente de una división entera utilizando sumas y restas. 
--para este chiche la onda es a/b para sacar el resto es la cantidad de veces que puedo restar "b" a "a" sin  que sea 0 asi lo saco el resto


-- cociente.hs
-- División entera usando restas sucesivas + valores ingresados por teclado

-- Función cociente: devuelve el cociente de a / b usando solo restas
cociente :: Int -> Int -> Int
cociente a b
    | b <= 0     = error "El divisor debe ser mayor que 0"
    | a < b      = 0
    | otherwise  = 1 + cociente (a - b) b

-- Programa principal
main :: IO ()
main = do
    putStrLn "Ingrese el dividendo (a):"
    aStr <- getLine          -- Leo como String
    putStrLn "Ingrese el divisor (b):"
    bStr <- getLine

    let a = read aStr :: Int -- Convierto a número
    let b = read bStr :: Int

    putStrLn ("El cociente es: " ++ show (cociente a b))





