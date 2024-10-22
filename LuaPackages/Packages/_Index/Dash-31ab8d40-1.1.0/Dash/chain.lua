--[[
	Returns a stateful iterator that returns elements from the first iterable until it is exhausted,
	then proceeds to the next iterator, until all the iterators are exhausted.
]]

local function chain<T>(...: () -> T): () -> T?
	local iterators = { ... }
	local iterators_count = #iterators
	local current_iterator_index = 1

	return function()
		while current_iterator_index <= iterators_count do
			local iterator_function = iterators[current_iterator_index]
			local result = { iterator_function() }
			if result[1] ~= nil then
				return table.unpack(result)
			else
				current_iterator_index = current_iterator_index + 1
			end
		end
		return nil
	end
end

return chain
