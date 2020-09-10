--[[
	Mostly the same as UILibrary RoundFrame component, but modified to use dev framework context
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local ROUNDED_FRAME_SLICE = Rect.new(3, 3, 13, 13)
local DEFAULT_BORDER_COLOR = Color3.fromRGB(27, 42, 53)
local DEFAULT_SIZE = UDim2.new(0, 100, 0, 100)

local RoundFrame = Roact.PureComponent:extend("RoundFrame")

function RoundFrame:init(initialProps)
	local isButton = initialProps.OnActivated ~= nil
	self.elementType = isButton and "ImageButton" or "ImageLabel"
end

function RoundFrame:render()
	local theme = self.props.Theme:get()

	local props = self.props
	local roundFrameTheme = theme.roundFrame

	local backgroundColor = props.BackgroundColor3
	local backgroundTransparency = props.BackgroundTransparency
	local borderColor = props.BorderColor3 or DEFAULT_BORDER_COLOR
	local borderSize = props.BorderSizePixel or 1
	local size = props.Size or DEFAULT_SIZE
	local position = props.Position
	local anchorPoint = props.AnchorPoint
	local layoutOrder = props.LayoutOrder
	local zindex = props.ZIndex
	local activatedCallback = props.OnActivated
	local mouseEnterCallback = props.OnMouseEnter
	local mouseLeaveCallback = props.OnMouseLeave

	local borderTransparency
	if borderSize == 0 then
		borderTransparency = 1
	else
		borderTransparency = backgroundTransparency
	end

	return Roact.createElement(self.elementType, {
		Size = size,
		Position = position,
		AnchorPoint = anchorPoint,
		LayoutOrder = layoutOrder,
		ZIndex = zindex,

		BackgroundTransparency = 1,
		ImageColor3 = backgroundColor,
		ImageTransparency = backgroundTransparency,

		Image = roundFrameTheme.backgroundImage,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = ROUNDED_FRAME_SLICE,

		[Roact.Event.MouseEnter] = mouseEnterCallback,
		[Roact.Event.MouseLeave] = mouseLeaveCallback,
		[Roact.Event.Activated] = activatedCallback,

		[Roact.Change.AbsoluteSize] = props[Roact.Change.AbsoluteSize],
		[Roact.Change.AbsolutePosition] = props[Roact.Change.AbsolutePosition],
	}, {
		Border = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),

			BackgroundTransparency = 1,
			ImageColor3 = borderColor,
			ImageTransparency = borderTransparency,

			Image = roundFrameTheme.borderImage,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = ROUNDED_FRAME_SLICE,
			SliceScale = borderSize,
		}, props[Roact.Children])
	})
end

ContextServices.mapToProps(RoundFrame, {
	Theme = ContextItems.UILibraryTheme,
})

return RoundFrame
