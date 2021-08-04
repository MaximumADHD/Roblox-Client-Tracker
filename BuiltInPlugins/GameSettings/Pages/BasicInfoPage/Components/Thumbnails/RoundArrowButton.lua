--[[
	A round button with an arrow, used for pagination.

	Props:
		UDim2 Position
		Vector2 AnchorPoint
		bool Visible = Whether this button is visible.
		bool Flipped = Whether this button is flipped (arrow facing left)
		function OnClick = A callback invoked when the button is clicked.
]]
local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")

local BUTTON_IMAGE = "rbxasset://textures/GameSettings/RoundArrowButton.png"
local BUTTON_SIZE = UDim2.new(0, 48, 0, 48)

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)
local withContext = ContextServices.withContext
local FrameworkUI = require(Plugin.Framework.UI)

local HoverArea = FrameworkUI.HoverArea

local RoundArrowButton = Roact.PureComponent:extend("RoundArrowButton")

function RoundArrowButton:init()
	self.state = {
		Hovering = false,
	}
end

function RoundArrowButton:mouseHoverChanged(hovering)
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

	local mouse = self.props.Mouse

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
	}, {
		Hover = Roact.createElement(HoverArea, {
			Cursor = "rbxasset://SystemCursors/PointingHand",
			Mouse = mouse,

			MouseEnter = function()
				self:mouseHoverChanged(true)
			end,
			MouseLeave = function()
				self:mouseHoverChanged(false)
			end,
		})
	})
end

if FFlagGameSettingsWithContext then
	RoundArrowButton = withContext({
		Mouse = ContextServices.Mouse,
	})(RoundArrowButton)
else
	ContextServices.mapToProps(RoundArrowButton, {
		Mouse = ContextServices.Mouse,
	})
end


return RoundArrowButton