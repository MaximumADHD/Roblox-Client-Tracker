--[[
	Message to the user that appears at the bottom of their screen

	Props:
		string Text
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Colors = require(Plugin.Core.Util.Colors)
local Constants = require(Plugin.Core.Util.Constants)

local RoundFrame = require(Plugin.Core.Components.RoundFrame)

-- TODO CLIDEVSRVS-1591: Finish this
local function Toast(props)
	local text = props.Text or ""

	local fontSize = Constants.FONT_SIZE_SMALL
	local font = Constants.FONT

	local textBounds = Constants.getTextSize(text, fontSize, font)

	local horizontalPadding = 12
	local verticalPadding = 8
	local width = horizontalPadding + textBounds.x + horizontalPadding
	local height = verticalPadding + textBounds.y + verticalPadding

	local distFromBottom = 16

	return Roact.createElement(RoundFrame, {
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -distFromBottom),
		Size = UDim2.new(0, width, 0, height),
		ZIndex = 10,

		BackgroundColor3 = Colors.GRAY_2,
		BackgroundTransparency = 0.2,
	}, {
		TextLabel = Roact.createElement("TextLabel", {
			Position = UDim2.new(0, 0, 0, -1),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Text = text,
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_SMALL,
			TextColor3 = Colors.GRAY_6
		})
	})
end

return Toast
