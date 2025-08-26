local function deixarPar(array)
  local array_par = {}
  local indice_par = 1;

  for _, numero in ipairs(array) do
    if numero % 2 == 0 then
      array_par[indice_par] = numero;
      indice_par = indice_par + 1
    end
  end
  return array_par;
end

local array = {4, 5, 7, 1, 2, 10, 15, 22};

local array_par = deixarPar(array);

for _, numero in ipairs(array_par) do
  print(numero);
end

--Crie um programa que receba uma tabela de números e retorne uma nova tabela contendo apenas os números pares.
--O programa deve percorrer todos os elementos da tabela original.
--Sempre que encontrar um número par, deve adicioná-lo à nova tabela.
--Ao final, a nova tabela deve ser retornada e exibida.
