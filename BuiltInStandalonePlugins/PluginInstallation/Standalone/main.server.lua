if not settings():GetFFlag("StudioPluginInstallationInLua") then
	return
end

local StudioService = game:GetService("StudioService")
local Plugin = script.Parent.Parent

local getPluginGlobals = require(Plugin.Src.Util.getPluginGlobals)
local showDialog = require(Plugin.Src.Util.showDialog)
local InstallPluginFromWeb = require(Plugin.Src.Thunks.InstallPluginFromWeb)

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
end

main()
