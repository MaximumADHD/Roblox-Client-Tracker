local FFlagStudioPluginInstallationInLua = settings():GetFFlag("StudioPluginInstallationInLua")
local FFlagStudioEnablePluginManagementPlugin = settings():GetFFlag("StudioEnablePluginManagementPlugin")

if not FFlagStudioEnablePluginManagementPlugin and not FFlagStudioPluginInstallationInLua then
	return
end


local StudioService = game:GetService("StudioService")
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local getPluginGlobals = require(Plugin.Src.Util.getPluginGlobals)
local showDialog = require(Plugin.Src.Util.showDialog)
local InstallPluginFromWeb = require(Plugin.Src.Thunks.InstallPluginFromWeb)
local ManagementApp = require(Plugin.Src.Components.ManagementApp)

-- initialize all globals
local globals = getPluginGlobals(plugin)
local tokens = {}

local function installPlugin(pluginId)
	-- kick off the network requests
	globals.store:dispatch(InstallPluginFromWeb(StudioService, globals.api, pluginId))

	-- open a dialog that shows installation progress
	showDialog(pluginId)
end


local function main()
	plugin.Name = "PluginInstallation"

	if FFlagStudioPluginInstallationInLua then
		-- if Studio fires the signal to install a plugin from web, do it!
		table.insert(tokens, StudioService.OnPluginInstalledFromWeb:Connect(installPlugin))

		-- clean up
		plugin.Unloading:connect(function()
			for _, token in ipairs(tokens) do
				token:Disconnect()
			end
		end)
	end

	if FFlagStudioEnablePluginManagementPlugin then
		local mgmtHandle

		local function onPluginWillDestroy()
			if mgmtHandle then
				Roact.unmount(mgmtHandle)
			end
		end

		local mgmtWindow = Roact.createElement(ManagementApp, {
			plugin = plugin,
			store = globals.store,
			api = globals.api,
			onPluginWillDestroy = onPluginWillDestroy,
		})

		mgmtHandle = Roact.mount(mgmtWindow)
	end
end

main()
