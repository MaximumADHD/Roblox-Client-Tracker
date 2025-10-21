local Dash = script.Parent
local Types = require(Dash.Types)

--[=[
	Creates a stateful iterator for the _input_ table, first visiting ordered numeric keys 1..n and then the remaining unordered keys in any order.

	@param input The table to create an iterator for.
	@return A stateful iterator function that yields `(key, value)` pairs.
	@see `Dash.iterator` for an iterator that can iterate over an iterable.
]=]
local function iterable(input: {}): Types.AnyFunction
	local currentIndex = 1
	local inOrderedKeys = true
	local currentKey
	local iterateFn
	iterateFn = function()
		if inOrderedKeys then
			local value = input[currentIndex]
			if value == nil then
				inOrderedKeys = false
			else
				local index = currentIndex
				currentIndex += 1
				return index :: number?, value
			end
		end
		while true do
			currentKey = next(input, currentKey)
			-- Don't re-visit ordered keys 1..n
			if
				typeof(currentKey) == "number"
				and currentKey > 0
				and currentKey < currentIndex
				and currentKey % 1 == 0
			then
				continue
			end
			if currentKey == nil then
				return nil
			else
				return currentKey, input[currentKey]
			end
		end
	end
	return iterateFn
end

return iterable
