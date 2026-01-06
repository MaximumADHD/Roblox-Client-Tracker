local Root = script:FindFirstAncestor("Utils").Parent

local HardBreakElement = require(Root.Components.InlineLayout.InlineLayoutElements.HardBreakElement)
local InlineElementType = require(Root.Utils.InlineElementType)

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
