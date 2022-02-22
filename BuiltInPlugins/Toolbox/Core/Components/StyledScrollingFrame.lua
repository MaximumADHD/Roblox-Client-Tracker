--[[
	Scrolling frame component with a custom scrollbar that mimics the Studio start page

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 1, 0)
		UDim2 CanvasSize = UDim2.new(1, 0, 1, 0)
		number LayoutOrder = 1
		number ZIndex = 1
		boolean Visible = true

		callback onScroll()
]]
local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local function renderContent(props)
	local theme = props.Stylizer

	local position = props.Position or UDim2.new(0, 0, 0, 0)
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local canvasSize = props.CanvasSize or UDim2.new(1, 0, 1, 0)

	local layoutOrder = props.LayoutOrder or 1
	local zindex = props.ZIndex or 1
	local visible = (props.Visible ~= nil and props.Visible) or (props.Visible == nil)

	local onScroll = props.onScroll
	local ref = props[Roact.Ref]
	local children = props[Roact.Children]

	local scrollingEnabled = props.scrollingEnabled

	local scrollingFrameTheme = theme.scrollingFrame

	return Roact.createElement("ImageButton" or "Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,

		LayoutOrder = layoutOrder,
		ZIndex = zindex,
		Visible = visible,

		AutoButtonColor = false or nil,
	}, {
		ScrollBarBackground = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(0, Constants.SCROLLBAR_BACKGROUND_THICKNESS, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = scrollingFrameTheme.scrollbarBackgroundColor,
		}),

		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, -Constants.SCROLLBAR_PADDING, 1, 0),
			CanvasSize = canvasSize,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ScrollBarThickness = Constants.SCROLLBAR_THICKNESS,
			ZIndex = 2,

			TopImage = Images.SCROLLBAR_TOP_IMAGE,
			MidImage = Images.SCROLLBAR_MIDDLE_IMAGE,
			BottomImage = Images.SCROLLBAR_BOTTOM_IMAGE,

			ScrollBarImageColor3 = scrollingFrameTheme.scrollbarImageColor,

			ScrollingEnabled = scrollingEnabled,
			ElasticBehavior = Enum.ElasticBehavior.Always,
			ScrollingDirection = Enum.ScrollingDirection.Y,

			[Roact.Change.CanvasPosition] = onScroll,
			[Roact.Ref] = ref,
		}, children),
	})
end

local StyledScrollingFrame = Roact.PureComponent:extend("StyledScrollingFrame")

function StyledScrollingFrame:render()
	return renderContent(self.props)
end

StyledScrollingFrame = withContext({
	Stylizer = ContextServices.Stylizer,
})(StyledScrollingFrame)

return StyledScrollingFrame
