if not plugin then
	return
end

local Plugin = script.Parent.Parent

local DebugFlags = require(Plugin.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

-- Fast flags
require(script.Parent.defineLuaFlags)
if not game:GetFastFlag("TerrainToolsUseDevFramework") then
	return
end

-- Libraries
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibraryCompat = Plugin.Src.UILibraryCompat

-- Context
local ContextServices = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store

local ContextItems = require(Plugin.Src.ContextItems)

local createAnalyticsHandlers = require(Plugin.Src.Util.createAnalyticsHandlers)

-- Rodux Store
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- Theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- Localization
local DevelopmentReferenceTable = Plugin.Src.Resources.DevelopmentReferenceTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = require(UILibraryCompat.Localization)

-- Terrain Context Items
local PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
local TerrainImporter = require(Plugin.Src.TerrainInterfaces.TerrainImporterInstance)
local TerrainGeneration = require(Plugin.Src.TerrainInterfaces.TerrainGenerationInstance)
local TerrainSeaLevel = require(Plugin.Src.TerrainInterfaces.TerrainSeaLevel)
local PartConverter = require(Plugin.Src.TerrainInterfaces.PartConverter)

-- Top Level Component
local TerrainTools = require(Plugin.Src.Components.TerrainTools)

-- Plugin Specific Globals
local PLUGIN_NAME = "TerrainToolsV2"

local function createTerrainContextItems()
	local pluginItem = ContextServices.Plugin.new(plugin)
	local mouse = Mouse.new(plugin:getMouse())

	local store = Store.new(Rodux.Store.new(MainReducer, nil, {}))

	local theme = ContextItems.UILibraryTheme.new(PluginTheme.new())
	local localization = Localization.new({
		pluginName = PLUGIN_NAME,
		stringResourceTable = DevelopmentReferenceTable,
		translationResourceTable = TranslationReferenceTable,
	})
	local localizationItem = ContextItems.UILibraryLocalization.new(localization)

	local analytics = Analytics.new(createAnalyticsHandlers)

	local terrainInstance = require(Plugin.Src.Util.getTerrain)()
	local terrainItem = ContextItems.Terrain.new(terrainInstance)
	local pluginActivationController = PluginActivationController.new(plugin)

	local terrainImporter = TerrainImporter.new({
		terrain = terrainInstance,
		localization = localization,
		analytics = analytics,
	})

	local terrainGeneration = TerrainGeneration.new({
		terrain = terrainInstance,
		localization = localization,
		analytics = analytics,
	})

	local seaLevel = TerrainSeaLevel.new({
		terrain = terrainInstance,
		localization = localization,
	})

	local partConverter
	if game:GetFastFlag("TerrainToolsConvertPartTool") then
		partConverter = PartConverter.new({
			terrain = terrainInstance,
			localization = localization,
			analytics = analytics,
		})
	end

	return {
		plugin = pluginItem,
		mouse = mouse,
		store = store,
		theme = theme,
		localization = localizationItem,
		analytics = analytics,
		terrain = terrainItem,
		pluginActivationController = pluginActivationController,
		terrainImporter = terrainImporter,
		terrainGeneration = terrainGeneration,
		seaLevel = seaLevel,
		partConverter = partConverter,
	}
end

local function cleanupTerrainContextItems(contextItems)
	for _, item in pairs(contextItems) do
		pcall(function()
			item:destroy()
		end)
	end
end

local function main()
	local contextItems = createTerrainContextItems()

	local roactHandle = Roact.mount(Roact.createElement(TerrainTools, contextItems))

	plugin.Unloading:Connect(function()
		if roactHandle then
			Roact.unmount(roactHandle)
			roactHandle = nil
		end

		cleanupTerrainContextItems(contextItems)
	end)
end

main()
