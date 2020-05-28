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

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)
local FrameworkUI = require(Plugin.Framework.UI)

local HoverArea = FrameworkUI.HoverArea

-- Remove with FFlagStudioConvertGameSettingsToDevFramework
local getMouse = require(Plugin.Src.Consumers.getMouse)

local RoundArrowButton = Roact.PureComponent:extend("RoundArrowButton")

function RoundArrowButton:init()
	self.state = {
		Hovering = false,
	}
end

function RoundArrowButton:mouseHoverChanged(hovering)
	if not FFlagStudioConvertGameSettingsToDevFramework then
		getMouse(self).setHoverIcon("PointingHand", hovering)
	end
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

	local mouse = FFlagStudioConvertGameSettingsToDevFramework and self.props.Mouse or nil

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

		[Roact.Event.MouseEnter] = (not FFlagStudioConvertGameSettingsToDevFramework) and function()
			self:mouseHoverChanged(true)
		end or nil,

		[Roact.Event.MouseLeave] = (not FFlagStudioConvertGameSettingsToDevFramework) and function()
			self:mouseHoverChanged(false)
		end or nil,
	}, {
		Hover = FFlagStudioConvertGameSettingsToDevFramework and Roact.createElement(HoverArea, {
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

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(RoundArrowButton, {
		Mouse = ContextServices.Mouse,
	})
end

return RoundArrowButton