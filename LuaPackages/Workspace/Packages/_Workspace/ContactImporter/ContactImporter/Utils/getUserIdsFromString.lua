local EMPTY_STRING = ""
local MATCHING_PATTERN = "([^,]+)"

return function(users: string)
	return string.gmatch(users or EMPTY_STRING, MATCHING_PATTERN)
end
