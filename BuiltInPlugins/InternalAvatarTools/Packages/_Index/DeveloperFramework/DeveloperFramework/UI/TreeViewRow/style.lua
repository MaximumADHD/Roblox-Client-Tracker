local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StyleKey = require(Framework.Style.StyleKey)
local Util = require(Framework.Util)
local Style = Util.Style

if THEME_REFACTOR then
	return {
		Arrow = {
			Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
			Size = 12,
			ExpandedOffset = Vector2.new(24, 0),
			CollapsedOffset = Vector2.new(12, 0),
			Color = StyleKey.MainText,
		},
		Border = StyleKey.SubBackground,
		Background = StyleKey.MainBackground,
		Indent = 17,
		[StyleModifier.Hover] = {
			Background = StyleKey.ButtonHover,
		},
		[StyleModifier.Selected] = {
			TextColor = StyleKey.DialogMainButtonText,
			Background = StyleKey.DialogMainButton,
		},
		Tooltip = {
			MaxWidth = 1000
		},
		RowHeight = 24,
		Spacing = 5,
		Padding = {
			Top = 1,
			Bottom = 1,
			Left = 5,
			Right = 5,
		},
	}
else
	return function(theme, getColor)
		local Default = Style.new({
			Arrow = {
				Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
				Size = 12,
				ExpandedOffset = Vector2.new(24, 0),
				CollapsedOffset = Vector2.new(12, 0),
				Color = theme:GetColor("MainText"),
			},
			Border = Color3.fromRGB(10, 10, 10),
			Background = theme:GetColor("MainBackground"),
			Indent = 17,
			[StyleModifier.Hover] = {
				Background = theme:GetColor("Button", "Hover"),
			},
			[StyleModifier.Selected] = {
				TextColor = theme:GetColor("DialogMainButtonText"),
				Background = theme:GetColor("DialogMainButton"),
			},
			Tooltip = {
				MaxWidth = 1000
			},
			RowHeight = 24,
			Spacing = 5,
			Padding = {
				Top = 1,
				Bottom = 1,
				Left = 5,
				Right = 5,
			},
		})

		return {
			Default = Default,
		}
	end
end
