local ImageSet = script.Parent

local IconSize = require(ImageSet.Enum.IconSize)
local getIconSize = require(ImageSet.getIconSize)

return function(iconSizeEnum)
	assert(IconSize.isEnumValue(iconSizeEnum))
	local size = getIconSize(iconSizeEnum)
	return UDim2.fromOffset(size, size)
end
