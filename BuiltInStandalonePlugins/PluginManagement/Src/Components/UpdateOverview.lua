local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local FitFrame = require(Plugin.Packages.FitFrame)
local Constants = require(Plugin.Src.Util.Constants)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane
local Checkbox = UI.Checkbox
local TextLabel = UI.Decoration.TextLabel
local Separator = UI.Separator

local UpdateOverview = Roact.PureComponent:extend("UpdateOverview")

UpdateOverview.defaultProps = {
	LayoutOrder = 1,
	assetId = 0,
}

function UpdateOverview:init()	
	self.state = {
		checked = true,
		lastModified = DateTime.fromUniversalTime(2022, 6, 6),
	}

	self.onClick = function()
		self:setState({
			checked = not self.state.checked
		})
	end
end

function UpdateOverview:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Stylizer

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = layoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, Constants.PLUGIN_UPDATE_HEIGHT),
		Spacing = 10,
		Style = "Box",
	}, {
		UpdatePane = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 1,
			Spacing = 10,
			Style = "Box",
		}, {
			UpdateCheckbox = Roact.createElement(Checkbox, {
				AutomaticSize = Enum.AutomaticSize.XY,
				Checked = self.state.checked,
				Disabled = false,
				Font = theme.Font,
				LayoutOrder = 1,
				OnClick = self.onClick,
			}),
			UpdateText = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				Font = theme.Font,
				LayoutOrder = 2,
				Text = localization:getText("PluginEntry", "AutoUpdateText"),
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		}),
		Separator = Roact.createElement(Separator, {
			DominantAxis = Enum.DominantAxis.Height,
			LayoutOrder = 2,
			Style = theme.Separator,
		}),
		LastUpdatedText = Roact.createElement(TextLabel, {
			Font = theme.Font,
			LayoutOrder = 3,
			Size = UDim2.fromScale(0.5, 1),
			Text = localization:getText("PluginEntry", "AutoUpdateEntry", {
				date = self.state.lastModified.UnixTimestamp
			}),
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

UpdateOverview = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(UpdateOverview)

return UpdateOverview
