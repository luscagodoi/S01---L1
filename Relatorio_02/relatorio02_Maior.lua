local function maior_do_array (array)
  local maior = 0;
  for _, numero in ipairs(array) do
    if numero>maior then
      maior = numero;
    end
  end
  return maior;
end

local array = {1, -6, 22, 9, 3, 5, 2, 5, 15};

print(maior_do_array(array));

--Crie um programa que receba uma tabela (array) de números e retorne o maior valor encontrado nela.
--A função deve percorrer todos os elementos da tabela.
--O valor retornado deve ser apenas o maior número da tabela.