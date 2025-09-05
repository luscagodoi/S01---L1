local m = io.read("*n");
local n = io.read("*n");
local x = io.read("*n");

print("Esses são os multiplos de \"" .. x .. "\" no intervalo de \"" .. m .. "\" até \"" .. n .. "\":\n");

for i = m, n do
  if i % x == 0 then
    print(i);
  end
end

--Faça um programa que faça o seguinte:
--1.Solicite ao usuário que digite dois números inteiros: M e N.
--M será o início do intervalo.
--N será o final do intervalo.
--Você pode assumir que M ≤ N.
--2.Em seguida, peça ao usuário para digitar mais um número inteiro: X.
--Este será o número do qual queremos encontrar os múltiplos.
--3.O programa deve calcular e exibir todos os múltiplos de X que estão no intervalo de M até N, incluindo M e N, se eles forem múltiplos de X.
