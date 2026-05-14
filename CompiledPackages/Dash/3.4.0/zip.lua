--[=[
	Returns an iterator over two given arrays that produces pairs of elements with the same index from both arrays.

	The iterator stops when the shortest array ends, i.e. when it encounters nil in one of the arrays.

	@param array1 The first array to zip.
	@param array2 The second array to zip.
	@return An iterator that yields pairs of elements from both arrays.
]=]
local function zip<Item1, Item2>(array1: { Item1 }, array2: { Item2 }): () -> (Item1, Item2)
	local key1, key2, item1, item2
	return function()
		key1, item1 = next(array1, key1)
		key2, item2 = next(array2, key2)
		if not item1 or not item2 then
			return nil
		end
		return item1, item2
	end
end

return zip
