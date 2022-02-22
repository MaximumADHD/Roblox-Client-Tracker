local function slice(str: string, startIndexStr: string | number, lastIndexStr: (string | number)?): string
	local strLen = utf8.len(str)
	local startIndex = tonumber(startIndexStr)
	assert(typeof(startIndex) == "number", "startIndexStr should be a number")

	if startIndex + strLen < 0 then
		-- then |start index| is greater than string length
		startIndex = 1
	end

	if startIndex > strLen then
		return ""
	end

	-- if no last index length set, go to str length + 1
	local lastIndex = strLen + 1
	if lastIndexStr ~= nil then
		lastIndex = tonumber(lastIndexStr)
	end
	assert(typeof(lastIndex) == "number", "lastIndexStr should convert to number")

	if lastIndex > strLen then
		lastIndex = strLen + 1
	end

	local startIndexByte = utf8.offset(str, startIndex)
	-- get char length of charset retunred at offset
	local lastIndexByte = utf8.offset(str, lastIndex) - 1

	return string.sub(str, startIndexByte, lastIndexByte)
end

return slice
