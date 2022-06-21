local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local FitFrame = require(Plugin.Packages.FitFrame)
local Constants = require(Plugin.Src.Util.Constants)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local deepCopy = Framework.Util.deepCopy

local UI = Framework.UI
local Pane = UI.Pane
local Checkbox = UI.Checkbox
local TextLabel = UI.Decoration.TextLabel
local Separator = UI.Separator

local UpdatePlugin = require(Plugin.Src.Thunks.UpdatePlugin)

local UpdateOverview = Roact.PureComponent:extend("UpdateOverview")

UpdateOverview.defaultProps = {
	LayoutOrder = 1,
	data = nil,
}

function UpdateOverview:init()
	local props = self.props
	local plugin = props.plugin
	local updateAvailable = props.updateAvailable
	local id = tostring(props.data.assetId)
	local configs = plugin:GetSetting(Constants.PLUGIN_SETTING_NAME)

	if (configs[id] == nil) then
		local newConfigs = deepCopy(configs)
		newConfigs[id] = false
		plugin:SetSetting(Constants.PLUGIN_SETTING_NAME, newConfigs)
		configs = plugin:GetSetting(Constants.PLUGIN_SETTING_NAME)
	end

	self.state = {
		checked = configs[id],
		lastModified = props.data.updated,
	}

	self.onClick = function()
		local currConfigs = plugin:GetSetting(Constants.PLUGIN_SETTING_NAME)
		local newConfigs = deepCopy(currConfigs)
		newConfigs[id] = not currConfigs[id]
		plugin:SetSetting(Constants.PLUGIN_SETTING_NAME, newConfigs)
		self:setState({
			checked = newConfigs[id],
			lastModified = props.data.updated,
		})
		if (self.state.checked and updateAvailable) then
			props.Analytics:report("TryUpdatePlugin", props.data.assetId)
			props.UpdatePlugin(props.data, props.Analytics)
		end
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
				date = self.state.lastModified,
			}),
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

UpdateOverview = withContext({
	Analytics = ContextServices.Analytics,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
})(UpdateOverview)

local function mapDispatchToProps(dispatch)
	return {
		UpdatePlugin = function(plugin, analytics)
			dispatch(UpdatePlugin(plugin, analytics))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(UpdateOverview)
