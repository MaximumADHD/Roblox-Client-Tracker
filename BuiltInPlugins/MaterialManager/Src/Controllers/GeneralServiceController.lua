local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextItem = Framework.ContextServices.ContextItem

local Util = Plugin.Src.Util
local ApplyToBasePart = require(Util.ApplyToBasePart)
local ApplyToInstances = require(Util.ApplyToInstances)

local Constants = Plugin.Src.Resources.Constants
local getMaterialName = require(Constants.getMaterialName)
local getMaterialPatternName = require(Constants.getMaterialPatternName)

local GeneralServiceController = ContextItem:extend("GeneralServiceController")

function GeneralServiceController.new(mock: boolean?)
	local self = setmetatable({
		_changeHistoryService = ServiceWrapper.new("ChangeHistoryService", mock),
		_insertService = ServiceWrapper.new("InsertService", mock),
		_selection = ServiceWrapper.new("Selection", mock),

		_loadedFiles = {},
		_mock = mock,
	}, GeneralServiceController)

	return self
end

function GeneralServiceController.mock()
	return GeneralServiceController.new(true)
end

function GeneralServiceController:destroy()
	self._changeHistoryService:destroy()
	self._insertService:destroy()
end

function GeneralServiceController:destroyWithUndo(instance: Instance)
	instance.Parent = nil
	self._changeHistoryService:asService():SetWaypoint("Deleted " .. instance.Name)
end

function GeneralServiceController:LoadLocalAsset(asset: string)
	if self._mock then
		local model = Instance.new("Model")
		local meshPart = Instance.new("MeshPart")

		meshPart.Parent = model
		return model
	end

	if not self._loadedFiles[asset] then
		self._loadedFiles[asset] = self._insertService:asService():LoadLocalAsset(asset)
	end

	return self._loadedFiles[asset]
end

function GeneralServiceController:SetSelection(selection: {})
	self._selection:asService():Set(selection)
end

function GeneralServiceController:ApplyToBasePart(
	target: Instance,
	baseMaterial: Enum.Material,
	materialVariant: string?
)
	ApplyToBasePart(target, baseMaterial, materialVariant)
	self._changeHistoryService:asService():SetWaypoint("Applied Material to BasePart")
end

function GeneralServiceController:ApplyToSelection(baseMaterial: Enum.Material, materialVariant: string?)
	local instances = self._selection:asService():Get()
	ApplyToInstances(instances, baseMaterial, materialVariant)
	self._changeHistoryService:asService():SetWaypoint("Applied Material to Selection")
end

function GeneralServiceController:setName(materialVariant: MaterialVariant, name: string)
	materialVariant.Name = name
	self._changeHistoryService:asService():SetWaypoint("Set Name for Material Variant to" .. name)
end

function GeneralServiceController:setBaseMaterial(materialVariant: MaterialVariant, baseMaterial: Enum.Material)
	materialVariant.BaseMaterial = baseMaterial
	self._changeHistoryService:asService():SetWaypoint("Set BaseMaterial for Material Variant to" .. getMaterialName(baseMaterial))
end

function GeneralServiceController:setTextureMap(materialVariant: any, textureMap: string, assetId: string)
	materialVariant[textureMap] = assetId
	self._changeHistoryService:asService():SetWaypoint("Set" .. textureMap .. "for Material Variant to" .. assetId)
end

function GeneralServiceController:setStudsPerTile(materialVariant: MaterialVariant, studsPerTile: number)
	materialVariant.StudsPerTile = studsPerTile
	self._changeHistoryService:asService():SetWaypoint("Set StudsPerTile for Material Variant to" .. studsPerTile)
end

function GeneralServiceController:setMaterialPattern(materialVariant: MaterialVariant, materialPattern: Enum.MaterialPattern)
	materialVariant.MaterialPattern = materialPattern
	self._changeHistoryService:asService():SetWaypoint("Set MaterialPattern for Material Variant to" .. getMaterialPatternName(materialPattern))
end

function GeneralServiceController:setTerrainDetailName(terrainDetail: TerrainDetail, name: string)
	terrainDetail.Name = name
	self._changeHistoryService:asService():SetWaypoint("Set Name for Terrain Detail to" .. name)
end

-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
function GeneralServiceController:saveMaterialVariant(instance: Instance)
	self._changeHistoryService:asService():SetWaypoint("Save Material Variant" .. instance.Name)
end

return GeneralServiceController
