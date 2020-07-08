local FFlagPluginManagementAllowLotsOfPlugins2 = settings():GetFFlag("PluginManagementAllowLotsOfPlugins2")
local FFlagPluginManagementEnableErrorReporting = game:DefineFastFlag("PluginManagementEnableErrorReporting", false)

local StudioService = game:GetService("StudioService")
local MarketplaceService = game:GetService("MarketplaceService")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local getPluginGlobals = require(Plugin.Src.Util.getPluginGlobals)
local showDialog = require(Plugin.Src.Util.showDialog)
local InstallPluginFromWeb = require(Plugin.Src.Thunks.InstallPluginFromWeb)
local RefreshPlugins = require(Plugin.Src.Thunks.RefreshPlugins)
local ManagementApp = require(Plugin.Src.Components.ManagementApp)
local ErrorReporter = Framework.ErrorReporter.StudioPluginErrorReporter

if FFlagPluginManagementEnableErrorReporting then
	ErrorReporter.new({
		plugin = plugin,

		-- remove comment block for verbose testing in Studio
		--[[networking = Framework.Http.Networking.new({
			isInternal = true,
			loggingLevel = 7,
		}),
		services = {
			RunService = {
				GetRobloxVersion = function()
					return "0.0.0.2"
				end,
			},
		},]]
	})
end

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

	-- if Studio fires the signal to install a plugin from web, do it!
	table.insert(tokens, StudioService.OnPluginInstalledFromWeb:Connect(installPlugin))

	-- clean up
	plugin.Unloading:connect(function()
		for _, token in ipairs(tokens) do
			token:Disconnect()
		end
	end)

	local mgmtHandle

	local function onPluginWillDestroy()
		if mgmtHandle then
			Roact.unmount(mgmtHandle)
		end
	end

	-- start preloading data
	if FFlagPluginManagementAllowLotsOfPlugins2 then
		globals.store:dispatch(RefreshPlugins(globals.api, MarketplaceService))
	end

	local mgmtWindow = Roact.createElement(ManagementApp, {
		plugin = plugin,
		store = globals.store,
		api = globals.api,
		onPluginWillDestroy = onPluginWillDestroy,
	})

	mgmtHandle = Roact.mount(mgmtWindow)
end

main()
