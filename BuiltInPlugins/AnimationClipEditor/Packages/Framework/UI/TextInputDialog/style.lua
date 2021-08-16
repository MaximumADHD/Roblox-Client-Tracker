local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	return {
		TextSize = 24,
		Size = {
			X = 500,
			Y = 300,
		},
		Height = {
			TextInputWithBottomText = 30,
		},
		Padding = 30,
		Spacing = 20,
	}
else
	return function(theme, getColor)
		local Default = Style.new({
			TextSize = 24,
			Size = {
				X = 500,
				Y = 300,
			},
			Height = {
				TextInputWithBottomText = 30,
			},
			Padding = 30,
			Spacing = 20,
		})

		return {
			Default = Default,
		}
	end
end