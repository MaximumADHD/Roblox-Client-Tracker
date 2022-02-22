--[[
	Scrolling frame component with a custom scrollbar that mimics the Studio start page

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 1, 0)
		UDim2 CanvasSize = UDim2.new(1, 0, 1, 0)
		number LayoutOrder = 1
		number ZIndex = 1
		boolean Visible = true
		boolean ShowBackground = true
		table Style = {
			scrollBarBackgroundColor,
			scrollBarColor
		}
]]

local SCROLLBAR_TOP_IMAGE = "rbxasset://textures/GameSettings/ScrollBarTop_Wide.png"
local SCROLLBAR_MIDDLE_IMAGE = "rbxasset://textures/GameSettings/ScrollBarMiddle_Wide.png"
local SCROLLBAR_BOTTOM_IMAGE = "rbxasset://textures/GameSettings/ScrollBarBottom_Wide.png"
local SCROLLBAR_THICKNESS = 8
local SCROLLBAR_BACKGROUND_THICKNESS = 19
local SCROLLBAR_PADDING = 6

local Roact = require(script.Parent.Internal.RequireRoact)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)

local getStyle = nil

local StyledScrollingFrame = Roact.PureComponent:extend("StyledScrollingFrame")

function StyledScrollingFrame:render()
	local function renderInternal()
		local position = self.props.Position or UDim2.new(0, 0, 0, 0)
		local size = self.props.Size or UDim2.new(1, 0, 1, 0)
		local canvasSize = self.props.CanvasSize or UDim2.new(1, 0, 1, 0)

		local layoutOrder = self.props.LayoutOrder or 1
		local zindex = self.props.ZIndex or 1
		local visible = (self.props.Visible ~= nil and self.props.Visible) or (self.props.Visible == nil)
		local showBackground = (self.props.ShowBackground ~= nil and self.props.ShowBackground) or (self.props.ShowBackground == nil)

		local style = getStyle(self)

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,
			BackgroundTransparency = 1,

			LayoutOrder = layoutOrder,
			ZIndex = zindex,
			Visible = visible,

			ClipsDescendants = self.props.ClipsDescendants,
		}, {
			ScrollBarBackground = showBackground and Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				Size = UDim2.new(0, SCROLLBAR_BACKGROUND_THICKNESS, 2, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = style.ScrollBarBackgroundColor,
			}),

			ScrollingFrame = Roact.createElement("ScrollingFrame", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, -SCROLLBAR_PADDING, 1, 0),
				CanvasSize = canvasSize,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				ScrollBarThickness = SCROLLBAR_THICKNESS,
				ScrollBarImageColor3 = style.scrollBarColor,
				ZIndex = 2,

				TopImage = SCROLLBAR_TOP_IMAGE,
				MidImage = SCROLLBAR_MIDDLE_IMAGE,
				BottomImage = SCROLLBAR_BOTTOM_IMAGE,

				ScrollingEnabled = not self.props.DisableScrolling,
				ElasticBehavior = Enum.ElasticBehavior.Always,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				CanvasPosition = self.props.CanvasPosition,

				[Roact.Change.CanvasPosition] = self.props.onScroll,
				[Roact.Ref] = self.props[Roact.Ref],
			}, self.props[Roact.Children]),
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(self)
	local styleProps = {
		["scrollBarBackgroundColor"] = Theme.getScrollBarBackgroundColor(),
		["scrollBarColor"] = Theme.getScrollBarColor(),
	}

	local style = {}
	for name, defaultStylePropsVal in pairs(styleProps) do
		style[name] = self.props.Style and self.props.Style[name] or defaultStylePropsVal
	end
	return style
end

return StyledScrollingFrame
