require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local Constants = require(Plugin.Src.Util.Constants)
local DevelopmentReferenceTable = Plugin.Src.Resources.DevelopmentReferenceTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "TerrainToolsV2",
	translationResourceTable = TranslationReferenceTable,
	fallbackResourceTable = DevelopmentReferenceTable,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	getToolbarName = function()
		return "TerrainToolsLuaToolbarName"
	end,
	buttonInfo = {
		getName = function()
			return "Editor"
		end,
		getDescription = function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Main", "PluginButtonEditorTooltip")
		end,
		icon = "rbxasset://textures/TerrainTools/icon_terrain_big.png",
		text = nil,
		clickableWhenViewportHidden = true
	},
	dockWidgetInfo = {
		dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(
			Enum.InitialDockState.Left, --initialDockState,
			true, --initialEnabled,
			false, --initialEnabledShouldOverrideRestore,
			300, --size.X,
			600, --size.Y,
			Constants.MIN_WIDGET_SIZE.X, --minSize.X,
			Constants.MIN_WIDGET_SIZE.Y --minSize.Y
		),
		getDockTitle =  function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Main", "Title")
		end,
		zIndexBehavior = Enum.ZIndexBehavior.Sibling,
	},
}

local pluginLoaderContext : PluginLoaderBuilder.PluginLoaderContext = PluginLoaderBuilder.build(args)
local success = pluginLoaderContext.pluginLoader:waitForUserInteraction()
if not success then
	-- Plugin destroyed
	return
end

local main = require(script.Parent.main)
main(plugin, pluginLoaderContext)
