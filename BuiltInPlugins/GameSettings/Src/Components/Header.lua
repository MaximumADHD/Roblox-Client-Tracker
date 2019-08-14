--[[
	Header shown at the top of the currently opened page

	Props:
		string Title = The text to display for this header
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local function Header(props)
	return withTheme(function(theme)
		return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Header, {
			Size = UDim2.new(1, 0, 0, Constants.HEADER_HEIGHT),
			Text = props.Title,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Bottom,
			LayoutOrder = props.LayoutOrder or 1,
		}))
	end)
end

return Header