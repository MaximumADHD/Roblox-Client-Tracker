--[[
	(DEPRECATED)
	Use Pane instead

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.

	Style Values:
		Color3 Color: The color of the box.
		number Transparency: The transparency of the box.
		Color3 BorderColor: The color of the border.
		number BorderSize: the size of the border.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Typecheck = require(Framework.Util.Typecheck)

local Box = Roact.PureComponent:extend("Box")
Typecheck.wrap(Box, script)

function Box:render()
	local props = self.props
	local style = props.Stylizer

	local color = style.Color
	local transparency = style.Transparency
	local borderColor = style.BorderColor
	local borderSize = style.BorderSize or 0

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = color,
		BackgroundTransparency = transparency,
		BorderColor3 = borderColor,
		BorderSizePixel = borderSize,
	}, props[Roact.Children])
end

Box = withContext({
	Stylizer = ContextServices.Stylizer,
})(Box)

return Box
