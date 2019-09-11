local Plugin = script.Parent.Parent.Parent.Parent

local PluginContext = require(Plugin.Src.Context.Plugin)
local getPlugin = PluginContext.getPlugin

local PluginWidget = require(Plugin.Src.Components.PluginWidget.PluginWidget)

return PluginWidget("Dialog", function(self, id)
	local props = self.props
	local plugin = props.Plugin or getPlugin(self)

	local options = props.options or {
		Size = props.Size or nil,
		MinSize = props.MinSize or nil,
		Resizable = props.Resizable or nil,
		Modal = props.Modal or nil,
		InitialEnabled = props.InitialEnabled or nil,
	}

	return plugin:CreateQWidgetPluginGui(id, options)
end)
