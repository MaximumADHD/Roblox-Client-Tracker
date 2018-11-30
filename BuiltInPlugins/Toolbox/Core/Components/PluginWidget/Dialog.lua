local Plugin = script.Parent.Parent.Parent.Parent

local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local getPlugin = ContextGetter.getPlugin

local PluginWidget = require(Plugin.Core.Components.PluginWidget.PluginWidget)

return PluginWidget("Dialog", function(self, id)
	local props = self.props
	local plugin = getPlugin(self)

	local options = props.options or {
		Size = props.Size or nil,
		MinSize = props.MinSize or nil,
		Resizable = props.Resizable or nil,
		Modal = props.Modal or nil,
		InitialEnabled = props.InitialEnabled or nil,
	}

	return plugin:CreateQWidgetPluginGui(id, options)
end)
