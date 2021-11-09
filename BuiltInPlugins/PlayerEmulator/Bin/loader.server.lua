if not game:GetFastFlag("ImprovePluginSpeed_PlayerEmulator") then
    return
end

local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local RunService = game:GetService("RunService")

local TOOLBAR_ICON_PATH = "rbxasset://textures/StudioPlayerEmulator/player_emulator_32.png"

require(script.Parent.defineLuaFlags)
local Constants = require(Plugin.Src.Util.Constants)
local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "PlayerEmulator",
	translationResourceTable = TranslationReferenceTable,
	fallbackResourceTable = TranslationDevelopmentTable,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	getToolbarName = function()
		return "luaPlayerEmulatorToolbar"
	end,
	buttonInfo = {
		getName = function()
			return "luaPlayerEmulatorButton"
		end,
		getDescription = function()
			return ""
		end,
		icon = TOOLBAR_ICON_PATH,
		text = nil,
		enabled = RunService:IsEdit()
	},
	-- The only reason to create DockWidgetPluginGui in PluginLoader is to resume it's previous enabled state,
	-- if InitialEnabledShouldOverrideRestore == true and InitialEnabled == false, it means always disabled by default,
	-- so we don't need to listent to it's enabled signal to resume the PluginLoader.
	dockWidgetInfo = nil,
	shouldImmediatelyOpen = function()
		return plugin:GetSetting(Constants.PLUGIN_WIDGET_STATE)
	end
}

local pluginLoaderContext : PluginLoaderBuilder.PluginLoaderContext = PluginLoaderBuilder.build(args)
local success = pluginLoaderContext.pluginLoader:waitForUserInteraction()
if not success then
	-- Plugin destroyed
	return
end

local main = require(script.Parent.main)
main(plugin, pluginLoaderContext)

