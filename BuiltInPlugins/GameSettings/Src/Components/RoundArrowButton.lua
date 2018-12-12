--[[
	A round button with an arrow, used for pagination.

	Props:
		UDim2 Position
		Vector2 AnchorPoint
		bool Visible = Whether this button is visible.
		bool Flipped = Whether this button is flipped (arrow facing left)
		function OnClick = A callback invoked when the button is clicked.
]]

local BUTTON_IMAGE = "rbxasset://textures/GameSettings/RoundArrowButton.png"
local BUTTON_SIZE = UDim2.new(0, 48, 0, 48)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local getMouse = require(Plugin.Src.Consumers.getMouse)

local RoundArrowButton = Roact.PureComponent:extend("RoundArrowButton")

function RoundArrowButton:init()
	self.state = {
		Hovering = false,
	}
end

function RoundArrowButton:mouseHoverChanged(hovering)
	getMouse(self).setHoverIcon("PointingHand", hovering)
	self:setState({
		Hovering = hovering,
	})
end

function RoundArrowButton:render()
	local visible = self.props.Visible
	local flipped = self.props.Flipped or false
	local position = self.props.Position or UDim2.new()
	local anchorPoint = self.props.AnchorPoint or Vector2.new()
	local hovering = self.state.Hovering

	return Roact.createElement("ImageButton", {
		Visible = visible,
		Position = position,
		AnchorPoint = anchorPoint,
		Size = BUTTON_SIZE,
		BackgroundTransparency = 1,
		ImageTransparency = hovering and 0 or 0.3,
		Image = BUTTON_IMAGE,
		Rotation = flipped and 180 or 0,

		[Roact.Event.Activated] = self.props.OnClick,

		[Roact.Event.MouseEnter] = function()
			self:mouseHoverChanged(true)
		end,

		[Roact.Event.MouseLeave] = function()
			self:mouseHoverChanged(false)
		end,

		[Roact.Event.Activated] = self.props.OnClick,
	})
end

return RoundArrowButton