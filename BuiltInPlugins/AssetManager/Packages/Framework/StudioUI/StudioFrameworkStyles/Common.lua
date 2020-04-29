--[[
	Basic styles shared among multiple StudioFrameworkStyles tables.
]]

local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

return function(theme, getColor)
	local MainText = Style.new({
		Font = Enum.Font.SourceSans,
		TextSize = 18,
		TextColor = theme:GetColor("MainText"),
	})

	local Background = Style.new({
		Color = theme:GetColor("MainBackground"),
	})

	local Border = Style.new({
		BorderColor = theme:GetColor("Border"),
	})

	return {
		Default = Background,
		MainText = MainText,
		Background = Background,
		Border = Border,
	}
end
