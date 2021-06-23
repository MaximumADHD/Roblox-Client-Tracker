local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local _UI = Framework.UI

local ContextServices = Framework.ContextServices
local Stylizer = Framework.Style.Stylizer

local EditDebugpoint = Roact.PureComponent:extend("EditDebugpoint")

function EditDebugpoint:render()
	local style = self.props.Stylizer

	return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = style.MainBackground,
		})
end

ContextServices.mapToProps(EditDebugpoint, {
	Stylizer = Stylizer,
})

return EditDebugpoint
