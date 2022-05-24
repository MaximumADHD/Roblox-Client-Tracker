require(script.Parent.Parent.TestRunner.defineLuaFlags)

local Plugin = script.Parent.Parent

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local SourceStrings = Plugin.Src.Resources.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings

local StudioService = game:GetService("StudioService")

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "PublishPlaceAs",
	translationResourceTable = LocalizedStrings,
	fallbackResourceTable = SourceStrings,
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
