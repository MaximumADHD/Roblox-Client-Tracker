local HardBreakElement = require(script.Parent.HardBreakElement)
local InlineElementType = require(script.Parent.InlineElementType)

local function isInlineElement(object: any): boolean
	if object == HardBreakElement then
		return true
	end
	if type(object) == "table" then
		local metatable = getmetatable(object)
		return metatable ~= nil and metatable.__type == InlineElementType
	end
	return false
end

return isInlineElement
