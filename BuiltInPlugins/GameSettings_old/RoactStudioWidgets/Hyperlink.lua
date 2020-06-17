--[[
	A widget that contains a hyperlink.

	Props:
		bool Enabled = Whether this widget should be interactable.
		string Text = The hyperlink text
		int TextSize = The size of the text
		int LayoutOrder = The order in which this element is displayed if in a UIListLayout.
		function OnClick = what happens when the hyperlink is clicked
		table Style = {
			HyperlinkColor,
		}
		Mouse = plugin mouse for changing the mouse icon
]]

local Roact = require(script.Parent.Internal.RequireRoact)
local Mouse = require(script.Parent.Internal.Mouse)
local Text = require(script.Parent.Internal.Text)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)

local getStyle = nil

local Hyperlink = Roact.PureComponent:extend("hyperlink")

function Hyperlink:render()
	local function renderInternal()
		local function calculateTextSize(text, textSize, font)
			local size = Text.calculateTextSize(text, textSize, font)
			return UDim2.new(0, size.X, 0, size.Y)
		end

		local textSize = self.props.TextSize or 22

		local style = getStyle(self)

		return Roact.createElement("TextButton", {
			BackgroundTransparency = 1,
			Text = self.props.Text,
			TextSize = textSize,
			Font = Enum.Font.SourceSans,
			TextColor3 = style.HyperlinkColor,
			Size = self.props.Size or calculateTextSize(self.props.Text, textSize, Enum.Font.SourceSans),
			Position = self.Position,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = self.props.LayoutOrder,

			[Roact.Event.MouseEnter] = function() if self.props.Enabled then Mouse.onEnter(self.props.Mouse) end end,
			[Roact.Event.MouseLeave] = function() if self.props.Enabled then Mouse.onLeave(self.props.Mouse) end end,

			[Roact.Event.Activated] = function()
				if self.props.Enabled and nil ~= self.props.OnClick then
					self.props.OnClick()
				end
			end,
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(self)
	local style = {
		HyperlinkColor = self.props.Style and self.props.Style.HyperlinkColor or Theme.getHyperlinkTextTextColor()
	}
	return style
end

return Hyperlink