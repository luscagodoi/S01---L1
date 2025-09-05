local function calculadora (n, m, operador)
  if operador == '+' then
    return n+m; 
  elseif operador == '-' then
    return n-m; 
  elseif operador == '*' then
    return n*m; 
  elseif operador == '/' then
    return n/m; 
  else
    return "Operador desconhecido"
  end
end

local n = io.read('*n');
local m = io.read('*n');
io.read(); -- Usei como se fosse o cin.ignore() do C++
local operador = io.read();

print(calculadora(n, m, operador));

--Crie uma função chamada calculadora que:
--Receba dois números e um operador ('+', '-', '*' ou '/').
--Retorne o resultado da operação correspondente.
--Caso o operador não seja válido, a função deve retornar uma mensagem de erro.
