local ImageSet = script.Parent

local App = ImageSet.Parent
local UIBlox = App.Parent
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local IconSize = require(ImageSet.Enum.IconSize)

local IconSizeMap = {
	[IconSize.Small] = 16,
	[IconSize.Medium] = 36,
	[IconSize.Large] = 48,
	[IconSize.XLarge] = 96,
	[IconSize.XXLarge] = 192,
}

return function(iconSizeEnum: number, style: StyleTypes.AppStyle?)
	assert(IconSize.isEnumValue(iconSizeEnum))
	if style ~= nil and style.Tokens ~= nil then
		if iconSizeEnum == IconSize.Small then
			return if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Size.Size_400
				else style.Tokens.Semantic.Icon.Size.Small
		elseif iconSizeEnum == IconSize.Medium then
			return if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Size.Size_900
				else style.Tokens.Semantic.Icon.Size.Medium
		elseif iconSizeEnum == IconSize.Large then
			return if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Size.Size_1200
				else style.Tokens.Semantic.Icon.Size.Large
		elseif iconSizeEnum == IconSize.XLarge then
			return if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then style.Tokens.Size.Size_2400
				else style.Tokens.Semantic.Icon.Size.XLarge
		elseif iconSizeEnum == IconSize.XXLarge then
			return if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then 192
				else style.Tokens.Semantic.Icon.Size.XxLarge
		else
			return nil :: any
		end
	else
		return IconSizeMap[iconSizeEnum]
	end
end
