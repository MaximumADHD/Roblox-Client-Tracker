local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local PropertyListView = require(script.Parent.PropertyListView)

local ImportConfiguration = Roact.PureComponent:extend("ImportConfiguration")

local function NoSelectedItem(props)
	local localization = props.Localization

	return Roact.createFragment({
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

local function ItemSelected(props)
	local localization = props.Localization
	return Roact.createFragment({
		PropertyList = Roact.createElement(Pane, {
			Size = UDim2.fromScale(1, 1),
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			
		}, {
			PropertyList = Roact.createElement(PropertyListView, {
				Instance = props.SettingsItem,
				AssetImportSession = props.AssetImportSession,
				Localization = localization,
			}),
		})
	})
end

function ImportConfiguration:render()
	local props = self.props
	local localization = props.Localization

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		Spacing = 10,
		VerticalAlignment = Enum.VerticalAlignment.Center,
	}, {
		NoSelectedItem = not props.SettingsItem and Roact.createElement(NoSelectedItem, {
			Localization = localization,
		}),
		ItemSelected = props.SettingsItem and Roact.createElement(ItemSelected, {
			SettingsItem = props.SettingsItem,
			AssetImportSession = props.AssetImportSession,
		}),
	})
end

ImportConfiguration = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(ImportConfiguration)

return ImportConfiguration
