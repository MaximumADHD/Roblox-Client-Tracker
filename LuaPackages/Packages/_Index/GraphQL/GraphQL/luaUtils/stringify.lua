local HttpService = game:GetService("HttpService")
local NULL = require(script.Parent.null)
local encodedNull = HttpService:JSONEncode(NULL)

local function stringify(obj: any): string
	local encodedObj = HttpService:JSONEncode(obj)
	local nullReplacedString = encodedObj:gsub(encodedNull, "null")

	return nullReplacedString
end

return stringify
