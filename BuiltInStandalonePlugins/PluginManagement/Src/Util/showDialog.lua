local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)
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

	local children = {
		Dialog = Roact.createElement(InstallationDialog, {
			pluginId = pluginId,
			OnButtonClicked = closeDialog,
			OnClose = closeDialog,
		}, {
			Main = Roact.createElement(MainView, {
				pluginId = pluginId
			}),
		})
	}

	local dialog
	if FFlagPluginManagementRemoveUILibrary then
		local globals = getPluginGlobals()
		dialog = ContextServices.provide({
			ContextServices.Plugin.new(globals.plugin),
			ContextServices.Store.new(globals.store),
			globals.localization,
			globals.theme,
		}, children)
	else
		dialog = Roact.createElement(ServiceWrapper, getPluginGlobals(), children)
	end 
	handle = Roact.mount(dialog)
end