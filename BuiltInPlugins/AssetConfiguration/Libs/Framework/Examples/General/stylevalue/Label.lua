local Framework = script.Parent.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)

local Label = Roact.PureComponent:extend("Label")

function Label:render()
	local props = self.props
	local theme = props.Theme

	-- Get the values in the Theme for the Label Default style
	-- The "Examples" namespace matches what we defined in init
	local style = theme:getStyle("Examples", self)

	-- We defined a ThemeDisplayText value, so we can use it here
	local displayText = style.ThemeDisplayText

	return Roact.createElement("TextLabel", {
		Size = UDim2.new(0, 100, 0, 60),
		Text = displayText,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
	})
end

ContextServices.mapToProps(Label, {
	Theme = ContextServices.Theme,
})

return Label
