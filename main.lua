local sort = require("sort")

local data1 = { 9, 5, 7, 2, 8, 1, 3, 4, 6 }
local data2 = { 9, 5, 7, 2, 8, 1, 3, 4, 6 }
local data3 = { 9, 5, 7, 2, 8, 1, 3, 4, 6 }
local data4 = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0}
local data5 = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0}
local data6 = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0}

  print("Bubble sort")
  print("")
  print("unsorted")
  sort.show(data4)
  sort.bubble(data4)
  print("")
  print("sorted")
  sort.show(data4)

  print("")
  print("--------------")
  print("Insertion sort")
  print("")
  print("unsorted")
  sort.show(data5)
  sort.insert(data5)
  print("")
  print("sorted")
  sort.show(data5)

  print("")
  print("--------------")
  print("Selection sort")
  print("")
  print("unsorted")
  sort.show(data6)
  sort.select(data6)
  print("")
  print("sorted")
  sort.show(data6)
