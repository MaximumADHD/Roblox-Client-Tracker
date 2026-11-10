--[[
	A single button that appears on a ThumbnailHoverBar.

	Required Props:
		callback ButtonPressed: callback when the button is pressed. Used to preview or delete the thumbnail.
		string Image: The image to display as an icon for this button.
		table Theme: The styles for the overall MultiImagePicker component. Styles are prop drilled from init.lua.
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		Vector2 AnchorPoint: The anchor point of this component. Defaults to Vector2.new().
		UDim2 Position: The position of this component. Defaults to UDim2.new().
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

export type Props = {
	AnchorPoint: Vector2?,
	ButtonPressed: () -> (),
	Image: string,
	Position: UDim2?,
	Theme: { [string]: any },
}

type _Props = Props & {
	Mouse: any,
}

-- TODO https://jira.rbx.com/browse/STM-2621: We can replace this component entirely with IconButton
local HoverBarButton = Roact.PureComponent:extend("HoverBarButton")

function HoverBarButton:init()
	self.state = {
		Hovering = false,
	}
end

function HoverBarButton:mouseHoverChanged(hovering)
	local props: _Props = self.props

	-- TODO: change to use HoverArea from Developer Framework
	if hovering then
		props.Mouse:__pushCursor("PointingHand")
	else
		props.Mouse:__resetCursor()
	end

	self:setState({
		Hovering = hovering,
	})
end

function HoverBarButton:render()
	local hovering = self.state.Hovering

	local props: _Props = self.props
	local position = props.Position or UDim2.new()
	local anchorPoint = props.AnchorPoint or Vector2.new()
	local image = props.Image
	local theme = props.Theme
	local hoverBarButtonTheme = theme.HoverBarButton

	return Roact.createElement("ImageButton", {
		BackgroundTransparency = 1,
		ImageTransparency = hovering and 0.9 or 1,
		Image = hoverBarButtonTheme.RoundedBackgroundImage,
		Size = UDim2.new(0, 28, 0, 28),
		Position = position,
		AnchorPoint = anchorPoint,

		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = hoverBarButtonTheme.RoundedFrameSlice,

		[Roact.Event.Activated] = props.ButtonPressed,

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
		}),
	})
end

HoverBarButton = withContext({
	Mouse = ContextServices.Mouse,
})(HoverBarButton)

return HoverBarButton
