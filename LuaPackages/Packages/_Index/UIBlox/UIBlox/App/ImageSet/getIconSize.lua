local ImageSet = script.Parent

local App = ImageSet.Parent
local UIBlox = App.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)

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

return function(iconSizeEnum: number, style: StyleTypes.AppStyle?)
	assert(IconSize.isEnumValue(iconSizeEnum))
	if style ~= nil and style.Tokens ~= nil then
		if iconSizeEnum == IconSize.Small then
			return style.Tokens.Semantic.Icon.Size.Small
		elseif iconSizeEnum == IconSize.Medium then
			return style.Tokens.Semantic.Icon.Size.Medium
		elseif iconSizeEnum == IconSize.Large then
			return style.Tokens.Semantic.Icon.Size.Large
		elseif iconSizeEnum == IconSize.XLarge then
			return style.Tokens.Semantic.Icon.Size.XLarge
		elseif iconSizeEnum == IconSize.XXLarge then
			return style.Tokens.Semantic.Icon.Size.XXLarge
		else
			return nil
		end
	else
		return IconSizeMap[iconSizeEnum]
	end
end
