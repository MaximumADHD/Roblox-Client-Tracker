if not game:GetFastFlag("ImprovePluginSpeed_TestHarness") then
	return
end

-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
require(script.Parent.defineFlags)

local hasInternalPermission = game:GetService("StudioService"):HasInternalPermission()
if not game:GetFastFlag("EnableTestHarness") or not hasInternalPermission then
	return
end

local Plugin = script.Parent.Parent
local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local TranslationDevelopmentTable = Plugin.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.Localization.TranslationReferenceTable


local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "TestHarness",
	translationResourceTable = TranslationReferenceTable,
	fallbackResourceTable = TranslationDevelopmentTable,
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
		icon = "rbxasset://textures/GameSettings/ToolbarIcon.png",
		text = nil,
		clickableWhenViewportHidden = true
	},
	dockWidgetInfo = {
		dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(
			Enum.InitialDockState.Bottom, --initialDockState,
			true, --initialEnabled,
			false, --initialEnabledShouldOverrideRestore,
			640, --size.X,
			480, --size.Y,
			250, --minSize.X,
			200 --minSize.Y
		),
		getDockTitle =  function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Plugin", "Name")
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
