local Plugin = script.Parent.Parent

require(script.Parent.defineLuaFlags)

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local Framework = require(Plugin.Packages.Framework)
local isHighDpiEnabled = Framework.Util.isHighDpiEnabled
local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and isHighDpiEnabled()

local RunService = game:GetService("RunService")

local PLUGIN_ICON = if FFlagHighDpiIcons then "rbxlocaltheme://LocalizationTools" else "rbxasset://textures/localizationTestingIcon.png"

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local SourceStrings = Plugin.Src.Resources.Localization.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.Localization.LocalizedStrings

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "LocalizationTools",
	translationResourceTable = LocalizedStrings,
	fallbackResourceTable = SourceStrings,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	getToolbarName = function(getLocalizedText, namespace, pluginName)
		return getLocalizedText(namespace, pluginName, "Plugin", "ToolbarLabel")
	end,
	buttonInfo = {
		getName = function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Plugin", "RibbonBarButton")
		end,
		getDescription = function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Plugin", "ToolTipMessage")
		end,
		icon = PLUGIN_ICON,
		text = nil,
		enabled = RunService:IsEdit()
	},
	dockWidgetInfo = {
		dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(
			Enum.InitialDockState.Left, --initialDockState,
			false, --initialEnabled,
			false, --initialEnabledShouldOverrideRestore,
			300, --size.X,
			250, --size.Y,
			0, --minSize.X,
			0 --minSize.Y
		),
		getDockTitle =  function(getLocalizedText, namespace, pluginName)
			return getLocalizedText(namespace, pluginName, "Plugin", "WindowTitle")
		end,
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
