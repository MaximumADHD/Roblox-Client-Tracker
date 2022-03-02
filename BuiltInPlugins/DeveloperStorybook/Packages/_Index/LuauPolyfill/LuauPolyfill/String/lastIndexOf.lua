local function lastIndexOf(str: string, searchValue: string, fromIndex: number?): number
	local strLength = string.len(str)
	local calculatedFromIndex = fromIndex
	if not fromIndex then
		calculatedFromIndex = strLength
	end
	if fromIndex and fromIndex < 1 then
		calculatedFromIndex = 1
	end
	if fromIndex and fromIndex > strLength then
		calculatedFromIndex = strLength
	end
	if searchValue == "" then
		return calculatedFromIndex
	end

	local lastFoundStartIndex, foundStartIndex
	local foundEndIndex = 0
	repeat
		lastFoundStartIndex = foundStartIndex
		foundStartIndex, foundEndIndex = string.find(str, searchValue, foundEndIndex + 1, true)
	until foundStartIndex == nil or foundStartIndex > calculatedFromIndex

	if lastFoundStartIndex == nil then
		return -1
	end
	return lastFoundStartIndex
end

return lastIndexOf
