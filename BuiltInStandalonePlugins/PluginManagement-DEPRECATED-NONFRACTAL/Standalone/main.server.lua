local FFlagStudioPluginInstallationInLua = settings():GetFFlag("StudioPluginInstallationInLua")
local FFlagStudioEnablePluginManagementPlugin = settings():GetFFlag("StudioEnablePluginManagementPlugin")
local FFlagPluginManagementAllowLotsOfPlugins2 = settings():GetFFlag("PluginManagementAllowLotsOfPlugins2")

if not FFlagStudioEnablePluginManagementPlugin and not FFlagStudioPluginInstallationInLua then
	return
end

local StudioService = game:GetService("StudioService")
local MarketplaceService = game:GetService("MarketplaceService")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local getPluginGlobals = require(Plugin.Src.Util.getPluginGlobals)
local showDialog = require(Plugin.Src.Util.showDialog)
local InstallPluginFromWeb = require(Plugin.Src.Thunks.InstallPluginFromWeb)
local RefreshPlugins = require(Plugin.Src.Thunks.RefreshPlugins)
local ManagementApp = require(Plugin.Src.Components.ManagementApp)

local Flags = require(Plugin.Packages.Framework.Util.Flags)
local FlagsList = Flags.new({
	FFlagPluginManagementUseFractalDevFrameworkLayout = {
		"PluginManagementUseFractalDevFrameworkLayout",
	},
	FFlagRefactorPluginLoading = {
		"RefactorPluginLoading"
	},
})

-- -- FRACTAL / NON DEPRECATED
-- if not FlagsList:get("FFlagPluginManagementUseFractalDevFrameworkLayout")
-- 	or not FlagsList:get("FFlagRefactorPluginLoading")
-- then
-- 	return
-- end

-- -- NON FRACTAL / NON DEPRECATED
-- if FlagsList:get("FFlagPluginManagementUseFractalDevFrameworkLayout")
-- 	or not FlagsList:get("FFlagRefactorPluginLoading")
-- then
-- 	return
-- end

-- -- FRACTAL / DEPRECATED
-- if not FlagsList:get("FFlagPluginManagementUseFractalDevFrameworkLayout")
-- 	or FlagsList:get("FFlagRefactorPluginLoading")
-- then
-- 	return
-- end

-- NON FRACTAL / DEPRECATED
if FlagsList:get("FFlagPluginManagementUseFractalDevFrameworkLayout")
	or FlagsList:get("FFlagRefactorPluginLoading")
then
	return
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
end

main()
