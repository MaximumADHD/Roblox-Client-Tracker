local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Symbol = require(Plugin.Src.Util.Symbol)

local PluginActivationControllerKey = Symbol.named("PluginActivationController")

local TerrainBrushKey = Symbol.named("TerrainBrush")
local SeaLevelKey = Symbol.named("SeaLevelKey")
local TerrainImporterKey = Symbol.named("TerrainImporter")
local TerrainGenerationKey = Symbol.named("TerrainGeneration")

local FFlagTerrainToolsSeaLevel = game:GetFastFlag("TerrainToolsSeaLevel")
local FFlagTerrainToolsRefactorTerrainImporter = game:GetFastFlag("TerrainToolsRefactorTerrainImporter")
local FFlagTerrainToolsRefactorTerrainGeneration = game:GetFastFlag("TerrainToolsRefactorTerrainGeneration")

local TerrainInterfaceProvider = Roact.PureComponent:extend("TerrainInterfaceProvider")

function TerrainInterfaceProvider:init()
	local pluginActivationController = self.props.pluginActivationController
	assert(pluginActivationController, "TerrainInterfaceProvider expects a PluginActivationController")
	self._context[PluginActivationControllerKey] = pluginActivationController

	local terrainBrush = self.props.terrainBrush
	assert(terrainBrush, "TerrainInterfaceProvider expects a TerrainBrush")
	self._context[TerrainBrushKey] = terrainBrush

	if FFlagTerrainToolsRefactorTerrainImporter then
		local terrainImporter = self.props.terrainImporter
		assert(terrainImporter, "TerrainInterfaceProvider expects a TerrainImporter")
		self._context[TerrainImporterKey] = terrainImporter
	end

	if FFlagTerrainToolsRefactorTerrainGeneration then
		local terrainGeneration = self.props.terrainGeneration
		assert(terrainGeneration, "TerrainInterfaceProvider expects a TerrainGeneration")
		self._context[TerrainGenerationKey] = terrainGeneration
	end

	if FFlagTerrainToolsSeaLevel then
		local seaLevel = self.props.seaLevel
		assert(seaLevel, "TerrainInterfaceProvider expects a TerrainSeaLevel Instance")
		self._context[SeaLevelKey] = seaLevel
	end
end

function TerrainInterfaceProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local function getPluginActivationController(component)
	return component._context[PluginActivationControllerKey]
end

local function getTerrainBrush(component)
	return component._context[TerrainBrushKey]
end

local function getSeaLevel(component)
	return component._context[SeaLevelKey]
end

local function getTerrainImporter(component)
	return component._context[TerrainImporterKey]
end

local function getTerrainGeneration(component)
	return component._context[TerrainGenerationKey]
end

return {
	Provider = TerrainInterfaceProvider,
	getPluginActivationController = getPluginActivationController,
	getTerrainBrush = getTerrainBrush,
	getSeaLevel = getSeaLevel,
	getTerrainImporter = getTerrainImporter,
	getTerrainGeneration = getTerrainGeneration,
}
