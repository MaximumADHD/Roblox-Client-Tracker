local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local ImportConfiguration = Roact.PureComponent:extend("ImportConfiguration")

function ImportConfiguration:render()
	local props = self.props
	local localization = props.Localization

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		Size = UDim2.new(1, 0, 1, 0),
		Spacing = 10,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	}, {
		Image = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/GameSettings/ToolbarIcon.png",
			LayoutOrder = 1,
			Size = UDim2.fromOffset(32, 32),
		}),
		Label = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = 2,
			Text = localization:getText("Plugin", "ImportConfiguration"),
			TextWrapped = true,
		}),
	})
end

ContextServices.mapToProps(ImportConfiguration, {
	Localization = Localization,
	Stylizer = Stylizer,
})

return ImportConfiguration
