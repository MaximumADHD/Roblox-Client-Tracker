
require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local RunService = game:GetService("RunService")

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local StudioService = game:GetService("StudioService")

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "GameSettings",
	translationResourceTable = TranslationReferenceTable,
	fallbackResourceTable = TranslationDevelopmentTable,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	getToolbarName = function()
		return "gameSettingsToolbar"
	end,
	buttonInfo = {
		getName = function()
			return "gameSettingsButton"
		end,
		getDescription = function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "General", "PluginDescription")
		end,
		icon = "rbxasset://textures/GameSettings/ToolbarIcon.png",
		text = nil,
		clickableWhenViewportHidden = true,
		enabled = RunService:IsEdit()
	},
	-- This is a dialog plugin, no need to restore dockwidget
	dockWidgetInfo = nil,
	extraTriggers = {
		["StudioService.OnOpenGameSettings"] = function()
			return StudioService.OnOpenGameSettings
		end
	}
}

local pluginLoaderContext : PluginLoaderBuilder.PluginLoaderContext = PluginLoaderBuilder.build(args)
local success = pluginLoaderContext.pluginLoader:waitForUserInteraction()
if not success then
	-- Plugin destroyed
	return
end

local main = require(script.Parent.main)
main(plugin, pluginLoaderContext)
