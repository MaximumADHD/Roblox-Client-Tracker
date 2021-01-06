local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local StyleKey = Framework.Style.StyleKey

local Util = Framework.Util
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	return {
		RowHeight = 24,
		HoverColor = StyleKey.ButtonHover,
		SelectedColor = StyleKey.DialogMainButton,
		SelectedTextColor = StyleKey.DialogMainButtonText,
		BackgroundColor = StyleKey.MainBackground,
		HeadingColor = StyleKey.CategoryItem,
		BorderColor = StyleKey.Border,
		Indent = 20,
		Arrow = {
			Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
			Size = 12,
			ExpandedOffset = Vector2.new(24, 0),
			CollapsedOffset = Vector2.new(12, 0),
			Color = StyleKey.MainText,
		},
	}
else
	return function(theme, getColor)

		local Default = Style.new({
			RowHeight = 24,
			HoverColor = theme:GetColor("Button", "Hover"),
			HeadingColor = theme:GetColor("CategoryItem"),
			SelectedColor = theme:GetColor("DialogMainButton"),
			SelectedTextColor = theme:GetColor("DialogMainButtonText"),
			BackgroundColor = theme:GetColor("MainBackground"),
			BorderColor = theme:GetColor("Border"),
			Indent = 20,
			Arrow = {
				Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
				Size = 12,
				ExpandedOffset = Vector2.new(24, 0),
				CollapsedOffset = Vector2.new(12, 0),
				Color = theme:GetColor("MainText")
			},
		})

		return {
			Default = Default,
		}
	end
end