--[[
	Represents an arrow button that appears at the end of a Scrollbar.

	Props:
		int Rotation = The rotation of the image, in degrees.
		UDim2 Position = The position of the button.
		Vector2 AnchorPoint = The pivot of the button's position.

		function OnActivated = A callback for when the user clicks this button.
]]

local ARROW_SIZE = UDim2.new(0, 9, 0, 5)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local ArrowButton = Roact.PureComponent:extend("ArrowButton")

function ArrowButton:render()
	return withTheme(function(theme)
		local props = self.props
		local scrollTheme = theme.scrollBarTheme
		local rotation = props.Rotation
		local position = props.Position
		local anchorPoint = props.AnchorPoint

		return Roact.createElement("ImageButton", {
			Size = UDim2.new(0, Constants.SCROLL_BAR_SIZE, 0, Constants.SCROLL_BAR_SIZE),
			Position = position,
			AnchorPoint = anchorPoint,
			AutoButtonColor = false,
			BackgroundColor3 = scrollTheme.controlColor,
			BorderColor3 = scrollTheme.borderColor,
			ImageTransparency = 1,

			[Roact.Event.Activated] = props.OnActivated,
		}, {
			Arrow = Roact.createElement("ImageLabel", {
				Size = ARROW_SIZE,
				Rotation = rotation,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = scrollTheme.arrowImage,
				ImageColor3 = scrollTheme.imageColor,
				BackgroundTransparency = 1,
			}),
		})
	end)
end

return ArrowButton