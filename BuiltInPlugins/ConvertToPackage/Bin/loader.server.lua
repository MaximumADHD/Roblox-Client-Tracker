require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local SourceStrings = Plugin.Src.Resources.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings

local PackageUIService = game:GetService("PackageUIService") or nil

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "ConvertToPackage",
	translationResourceTable = LocalizedStrings,
	fallbackResourceTable = SourceStrings,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	noToolbar = true,
	extraTriggers = {
		["PackageUIService.OnOpenConvertToPackagePlugin"] = function()
			return PackageUIService.OnOpenConvertToPackagePlugin
		end or nil,
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
