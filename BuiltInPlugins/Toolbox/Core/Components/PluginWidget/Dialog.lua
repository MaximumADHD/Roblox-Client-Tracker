--[[
	This component is responsible for craeting a pluginGui that comes with an close button.
	It's most used in message box.

	Optional Props:
		plugin = plugin object, It's the plugin object obtained from the main.server.
		It's used to create pluginGui and toolbar. Our main interfact to interact with the plugin.
		If we pass the plugin object in as the props, then we will try to use that plugin object first.
		If not, then we will be trying to fetch the plugin through getPlugin/PluginConsumer.

		Size = Vector2, determins how big the pluginGui should be.
		MinSize = Vector2, the minimal size you are allowed.
		Resizable = bool, can you resize the pluginGui or not.
		Modal = bool, do you want to enable modal or not.
		InitialEnabled = boo, is the pluginGui enabled on start.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local getPlugin = ContextGetter.getPlugin

local PluginWidget = require(Plugin.Core.Components.PluginWidget.PluginWidget)

return PluginWidget("Dialog", function(self, id)
	local props = self.props
	local plugin = props.plugin or getPlugin(self)

	local initialEnabled
	if props.InitialEnabled then
		initialEnabled = props.InitialEnabled
	else
		initialEnabled = true
	end

	local options = props.options or {
		Size = props.Size or nil,
		MinSize = props.MinSize or nil,
		Resizable = props.Resizable or nil,
		Modal = props.Modal or nil,
		InitialEnabled = initialEnabled,
	}

	return plugin:CreateQWidgetPluginGui(id, options)
end)