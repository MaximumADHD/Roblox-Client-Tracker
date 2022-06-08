require(script.Parent.Parent.TestRunner.defineLuaFlags)

local Plugin = script.Parent.Parent

local PluginLoaderBuilder = require(Plugin.PluginLoader.PluginLoaderBuilder)
local SourceStrings = Plugin.Src.Resources.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings

local StudioService = game:GetService("StudioService")
local StudioPublishService = game:GetService("StudioPublishService")

local args : PluginLoaderBuilder.Args = {
	plugin = plugin,
	pluginName = "PublishPlaceAs",
	translationResourceTable = LocalizedStrings,
	fallbackResourceTable = SourceStrings,
	overrideLocaleId = nil,
	localizationNamespace = nil,
	noToolbar = true,
	extraTriggers = {
		["StudioService.DEPRECATED_OnSaveOrPublishPlaceToRoblox"] = function()
			return StudioService.DEPRECATED_OnSaveOrPublishPlaceToRoblox
		end,
		["StudioService.DEPRECATED_OnPublishPlaceToRoblox"] = function()
			return StudioService.DEPRECATED_OnPublishPlaceToRoblox
		end,
		["StudioService.DEPRECATED_GamePublishFinished"] = function()
			return StudioService.DEPRECATED_GamePublishFinished
		end,
		["StudioPublishService.GamePublishFinished"] = function()
			return StudioPublishService.GamePublishFinished
		end,
		["StudioPublishService.OnSaveOrPublishPlaceToRoblox"] = function()
			return StudioPublishService.OnSaveOrPublishPlaceToRoblox
		end
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
