data Item = Item{nome::String, tipo::String, preco::Double}
  deriving(Show)
  
data Status = Aberto | Entregue | Cancelado
  deriving(Show, Eq)
  
data CompraZelda = CompraZelda{itens::[Item], status::Status}
  deriving(Show)
  
valorItem :: Item -> Double
valorItem (Item _ _ v) = v

valorTotal :: [Item] -> Double
valorTotal listaItem = sum(map valorItem listaItem)
  
calculaDesconto :: CompraZelda -> Double
calculaDesconto compra = valorTotal(itens compra) * 0.9
  
valorFinal :: CompraZelda -> Double
valorFinal compra 
  | status compra == Cancelado = 0.0
  | valorTotal(itens compra) > 200 = calculaDesconto compra
  | otherwise = valorTotal(itens compra)+15
  
-- Catalogo
itemA = Item "Espada" "Equipamento" 45 
itemB = Item "Escudo" "Equipamento" 55 
itemC = Item "Ocarina" "Instrumento" 25 
itemD = Item "Mascara de Majora" "Equipamento" 135

compra1 = CompraZelda [itemA, itemB] Entregue
compra2 = CompraZelda [itemC, itemD] Aberto
compra3 = CompraZelda [itemA, itemB, itemC, itemD] Aberto
compra4 = CompraZelda [itemA, itemB, itemC, itemD] Cancelado

main = do
  putStrLn "=== Simulacao de compras ==="
  putStrLn "Compra 1: (45 + 55 + 15)"
  print(valorFinal compra1)
  putStrLn "Compra 2: (25 + 135 + 15)"
  print(valorFinal compra2)
  putStrLn "Compra 3: ((45 + 55 + 25 + 135)*0.9)"
  print(valorFinal compra3)
  putStrLn "Compra 4: (Cancelado)"
  print(valorFinal compra4)
