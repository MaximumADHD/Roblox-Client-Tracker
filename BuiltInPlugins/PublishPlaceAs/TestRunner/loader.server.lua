require(script.Parent.Parent.TestRunner.defineLuaFlags)

local Plugin = script.Parent.Parent

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable

local StudioService = game:GetService("StudioService")

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "PublishPlaceAs",
	translationResourceTable = TranslationReferenceTable,
	fallbackResourceTable = TranslationDevelopmentTable,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	noToolbar = true,
	extraTriggers = {
		["StudioService.OnSaveOrPublishPlaceToRoblox"] = function()
			return StudioService.OnSaveOrPublishPlaceToRoblox
		end,
		["StudioService.OnPublishPlaceToRoblox"] = function()
			return StudioService.OnPublishPlaceToRoblox
		end,
		["StudioService.GamePublishFinished"] = function()
			return StudioService.GamePublishFinished
		end,
	},
}

local pluginLoaderContext : PluginLoaderBuilder.PluginLoaderContext = PluginLoaderBuilder.build(args)
local success = pluginLoaderContext.pluginLoader:waitForUserInteraction()
if not success then
	-- Plugin destroyed
	return
end

local main = require(script.Parent.Parent.Src.main)
main(plugin, pluginLoaderContext)
