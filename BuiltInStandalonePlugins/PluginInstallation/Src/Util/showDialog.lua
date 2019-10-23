local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local InstallationDialog = require(Plugin.Src.Components.InstallationDialog)
local MainView = require(Plugin.Src.Components.MainView)
local getPluginGlobals = require(Plugin.Src.Util.getPluginGlobals)

-- pluginId : (string, optional)
return function(pluginId)
	local handle = nil
	local function closeDialog()
		if handle then
			Roact.unmount(handle)
		end
	end

	local dialog = Roact.createElement(InstallationDialog, {
		pluginId = pluginId,
		globals = getPluginGlobals(),
		OnButtonClicked = closeDialog,
		OnClose = closeDialog,
	}, {
		Main = Roact.createElement(MainView, {
			pluginId = pluginId
		}),
	})
	handle = Roact.mount(dialog)
end