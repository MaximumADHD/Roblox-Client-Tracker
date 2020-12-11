local Plugin = script.Parent.Parent.Parent.Parent

local PluginContext = require(Plugin.SrcDeprecated.Context.Plugin)
local getPlugin = PluginContext.getPlugin

local PluginWidget = require(Plugin.SrcDeprecated.Components.PluginWidget.PluginWidget)

return PluginWidget("DockWidget", function(self, id)
	local props = self.props
	local plugin = props.Plugin or getPlugin(self)

	local dwpgi = DockWidgetPluginGuiInfo.new(
		props.InitialDockState,
		props.InitialEnabled,
		props.InitialEnabledShouldOverrideRestore,
		props.Size.X,
		props.Size.Y,
		props.MinSize.X,
		props.MinSize.Y)

	return plugin:CreateDockWidgetPluginGui(id, dwpgi)
end)
