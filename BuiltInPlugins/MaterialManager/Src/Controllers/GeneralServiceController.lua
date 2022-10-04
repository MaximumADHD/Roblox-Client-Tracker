local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextItem = Framework.ContextServices.ContextItem

local Util = Plugin.Src.Util
local ApplyToBasePart = require(Util.ApplyToBasePart)
local ApplyToInstances = require(Util.ApplyToInstances)
local GenerateMaterialName = require(Util.GenerateMaterialName)
local GenerateTerrainDetailName = require(Util.GenerateTerrainDetailName)
local getNumberIdFromURL = require(Util.getNumberIdFromURL)

local Constants = Plugin.Src.Resources.Constants
local getMaterialName = require(Constants.getMaterialName)
local getMaterialPatternName = require(Constants.getMaterialPatternName)
local getErrorTypes = require(Constants.getErrorTypes)
local ErrorTypes = getErrorTypes()

local getFFlagDevFrameworkAssetManagerServiceToMock = require(
	Plugin.Src.Flags.getFFlagDevFrameworkAssetManagerServiceToMock
)

local GeneralServiceController = ContextItem:extend("GeneralServiceController")

function GeneralServiceController.new(mock: boolean?)
	local self = setmetatable({
		_changeHistoryService = ServiceWrapper.new("ChangeHistoryService", mock),
		_insertService = ServiceWrapper.new("InsertService", mock),
		_selection = ServiceWrapper.new("Selection", mock),
		_assetManagerService = ServiceWrapper.new("AssetManagerService", mock),
		_materialService = ServiceWrapper.new("MaterialService", mock),
		_studioService = ServiceWrapper.new("StudioService", mock),
		_marketplaceService = ServiceWrapper.new("MarketplaceService", mock),

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
	self._assetManagerService:destroy()
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
	self._changeHistoryService
		:asService()
		:SetWaypoint("Set BaseMaterial for Material Variant to" .. getMaterialName(baseMaterial))
end

function GeneralServiceController:setTextureMap(materialVariant: any, textureMap: string, assetId: string)
	materialVariant[textureMap] = assetId
	self._changeHistoryService:asService():SetWaypoint("Set" .. textureMap .. "for Material Variant to" .. assetId)
end

function GeneralServiceController:importFile()
	local formats = { "png", "jpg", "jpeg" }
	local file

	local success, _err = pcall(function()
		file = self._studioService:asService():PromptImportFile(formats)
	end)

	return success, file
end

function GeneralServiceController:insertAssetId(assetId: string, fileName: string)
	local assetIdNumber = tonumber(assetId:match("://(%d+)"))
	if assetIdNumber then
		fileName = fileName:match('[^.]+')
		local prefix = "Images/"
		if fileName:sub(1, #prefix) ~= prefix then
			fileName = prefix .. fileName
		end

		-- Replace assetId with the same name : Delete if exists and Create new one
		pcall(function()
			self._assetManagerService:asService():DeleteAlias(fileName)
		end)
		local success = pcall(function()
			self._assetManagerService:asService():CreateAlias(Enum.AssetType.Image.Value, assetIdNumber, fileName)
		end)
		return success
	else
		return false
	end
end

function GeneralServiceController:uploadTextureMap(
	pbrMaterial: any, 
	textureMap: string, 
	assetHandler: any, 
	file: File, 
	setUploading: (boolean) -> (),
	updateTextureMap: (string, string, string?) -> ()
)
	local _promise = assetHandler
		:handleAssetAsync(file, setUploading)
		:andThen(function(assetId)
			local success = self:insertAssetId(assetId, file.Name)
			local error
			if not success then
				error = ErrorTypes.FailedToInsertAssetManager
			end
			updateTextureMap(assetId, "uploadTextureMapSuccess", error)
		end)
		:catch(function(err)
			warn("Error uploading asset, responseCode " .. tostring(err.responseCode))
			if not err or not err.responseCode or err.responseCode == -1 then
				updateTextureMap("", "uploadTextureMapFromFileError", ErrorTypes.FailedToUploadTooLarge)
			else
				updateTextureMap("", "uploadTextureMapGeneralError", ErrorTypes.FailedToUploadFromFileMap)
			end
		end)
end

function GeneralServiceController:setTextureMapFromFile(
	pbrMaterial: any,
	textureMap: string,
	assetHandler: any,
	setUploading: (boolean) -> (),
	setImportAsset: (File?, string?) -> (),
	deprecatedUploadTextureMap: (file: File) -> (),
	updateTextureMap: (string, string, string?) -> ()
)
	updateTextureMap("", "importTextureMap", nil)
	
	local success, file = self:importFile()
	if success then
		if file then
			local tempId = file:GetTemporaryId()
			if getFFlagDevFrameworkAssetManagerServiceToMock() then
				self:uploadTextureMap(
					pbrMaterial,
					textureMap,
					assetHandler, 
					file, 
					setUploading,
					updateTextureMap
				)
			else
				deprecatedUploadTextureMap(file)
			end
			setImportAsset(file, tempId)
		end
	else
		updateTextureMap("", "importTextureMapError", ErrorTypes.FailedToImportMap)
	end
end

function GeneralServiceController:setTextureMapFromURL(
	pbrMaterial: any, 
	textureMap: string, 
	searchUrl: string, 
	checkIsMounted: () -> (),
	updateTextureMap: (string, string, string?) -> ()
)
	updateTextureMap("", "uploadAssetIdTextureMap", nil)

	local numericId = getNumberIdFromURL(searchUrl)
	if not numericId then
		updateTextureMap("", "uploadFromURLTextureMapError", ErrorTypes.FailedUrl)
		return
	end

	local assetInfo
	spawn(function()
		if not checkIsMounted() then
			return
		end

		local success, _ = pcall(function()
			assetInfo = self._marketplaceService:asService():GetProductInfo(numericId)
		end)

		if not checkIsMounted() then
			return
		end

		if not success or not assetInfo or (assetInfo.AssetTypeId ~= Enum.AssetType.Image.Value) then
			updateTextureMap("", "uploadFromURLTextureMapError", ErrorTypes.FailedUrl)
			return
		end
		local assetId = "rbxassetid://" .. tostring(numericId)
		self:setTextureMap(pbrMaterial, textureMap, assetId)
	end)
end

function GeneralServiceController:setStudsPerTile(materialVariant: MaterialVariant, studsPerTile: number)
	materialVariant.StudsPerTile = studsPerTile
	self._changeHistoryService:asService():SetWaypoint("Set StudsPerTile for Material Variant to" .. studsPerTile)
end

function GeneralServiceController:setMaterialPattern(
	materialVariant: MaterialVariant,
	materialPattern: Enum.MaterialPattern
)
	materialVariant.MaterialPattern = materialPattern
	self._changeHistoryService
		:asService()
		:SetWaypoint("Set MaterialPattern for Material Variant to" .. getMaterialPatternName(materialPattern))
end

function GeneralServiceController:setTerrainDetailName(terrainDetail: TerrainDetail, name: string)
	terrainDetail.Name = name
	self._changeHistoryService:asService():SetWaypoint("Set Name for Terrain Detail to" .. name)
end

-- Remove with FFlagMaterialManagerVariantCreatorOverhaul
function GeneralServiceController:saveMaterialVariant(instance: Instance)
	self._changeHistoryService:asService():SetWaypoint("Save Material Variant" .. instance.Name)
end

function GeneralServiceController:createMaterialVariant(baseMaterial: Enum.Material?, search: string?)
	self._changeHistoryService:asService():SetWaypoint("Create new Material Variant")
	local materialVariant = Instance.new("MaterialVariant")
	local generativeName = if search and search ~= "" then search else "MaterialVariant"
	local generativeMaterial = baseMaterial or Enum.Material.Plastic
	local generatedSuffix = GenerateMaterialName(self._materialService:asInstance(), generativeMaterial, generativeName)
	materialVariant.Name = if generatedSuffix then generativeName .. generatedSuffix else generativeName
	materialVariant.BaseMaterial = generativeMaterial
	materialVariant.StudsPerTile = 10
	materialVariant.Parent = game:GetService("MaterialService")

	return materialVariant
end

function GeneralServiceController:createTerrainDetail(materialVariant: MaterialVariant, face: string)
	local terrainDetail = Instance.new("TerrainDetail")
	local generativeName = "TerrainDetail"
	terrainDetail.Face = face
	terrainDetail.Name = generativeName .. GenerateTerrainDetailName(materialVariant, generativeName)
	terrainDetail.Parent = materialVariant

	self._changeHistoryService:asService():SetWaypoint("Create new Terrain Detail to" .. terrainDetail.Name)
	return terrainDetail
end

return GeneralServiceController
