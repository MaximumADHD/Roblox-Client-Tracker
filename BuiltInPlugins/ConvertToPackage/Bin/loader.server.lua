require(script.Parent.defineLuaFlags)

local Plugin = script.Parent.Parent

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local FFlagPreventChangesWhenConvertingPackage = game:GetFastFlag("PreventChangesWhenConvertingPackage")
local PackageUIService = FFlagPreventChangesWhenConvertingPackage and game:GetService("PackageUIService") or nil

local StudioService = game:GetService("StudioService")

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "ConvertToPackage",
	translationResourceTable = TranslationReferenceTable,
	fallbackResourceTable = TranslationDevelopmentTable,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	noToolbar = true,
	extraTriggers = {
		["PackageUIService.OnOpenConvertToPackagePlugin"] = FFlagPreventChangesWhenConvertingPackage and function()
			return PackageUIService.OnOpenConvertToPackagePlugin
		end or nil,
		["StudioService.OnOpenConvertToPackagePlugin"] = not FFlagPreventChangesWhenConvertingPackage and function()
			return StudioService.OnOpenConvertToPackagePlugin
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
