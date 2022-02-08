local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local MyExampleComponent = Roact.PureComponent:extend("MyExampleComponent")

function MyExampleComponent:render()
	local props = self.props
	local style = props.Stylizer
	return Roact.createElement(Pane, {
		BackgroundColor = style.Background,
		LayoutOrder = props.LayoutOrder,
		AutomaticSize = Enum.AutomaticSize.XY,
	}, {
		Label = Roact.createElement(TextLabel, {
			Text = "Hello World!",
			AutomaticSize = Enum.AutomaticSize.XY,
		})
	})
end

return withContext({
	Stylizer = ContextServices.Stylizer,
})(MyExampleComponent)
