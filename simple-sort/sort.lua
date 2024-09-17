local sort = {}

local function swap(data, a, b)
	local temp = data[a]
	data[a] = data[b]
	data[b] = temp
end

local function min(data, a, b)
  local minValue = a
  for i = a+1, b do
  	if data[minValue] > data[i] then
  	  minValue = i
  	end
  end
  return minValue
end

local function max(data, a, b)
  local maxValue = a
  for i = a+1, b do
  	if data[maxValue] < data[i] then
  	  maxValue = i
  	end
  end
  return maxValue
end

function sort.show(data)
   print(table.concat(data, " "))
end

-- Bubble sort
function sort.bubble(data, reverse, first, last)
  local flag = false
  first = first or 1
  last = last or #data
  reverse = reverse or false

  for i = first, last do
    if flag == true then
      break
    end
    flag = true

    for j = last, i, -1 do
      if j ~= first and ( ( not reverse and data[j] < data[j-1] ) or ( reverse and data[j] > data[j-1] ) ) then
        swap(data, j, j-1)
        flag = false
      end
    end
  end
end

-- Insertion sort
function sort.insert(data, reverse, first, last)
  first = first or 1
  last = last or #data
  reverse = reverse or false

	for i = first+1, last do
	  local temp = data[i]
	  local j = i - 1

    -- Shift of table elements
    while j >= first and ( ( not reverse and data[j] > temp ) or ( reverse and data[j] < temp ) ) do
      data[j+1] = data[j]
      j = j - 1
    end

    -- Insertion of element from buffer
    data[j+1] = temp
  end
end

-- Selection sort
function sort.select(data, reverse, first, last)
  first = first or 1
  last = last or #data
  reverse = reverse or false

  for i = first, last do
    if not reverse then
      MinValue = min(data, i, last)
    else
      MinValue = max(data, i, last)
    end

    if MinValue ~= i then
    	swap(data, i, MinValue)
    end
  end
end

return sort
