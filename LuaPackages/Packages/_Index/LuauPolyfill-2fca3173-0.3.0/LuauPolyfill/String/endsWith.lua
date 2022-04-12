--!strict
local function endsWith(value: string, substring: string, optionalLength: number?): boolean
	local substringLength = substring:len()
	if substringLength == 0 then
		return true
	end
	local valueLength = value:len()
	local length = optionalLength or valueLength
	if length > valueLength then
		length = valueLength
	end
	if length < 1 then
		return false
	end
	local position = length - substringLength + 1
	return value:find(substring, position, true) == position
end

return endsWith
