-- TODO (AleksandrSl 18/08/2025): Implementation is valid, but it's impossible to cast nil into T...
--!nocheck
--[=[
	Returns a stateful iterator that yields all elements from the first iterator, then the next, until exhausted.

	@param ... One or more stateful iterator functions to chain.
	@return A stateful iterator that returns `nil` when all iterators are exhausted.

	@example
	```luau
		for x in chain(ipairs({1, 2}), ipairs({3})) do print(x) end --> 1 2 3
	```
]=]
local function chain<T...>(...: () -> T...): () -> T...
	local iterators = { ... }
	local iterators_count = #iterators
	local current_iterator_index = 1
	return function(): T...
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
