data Banda = Banda{nome::String, genero::String, valor::Double}
  deriving(Show)
  
data Status = Ativo | Encerrado | Cancelado
  deriving(Show, Eq)
  
data Evento = Evento{bandas::[Banda], status::Status}
  deriving(Show)
  
valorBanda :: Banda -> Double
valorBanda (Banda _ _ v) = v
  
custoTotalEvento :: Evento -> Double
custoTotalEvento show 
  | status show == Cancelado = 0.0
  | otherwise = sum(map valorBanda (bandas show)) * 1.2
  
bandaAbertura:: Evento -> String
bandaAbertura show =
  case bandas show of
    [] -> "Nao tem nenhuma banda no evento :c"
    (x:_) -> nome x
    
bandaEncerramento show =
  case bandas show of
    [] -> "Nao tem nenhuma banda no evento :c"
    x -> nome (last x)

bandaA = Banda "Limp Bizkit" "Nu Metal" 3000
bandaB = Banda "Black Sabath" "Heavy Metal" 8000
bandaC = Banda "Red Hot Chili Peppers" "Funk Rock" 5000
bandaD = Banda "Billy Idol" "Punk Rock" 6000
bandaE = Banda "Pink Floyd" "Progressive Rock" 7000

evento1 = Evento [bandaA, bandaC] Ativo
evento2 = Evento [bandaB, bandaE, bandaD] Encerrado
evento3 = Evento [bandaA, bandaB, bandaC, bandaD] Cancelado

main = do
  putStrLn "=== Simulação Eventos ==="
  putStrLn "Preço Evento 1:"
  print(custoTotalEvento evento1)
  putStrLn "Preço Evento 2:"
  print(custoTotalEvento evento2)
  putStrLn "Preço Evento 3:"
  print(custoTotalEvento evento3)
  
  putStrLn "\n=== Abertura do Evento 1 ==="
  print(bandaAbertura evento1)
  
  putStrLn "\n=== Encerramento do Evento 2 ==="
  print(bandaAbertura evento2)
  
  
