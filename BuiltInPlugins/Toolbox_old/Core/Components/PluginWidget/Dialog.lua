local FFlagStudioFixToolboxDialog = game:DefineFastFlag("StudioFixToolboxDialog", false)

local Plugin = script.Parent.Parent.Parent.Parent

local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local getPlugin = ContextGetter.getPlugin

local PluginWidget = require(Plugin.Core.Components.PluginWidget.PluginWidget)

return PluginWidget("Dialog", function(self, id)
	local props = self.props
	local plugin = getPlugin(self)

	local initialEnabled
	if FFlagStudioFixToolboxDialog then
		if props.InitialEnabled then
			initialEnabled = props.InitialEnabled
		else
			initialEnabled = true
		end
	else
		initialEnabled = props.InitialEnabled or nil
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
