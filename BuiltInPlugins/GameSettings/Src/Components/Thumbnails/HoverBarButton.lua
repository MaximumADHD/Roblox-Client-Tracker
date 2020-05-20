--[[
	A single button that appears on a ThumbnailHoverBar.

	Props:
		UDim2 Position = UDim2.new()
		Vector2 AnchorPoint Vector2.new()
		string Image = The image to display as an icon for this button.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local getMouse = require(Plugin.Src.Consumers.getMouse)

local HoverBarButton = Roact.PureComponent:extend("HoverBarButton")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

function HoverBarButton:init()
	self.state = {
		Hovering = false,
	}
end

function HoverBarButton:mouseHoverChanged(hovering)
	-- TODO: change to use HoverArea from Developer Framework
	if FFlagStudioConvertGameSettingsToDevFramework then
		local props = self.props
		if hovering then
			props.Mouse:__pushCursor("PointingHand")
		else
			props.Mouse:__resetCursor()
		end
	else
		getMouse(self).setHoverIcon("PointingHand", hovering)
	end
	self:setState({
		Hovering = hovering,
	})
end

function HoverBarButton:render()
	local hovering = self.state.Hovering
	local position = self.props.Position or UDim2.new()
	local anchorPoint = self.props.AnchorPoint or Vector2.new()
	local image = self.props.Image

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		ImageTransparency = hovering and 0.9 or 1,
		Image = DEPRECATED_Constants.ROUNDED_BACKGROUND_IMAGE,
		Size = UDim2.new(0, 28, 0, 28),
		Position = position,
		AnchorPoint = anchorPoint,

		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = DEPRECATED_Constants.ROUNDED_FRAME_SLICE,

		[Roact.Event.Activated] = self.props.ButtonPressed,

		[Roact.Event.MouseEnter] = function()
			self:mouseHoverChanged(true)
		end,

		[Roact.Event.MouseLeave] = function()
			self:mouseHoverChanged(false)
		end,
	}, {
		Icon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Image = image,
		})
	})
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(HoverBarButton, {
		Mouse = ContextServices.Mouse,
	})
end

return HoverBarButton