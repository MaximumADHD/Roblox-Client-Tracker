local Plugin = script.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)

if DebugFlags.RunTests() or DebugFlags.RunRhodiumTests() then
	return
end

local Constants = require(Plugin.Src.Util.Constants)
local SourceStrings = Plugin.Src.Resources.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings
local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = Constants.PLUGIN_NAME,
	translationResourceTable = LocalizedStrings,
	fallbackResourceTable = SourceStrings,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	getToolbarName = function(getLocalizedText, namespace, pluginName)
		return getLocalizedText(namespace, pluginName, "Plugin", "Toolbar")
	end,
	buttonInfo = {
		getName = function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Plugin", "Button")
		end,
		getDescription = function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Plugin", "Description")
		end,
		icon =  Constants.PLUGIN_BUTTON_IMAGE,
		text = nil
	},
	dockWidgetInfo = {
		dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(
			Enum.InitialDockState.Bottom, --initialDockState,
			false, --initialEnabled,
			true, --initialEnabledShouldOverrideRestore,
			Constants.MAIN_FLOATING_SIZE.X, --size.X,
			Constants.MAIN_FLOATING_SIZE.Y, --size.Y,
			Constants.MAIN_MINIMUM_SIZE.X, --minSize.X,
			Constants.MAIN_MINIMUM_SIZE.Y --minSize.Y
		),
		getDockTitle =  function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Plugin", "Name")
		end,
		name = "AnimationClipEditor",
		zIndexBehavior = Enum.ZIndexBehavior.Sibling,
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
