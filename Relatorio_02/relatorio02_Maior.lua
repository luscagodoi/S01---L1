local function maior_do_array (array)
  local maior = 0;
  for i = 1, #array do
    if array[i]>maior then
      maior = array[i];
    end
  end
  return maior;
end

local array = {1, -6, 22, 9, 3, 5, 2, 5, 15};

print(maior_do_array(array));
