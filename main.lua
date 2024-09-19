local sort = require("sort")

local data = {}

local function shallowCopy(original)
    local copy = {}
    for key, value in pairs(original) do
        copy[key] = value
    end
    return copy
end



while #data < 2000 do
  local value = math.random(2000)
  table.insert(data, value)
end

local data1 = shallowCopy(data)
local data2 = shallowCopy(data)  print("Bubble sort")

  print("")
  print("unsorted")
  sort.show(data)
  print("")
  sort.bubble(data)
  print("")
  print("sorted")
  sort.show(data)

  print("")
  print("--------------")
  print("Insertion sort")
  print("")
  print("unsorted")
  sort.show(data1)
  print("")
  sort.insert(data1)
  print("")
  print("sorted")
  sort.show(data1)

  print("")
  print("--------------")
  print("Selection sort")
  print("")
  print("unsorted")
  sort.show(data2)
  print("")
  sort.select(data2)
  print("")
  print("sorted")
  sort.show(data2)
