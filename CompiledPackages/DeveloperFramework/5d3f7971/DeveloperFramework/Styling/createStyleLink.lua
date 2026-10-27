local types = require(script.Parent.types)
type StyleProperties = types.StyleProperties

local function createStyleLink(instance: Instance, styleSheet: StyleSheet)
	local link = Instance.new("StyleLink")
	link.Name = styleSheet.Name
	link.StyleSheet = styleSheet
	link.Parent = instance
	return link
end

return createStyleLink
