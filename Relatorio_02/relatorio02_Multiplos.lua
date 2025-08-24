local m = io.read("*n");
local n = io.read("*n");
local x = io.read("*n");

io.write("Esses são os multiplos de \"", x, "\" no intervalo de \"", m, "\" até \"", n, "\":\n");

for i = m, n do
  if i % x == 0 then
    print(i);
  end
end

