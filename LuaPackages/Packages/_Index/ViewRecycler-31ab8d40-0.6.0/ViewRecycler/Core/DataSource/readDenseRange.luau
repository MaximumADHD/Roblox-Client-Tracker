local function readDenseRange<T>(
	itemCount: number,
	readItem: (index: number) -> T,
	firstIndex: number,
	lastIndex: number
): { T }
	local first = math.max(1, firstIndex)
	local last = math.min(itemCount, lastIndex)
	local count = math.max(0, last - first + 1)
	local result = table.create(count)
	for offset = 1, count do
		result[offset] = readItem(first + offset - 1)
	end
	return result
end

return readDenseRange
