--[[
	Header shown at the top of the currently opened page

	Props:
		string Title = The text to display for this header
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local function Header(props)
	return withTheme(function(theme)
		return Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, Constants.HEADER_HEIGHT),
			Text = props.Title,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Bottom,
			TextColor3 = theme.header.text,
			LayoutOrder = props.LayoutOrder or 1,
		})
	end)
end

return Header