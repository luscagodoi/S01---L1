data Bebida = Bebida{nome::String, tipo::String, preco::Double}
  deriving(Show)
  
data Status = Aberto | Entregue | Cancelado
  deriving(Show, Eq)
  
data Pedido = Pedido{bebidas::[Bebida], status::Status}
  deriving(Show)
  
valorBebida :: Bebida -> Double
valorBebida (Bebida _ _ v) = v

valorTotal :: [Bebida] -> Double
valorTotal listaBebida = sum(map valorBebida listaBebida)
  
somaValorPedido :: Pedido -> Double
somaValorPedido compra
  | status compra == Cancelado = 0.0
  | otherwise = valorTotal (bebidas compra) + 5
  
primeiroPedido :: Pedido -> String
primeiroPedido primeiro =
  case bebidas primeiro of
    [] -> "Nao foi feito nenhum pedido"
    (x:_) -> nome x

-- Cardapio
bebidaA = Bebida "Acordadao" "Cafe" 35
bebidaB = Bebida "Dormidao" "Chazinho" 25
bebidaC = Bebida "Laranjinha" "Suco" 30

compra1 = Pedido [bebidaC, bebidaB, bebidaA] Aberto
compra2 = Pedido [bebidaA, bebidaA, bebidaA] Entregue
compra3 = Pedido [bebidaB, bebidaC, bebidaC] Cancelado

main = do
  putStrLn "=== Simulacao de pedido ==="
  putStrLn "Compra 1:"
  print(somaValorPedido compra1)
  putStrLn "Compra 2:"
  print(somaValorPedido compra2)
  putStrLn "Compra 3:"
  print(somaValorPedido compra3)
  
  putStrLn "\nPrimeira bebida da compra 1:"
  print(primeiroPedido compra1)