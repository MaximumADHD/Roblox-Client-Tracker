local ImageSet = script.Parent

local IconSize = require(ImageSet.Enum.IconSize)

local IconSizeMap = {
	[IconSize.Small] = 16,
	[IconSize.Medium] = 36,
	[IconSize.Large] = 48,
	[IconSize.XLarge] = 96,
	[IconSize.XXLarge] = 192,
}

return function(iconSizeEnum)
	assert(IconSize.isEnumValue(iconSizeEnum))
	return IconSizeMap[iconSizeEnum]
end
