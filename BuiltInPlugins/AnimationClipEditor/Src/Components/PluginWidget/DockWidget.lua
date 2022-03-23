local Plugin = script.Parent.Parent.Parent.Parent

local PluginWidget = require(Plugin.Src.Components.PluginWidget.PluginWidget)

return PluginWidget("DockWidget", function(self, id)
	local props = self.props
	local plugin = props.Plugin

	if props.Widget then
		return props.Widget
	end

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
