--[[
	Button
]]
local FFlagDeveloperFrameworkWithContext = game:GetFastFlag("DeveloperFrameworkWithContext")

local Framework = script.Parent.Parent.Parent.Parent
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)
local Stylizer = require(Framework.Style).Stylizer

-- In the component
local Button = Roact.PureComponent:extend("Button")

function Button:render()
	local style = self.props.Stylizer

	return Roact.createElement("TextButton", {
		Size = self.props.Size,
		Position = self.props.Position,
		BackgroundColor3 = style.BackgroundColor,
		BackgroundTransparency = 0,
		LayoutOrder = self.props.LayoutOrder or 0,
		Text = self.props.Text or style:getPathString(),
		TextColor3 = style.TextColor3,
		[Roact.Event.Activated] = self.props.OnClick,
	})
end

if FFlagDeveloperFrameworkWithContext then
	Button = withContext({
		Stylizer = Stylizer
	})(Button)
else
	ContextServices.mapToProps(Button, {
		Stylizer = Stylizer
	})
end


return Button