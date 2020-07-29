--[[
	A simple border to separate elements.

	Required Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.

	Optional Props:
		Enum.DominantAxis DominantAxis: Specifies whether the separator fills the
			space horizontally or vertically. Width will make the separator
			fill the horizontal space, and Height will make the separator
			fill the vertical space.
		number LayoutOrder: The layout order of this component in a UILayout.
		UDim2 Position: The position of the center of the separator.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number ZIndex: The render index of this component.

	Style Values:
		Color3 Color: The color of the line.
		number StretchMargin: The padding in pixels to subtract from either side of the separator's dominant axis.
		number Weight: The thickness of the separator line.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local t = require(Framework.Util.Typecheck.t)
local Typecheck = require(Framework.Util).Typecheck

local Separator = Roact.PureComponent:extend("Separator")
Typecheck.wrap(Separator, script)

function Separator:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local zIndex = props.ZIndex
	local dominantAxis = props.DominantAxis or Enum.DominantAxis.Width

	local theme = props.Theme
	local style = theme:getStyle("Framework", self)

	local color = style.Color
	local stretchMargin = style.StretchMargin
	local weight = style.Weight

	assert(t.numberMin(0)(weight), "Weight style must be a number >= 0")
	assert(t.numberMin(0)(stretchMargin), "StretchMargin style must be a number >= 0")

	local size
	if dominantAxis == Enum.DominantAxis.Width then
		size = UDim2.new(1, -stretchMargin * 2, 0, weight)
	else
		size = UDim2.new(0, weight, 1, -stretchMargin * 2)
	end

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = color,
		BorderSizePixel = 0,
		ZIndex = zIndex,
		LayoutOrder = layoutOrder,
	})
end

ContextServices.mapToProps(Separator, {
	Theme = ContextServices.Theme,
})

return Separator
