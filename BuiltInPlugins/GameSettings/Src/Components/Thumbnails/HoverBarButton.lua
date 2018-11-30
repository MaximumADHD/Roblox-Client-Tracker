--[[
	A single button that appears on a ThumbnailHoverBar.

	Props:
		UDim2 Position = UDim2.new()
		Vector2 AnchorPoint Vector2.new()
		string Image = The image to display as an icon for this button.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local HoverBarButton = Roact.PureComponent:extend("HoverBarButton")

function HoverBarButton:init()
	self.state = {
		Hovering = false,
	}
end

function HoverBarButton:mouseHoverChanged(hovering)
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
		Image = Constants.ROUNDED_BACKGROUND_IMAGE,
		Size = UDim2.new(0, 28, 0, 28),
		Position = position,
		AnchorPoint = anchorPoint,

		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Constants.ROUNDED_FRAME_SLICE,

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

return HoverBarButton