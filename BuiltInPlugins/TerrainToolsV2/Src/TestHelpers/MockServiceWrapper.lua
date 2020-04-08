--[[
	A customizable wrapper for tests that supplies all the required providers for component testing
]]
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)
local Localization = UILibrary.Studio.Localization

local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
local TerrainBrush = require(Plugin.Src.TerrainInterfaces.TerrainBrushInstance)
local TerrainGeneration = require(Plugin.Src.TerrainInterfaces.TerrainGenerationInstance)
local TerrainImporter = require(Plugin.Src.TerrainInterfaces.TerrainImporterInstance)
local TerrainSeaLevel = require(Plugin.Src.TerrainInterfaces.TerrainSeaLevel)
local PartConverter = require(Plugin.Src.TerrainInterfaces.PartConverter)

local TestHelpers = Plugin.Src.TestHelpers
local MockPlugin = require(TestHelpers.MockPlugin)
local MockMouse = require(TestHelpers.MockMouse)
local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local MockServiceWrapper = Roact.Component:extend("MockSkeletonEditorServiceWrapper")

local terrain = MockTerrain.new()
local mouse = MockMouse.new()

local FFlagTerrainToolsTerrainBrushNotSingleton = game:GetFastFlag("TerrainToolsTerrainBrushNotSingleton")

-- props.localization : (optional, UILibrary.Localization)
-- props.plugin : (optional, plugin)
-- props.storeState : (optional, table) a default state for the MainReducer
-- props.theme : (optional, Resources.PluginTheme)
function MockServiceWrapper:render()
	local localization = self.props.localization
	if not localization then
		localization = Localization.mock()
	end

	local pluginInstance = self.props.plugin
	if not pluginInstance then
		pluginInstance = MockPlugin.new()
	end

	local storeState = self.props.storeState
	local store = Rodux.Store.new(MainReducer, storeState, { Rodux.thunkMiddleware })

	local theme = self.props.theme
	if not theme then
		theme = PluginTheme.mock()
	end

	local pluginActivationController = self.props.pluginActivationController
	if not pluginActivationController then
		pluginActivationController = PluginActivationController.new(pluginInstance)
	end

	local terrainBrush
	if not FFlagTerrainToolsTerrainBrushNotSingleton then
		terrainBrush = self.props.terrainBrush
		if not terrainBrush then
			terrainBrush = TerrainBrush.new({
				terrain = terrain,
				mouse = mouse,
				tool = ToolId.Add,
			})
		end
	end

	local terrainGeneration = self.props.terrainGeneration
	if not terrainGeneration then
		terrainGeneration = TerrainGeneration.new({
			terrain = terrain,
		})
	end

	local terrainImporter = self.props.terrainImporter
	if not terrainImporter then
		terrainImporter = TerrainImporter.new({
			terrain = terrain,
		})
	end

	local seaLevel = self.props.seaLevel
	if not seaLevel then
		seaLevel = TerrainSeaLevel.new({
			terrain = terrain,
		})
	end

	local partConverter = self.props.partConverter
	if not partConverter then
		partConverter = PartConverter.new({
			terrain = terrain,
			localization = localization,
		})
	end

	return Roact.createElement(ServiceWrapper, {
		localization = localization,
		plugin = pluginInstance,
		store = store,
		theme = theme,
		terrain = terrain,
		pluginActivationController = pluginActivationController,
		-- TODO: Remove terrainBrush when removing FFlagTerrainToolsTerrainBrushNotSingleton
		terrainBrush = terrainBrush,
		terrainGeneration = terrainGeneration,
		terrainImporter = terrainImporter,
		seaLevel = seaLevel,
		partConverter = partConverter,
	}, self.props[Roact.Children])
end

return MockServiceWrapper
