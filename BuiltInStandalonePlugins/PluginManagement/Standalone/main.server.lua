local StudioService = game:GetService("StudioService")
local MarketplaceService = game:GetService("MarketplaceService")

local Plugin = script.Parent.Parent
require(Plugin.Bin.defineLuaFlags)

local Roact = require(Plugin.Packages.Roact)
local getPluginGlobals = require(Plugin.Src.Util.getPluginGlobals)
local showDialog = require(Plugin.Src.Util.showDialog)
local InstallPluginFromWeb = require(Plugin.Src.Thunks.InstallPluginFromWeb)
local RefreshPlugins = require(Plugin.Src.Thunks.RefreshPlugins)
local ManagementApp = require(Plugin.Src.Components.ManagementApp)

-- initialize all globals
local globals = getPluginGlobals(plugin)
local tokens = {}

local function installPlugin(pluginId)
	-- kick off the network requests

	globals.store:dispatch(InstallPluginFromWeb(StudioService, globals.api, globals.analytics, pluginId))

	-- open a dialog that shows installation progress
	showDialog(pluginId)
end


local function main()
	plugin.Name = "PluginInstallation"

	-- if Studio fires the signal to install a plugin from web, do it!
	table.insert(tokens, StudioService.OnPluginInstalledFromWeb:Connect(installPlugin))

	local mgmtHandle

	-- clean up
	plugin.Unloading:connect(function()
		for _, token in ipairs(tokens) do
			token:Disconnect()
		end
		if mgmtHandle then
			Roact.unmount(mgmtHandle)
		end
	end)

	table.insert(tokens, StudioService:GetPropertyChangedSignal("InstalledPluginData"):Connect(function()
		globals.store:dispatch(RefreshPlugins(globals.api, MarketplaceService))
	end))

	local mgmtWindow = Roact.createElement(ManagementApp, {
		plugin = plugin,
		store = globals.store,
		api = globals.api,
		analytics = globals.analytics,
	})

	mgmtHandle = Roact.mount(mgmtWindow)
end

main()
