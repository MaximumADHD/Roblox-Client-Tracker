--[[
	A line of text.

	Props:
		string Text = The text to display.
		udim2 Size = the size of the text entry box
		int LayoutOrder
		udim2 Position
		vector3 AnchorPoint
		bool Enabled = text will be slightly transparent if not enabled
		local Style = {
			TextColor
		}
]]

local Roact = require(script.Parent.Internal.RequireRoact)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)
local TextUtil = require(script.Parent.Internal.Text)
local Constants = require(script.Parent.Internal.Constants)

local getStyle = nil

local function Text(props)
	local function renderInternal()
		local style = getStyle(props)

		return Roact.createElement("TextLabel", {
			LayoutOrder = props.LayoutOrder,
			BackgroundTransparency = 1,
			Size = props.Size,
			Position = props.Position,
			AnchorPoint = props.AnchorPoint,
			Text = props.Text or "",
			Font = Enum.Font.SourceSans,
			TextColor3 = style.TextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextSize = Constants.TEXT_SIZE,
			TextTransparency = props.Enabled and 0 or 0.5,
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(props)
	local style = {
		TextColor = props.Style and self.props.Style.TextColor or Theme.getMainTextColor()
	}
	return style
end

return Text