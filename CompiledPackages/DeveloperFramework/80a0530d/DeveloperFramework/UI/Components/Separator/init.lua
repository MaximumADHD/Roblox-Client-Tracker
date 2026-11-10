--[[
	A simple border to separate elements.

	Optional Props:
		Enum.DominantAxis DominantAxis: Specifies whether the separator fills the
			space horizontally or vertically. Width will make the separator
			fill the horizontal space, and Height will make the separator
			fill the vertical space.
		number LayoutOrder: The layout order of this component in a UILayout.
		UDim2 Position: The position of the center of the separator.
		Style Style: The style with which to render this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number ZIndex: The render index of this component.

	Style Values:
		Color3 Color: The color of the line.
		number StretchMargin: The padding in pixels to subtract from either side of the separator's dominant axis.
		number Weight: The thickness of the separator line.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Dash = require(Framework.Parent.Dash)
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local t = require(Framework.Util.Typecheck.t)
local joinTags = require(Framework.Styling.joinTags)

local React = require(Framework.Util.React)
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local Typecheck = require(Framework.Util.Typecheck)
local Pane = require(Framework.UI.Components.Pane)

local Separator = Roact.PureComponent:extend("Separator")
Typecheck.wrap(Separator, script)

function Separator:render()
	local props = self.props

	local tags = if supportsStyleSheets then props[React.Tag] else nil

	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local zIndex = props.ZIndex
	local dominantAxis = props.DominantAxis or Enum.DominantAxis.Width

	local style = props.Stylizer

	local color = style.Color
	local stretchMargin = style.StretchMargin
	local weight = style.Weight

	assert(t.numberMin(0)(weight), "Weight style must be a number >= 0")
	assert(t.numberMin(0)(stretchMargin), "StretchMargin style must be a number >= 0")

	local fitTag
	local size
	if dominantAxis == Enum.DominantAxis.Width then
		size = UDim2.new(1, -stretchMargin * 2, 0, weight)
		fitTag = "X-FitY"
	else
		size = UDim2.new(0, weight, 1, -stretchMargin * 2)
		fitTag = "X-FitX"
	end

	return Roact.createElement(
		Pane,
		Dash.join(
			{
				Size = size,
				Position = position,
				AnchorPoint = Vector2.new(0.5, 0.5),
				LayoutOrder = layoutOrder,
				ZIndex = zIndex,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = joinTags(fitTag, tags),
				}
				else {}
		),
		{
			Separator = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = color,
				BorderSizePixel = 0,
				ZIndex = zIndex,
			}),
		}
	)
end

Separator = withContext({
	Stylizer = ContextServices.Stylizer,
})(Separator)

return Separator
