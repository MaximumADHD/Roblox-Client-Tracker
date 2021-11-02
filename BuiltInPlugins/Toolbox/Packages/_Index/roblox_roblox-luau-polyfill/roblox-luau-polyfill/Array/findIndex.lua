--!strict
return function(array, predicate)
	for i = 1, #array do
		local element = array[i]
		if predicate(element, i, array) then
			return i
		end
	end
	return -1
end
