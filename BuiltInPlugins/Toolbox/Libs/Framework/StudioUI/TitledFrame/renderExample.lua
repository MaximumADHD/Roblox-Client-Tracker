local Framework = script.Parent.Parent.Parent
local ContextServices = require(Framework.ContextServices)
local Roact = require(Framework.Parent.Roact)
local StudioUI = require(Framework.StudioUI)
local TitledFrame = StudioUI.TitledFrame

local Example = Roact.PureComponent:extend("StyledDialogExample")

function Example:render()
	return Roact.createElement(TitledFrame, {
		Title = "Title",
		LayoutOrder = 1,
	}, {
		Child = Roact.createElement("TextLabel", {
			Text = "Child component",
			TextColor3 = Color3.new(0, 0, 0),
			TextSize = 12,
			Size = UDim2.fromOffset(150, 24)
		}),
	})
end

ContextServices.mapToProps(Example, {
	Plugin = ContextServices.Plugin,
	Theme = ContextServices.Theme,
})

return Example