local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Symbol = require(Plugin.Src.Util.Symbol)

local PluginActivationControllerKey = Symbol.named("PluginActivationController")

local TerrainKey = Symbol.named("Terrain")
local TerrainBrushKey = Symbol.named("TerrainBrush")
local ReplaceKey = Symbol.named("ReplaceKey")
local TerrainImporterKey = Symbol.named("TerrainImporter")
local TerrainGenerationKey = Symbol.named("TerrainGeneration")
local PartConverterKey = Symbol.named("PartConverter")

local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainToolsTerrainBrushNotSingleton = game:GetFastFlag("TerrainToolsTerrainBrushNotSingleton")

local TerrainInterfaceProvider = Roact.PureComponent:extend("TerrainInterfaceProvider")

function TerrainInterfaceProvider:init()
	local terrain = self.props.terrain
	assert(terrain, "TerrainInterfaceProvider expects a Terrain instance")
	self._context[TerrainKey] = terrain

	local pluginActivationController = self.props.pluginActivationController
	assert(pluginActivationController, "TerrainInterfaceProvider expects a PluginActivationController")
	self._context[PluginActivationControllerKey] = pluginActivationController

	if not FFlagTerrainToolsTerrainBrushNotSingleton then
		local terrainBrush = self.props.terrainBrush
		assert(terrainBrush, "TerrainInterfaceProvider expects a TerrainBrush")
		self._context[TerrainBrushKey] = terrainBrush
	end

	local terrainImporter = self.props.terrainImporter
	assert(terrainImporter, "TerrainInterfaceProvider expects a TerrainImporter")
	self._context[TerrainImporterKey] = terrainImporter

	local terrainGeneration = self.props.terrainGeneration
	assert(terrainGeneration, "TerrainInterfaceProvider expects a TerrainGeneration")
	self._context[TerrainGenerationKey] = terrainGeneration

	local seaLevel = self.props.seaLevel
	assert(seaLevel, "TerrainInterfaceProvider expects a TerrainSeaLevel Instance")
	self._context[ReplaceKey] = seaLevel

	if FFlagTerrainToolsConvertPartTool then
		local partConverter = self.props.partConverter
		assert(partConverter, "TerrainInterfaceProvider expects a PartConverter instance")
		self._context[PartConverterKey] = partConverter
	end
end

function TerrainInterfaceProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local function getTerrain(component)
	return component._context[TerrainKey]
end

local function getPluginActivationController(component)
	return component._context[PluginActivationControllerKey]
end

local function getTerrainBrush(component)
	if FFlagTerrainToolsTerrainBrushNotSingleton then
		warn("TerrainInterface.getTerrainBrush() should not be used when FFlagTerrainToolsTerrainBrushNotSingleton is true")
	end
	return component._context[TerrainBrushKey]
end

local function getSeaLevel(component)
	return component._context[ReplaceKey]
end

local function getReplace(component)
	return component._context[ReplaceKey]
end

local function getTerrainImporter(component)
	return component._context[TerrainImporterKey]
end

local function getTerrainGeneration(component)
	return component._context[TerrainGenerationKey]
end

local function getPartConverter(component)
	return component._context[PartConverterKey]
end

return {
	Provider = TerrainInterfaceProvider,
	getTerrain = getTerrain,
	getPluginActivationController = getPluginActivationController,
	getTerrainBrush = getTerrainBrush,
	getSeaLevel = getSeaLevel,
	getReplace = getReplace,
	getTerrainImporter = getTerrainImporter,
	getTerrainGeneration = getTerrainGeneration,
	getPartConverter = getPartConverter,
}
