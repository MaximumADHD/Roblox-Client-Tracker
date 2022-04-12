local ImageSet = script.Parent

local App = ImageSet.Parent
local UIBlox = App.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local IconSize = require(ImageSet.Enum.IconSize)

local IconSizeMap

if UIBloxConfig.enableNewIconSizes then
	IconSizeMap = {
		[IconSize.Small] = 18,
		[IconSize.Medium] = 28,
		[IconSize.Large] = 48,
		[IconSize.XLarge] = 96,
		[IconSize.XXLarge] = 192,
	}
else
	IconSizeMap = {
		[IconSize.Small] = 16,
		[IconSize.Medium] = 36,
		[IconSize.Large] = 48,
		[IconSize.XLarge] = 96,
		[IconSize.XXLarge] = 192,
	}
end

return function(iconSizeEnum)
	assert(IconSize.isEnumValue(iconSizeEnum))
	return IconSizeMap[iconSizeEnum]
end
