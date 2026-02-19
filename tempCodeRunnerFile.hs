mayor :: [Int] -> Int
mayor (x:xs) = foldl max x xs
mayor [] = error "La lista no puede estar vacia"