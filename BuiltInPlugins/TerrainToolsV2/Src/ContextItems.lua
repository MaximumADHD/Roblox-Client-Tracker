local Plugin = script.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local ContextItem = Framework.ContextServices.ContextItem

local TerrainInterfaces = script.Parent.TerrainInterfaces

return {
	-- Because we're still partially using UI Library Theme and Localization implementations
	-- we need to wrap them in Dev Framework context items
	UILibraryTheme = ContextItem:createSimple("UILibraryTheme", {
		getValues = function(theme)
			return theme.values
		end,
		getChangedSignal = function(theme)
			return theme.valuesChanged
		end,
		destroy = function(theme)
			theme:destroy()
		end,
	}),
	UILibraryLocalization = ContextItem:createSimple("UILibraryLocalization", {
		getChangedSignal = function(localization)
			return localization.localeChanged
		end,
		destroy = function(localization)
			localization:destroy()
		end,
	}),

	-- Also wrap terrain as it is a C++ Instance
	Terrain = ContextItem:createSimple("Terrain"),

	PluginActivationController = require(script.Parent.Util.PluginActivationController),

	TerrainGeneration = require(TerrainInterfaces.TerrainGenerationInstance),
	TerrainImporter = require(TerrainInterfaces.TerrainImporterInstance),
	SeaLevel = require(TerrainInterfaces.TerrainSeaLevel),
	PartConverter = require(TerrainInterfaces.PartConverter),
}
