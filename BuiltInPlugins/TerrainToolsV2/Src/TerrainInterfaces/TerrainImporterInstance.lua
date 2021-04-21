local FFlagTerrainToolsBetterImportTool = game:GetFastFlag("TerrainToolsBetterImportTool")
local FFlagTerrainImportSupportDefaultMaterial = game:GetFastFlag("TerrainImportSupportDefaultMaterial")
local FFlagTerrainToolsImportUploadAssets = game:GetFastFlag("TerrainToolsImportUploadAssets")
local FFlagTerrainImportUseService = game:GetFastFlag("TerrainImportUseService")
local FFlagTerrainToolsReportBetterImport = game:GetFastFlag("TerrainToolsReportBetterImport")

local Plugin = script.Parent.Parent.Parent


local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)

local ContextItem = Framework.ContextServices.ContextItem
local Provider = Framework.ContextServices.Provider

local FrameworkUtil = Framework.Util
local Signal = FrameworkUtil.Signal
local Promise = FrameworkUtil.Promise

local Constants = require(Plugin.Src.Util.Constants)
local ImportAssetHandler = require(Plugin.Src.Util.ImportAssetHandler)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ImportMaterialMode = TerrainEnums.ImportMaterialMode

local HeightmapImporterService = game:GetService("HeightmapImporterService")
-- Importing HttpService only for GenerateGUID
local HttpService = FFlagTerrainToolsReportBetterImport and game:GetService("HttpService") or nil

--[[
When FFlagTerrainToolsBetterImportTool off, logs warning and returns false
When flag on, returns `false, warningString` to be logged
]]
local function validateImportSettingsOrWarn(importSettings, DEPRECATED_localization)
	if FFlagTerrainToolsBetterImportTool then
		if not (importSettings.heightmap and importSettings.heightmap.file) then
			return false, "ValidHeightMapImport"
		end

		if FFlagTerrainImportSupportDefaultMaterial then
			if importSettings.materialMode == ImportMaterialMode.Colormap
				and not (importSettings.colormap and importSettings.colormap.file) then
				return false, "NoColormapProvided"
			end
		else
			if importSettings.useColorMap and not importSettings.colormap then
				return false, "NoColormapProvided"
			end
		end

	else
		if tonumber(game.GameId) == 0 then
			warn(DEPRECATED_localization:getText("Warning", "RequirePublishedForImport"))
			return false
		end

		if type(importSettings.heightMapUrl) ~= "string" or importSettings.heightMapUrl == "" then
			warn(DEPRECATED_localization:getText("Warning", "ValidHeightMapImport"))
			return false
		end
	end

	return true
end

local TerrainImporter = ContextItem:extend("TerrainImporter")

function TerrainImporter.new(options)
	assert(options and type(options) == "table", "TerrainImporter requires an options table")

	local self = setmetatable({
		_terrain = not FFlagTerrainImportUseService and options.terrain or nil,
		_localization = options.localization,
		_analytics = options.analytics,
		_assetHandler = (FFlagTerrainToolsBetterImportTool and FFlagTerrainToolsImportUploadAssets)
			and ImportAssetHandler.new(options.imageUploader)
			or nil,
		_heightmapImporterService = FFlagTerrainImportUseService
			and (options.heightmapImporterService or HeightmapImporterService)
			or nil,

		_importSettings = {
			position = Vector3.new(0, 0, 0),
			size = Vector3.new(0, 0, 0),

			-- TODO: Remove with FFlagTerrainImportSupportDefaultMaterial
			useColorMap = not FFlagTerrainToolsBetterImportTool, -- Default to false when flag on

			-- TODO: Remove with FFlagTerrainToolsBetterImportTool
			heightMapUrl = "",
			colorMapUrl = "",

			heightmap = nil,
			colormap = nil,
			defaultMaterial = Enum.Material.Asphalt,
			materialMode = ImportMaterialMode.DefaultMaterial,
		},

		_importing = false,
		_importProgress = 0,
		_importOperation = "",

		_isPaused = false,
		_hasPixelWarning = false,

		_updateSignal = Signal.new(),
		_errorSignal = Signal.new(),
		_importFinishSignal = Signal.new(),

	}, TerrainImporter)

	if FFlagTerrainImportUseService then
		assert(self._heightmapImporterService, "TerrainImporter.new() requires a HeightmapImporterService")
	else
		assert(self._terrain, "TerrainImporter.new() requires a terrain instance")
	end

	-- move into _importSettings when removing FFlagTerrainToolsBetterImportTool
	if FFlagTerrainToolsImportUploadAssets then
		self._importSettings.guid = nil
	end

	self._updateImportProgress = function(completionPercent, operation)
		self._importProgress = completionPercent
		self._importOperation = operation
		self._updateSignal:Fire()
		if not FFlagTerrainToolsBetterImportTool then
			if completionPercent >= 1 then
				self:_setImporting(false)
			end
		end
	end

	if FFlagTerrainImportUseService then
		self._terrainProgressUpdateConnection = self._heightmapImporterService.ProgressUpdate:Connect(
			self._updateImportProgress)
	else
		self._terrainProgressUpdateConnection = self._terrain.TerrainProgressUpdate:Connect(self._updateImportProgress)
	end

	if FFlagTerrainImportUseService then
		self._heightmapImporterService.ColormapHasUnknownPixels:Connect(function()
			self._hasPixelWarning = true
		end)
	end

	return self
end

function TerrainImporter:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
		UpdateSignal = self._updateSignal,
	}, {root})
end

function TerrainImporter:subscribeToImportFinish(callback)
	return self._importFinishSignal:Connect(callback)
end

function TerrainImporter:subscribeToErrors(callback)
	return self._errorSignal:Connect(callback)
end

function TerrainImporter:getHasPixelWarning()
	return self._hasPixelWarning
end

function TerrainImporter:clearHasPixelWarning()
	self._hasPixelWarning = false
end

function TerrainImporter:getImportProgress()
	return self._importProgress
end

function TerrainImporter:getImportOperation()
	return self._importOperation
end

function TerrainImporter:isImporting()
	return self._importing
end

function TerrainImporter:isPaused()
	return self._isPaused
end

function TerrainImporter:destroy()
	if not FFlagTerrainToolsBetterImportTool then
		if self._terrainProgressUpdateConnection then
			self._terrainProgressUpdateConnection:Disconnect()
			self.__terrainProgressUpdateConnection = nil
		end
	end

	self:_setImporting(false)

	self._heightmapImporterService = nil
	self._terrain = nil
	self._localization = nil
	self._analytics = nil
	self._imageUploader = nil
end

function TerrainImporter:updateSettings(newSettings)
	self._importSettings = Cryo.Dictionary.join(self._importSettings, newSettings)
end

function TerrainImporter:_setImporting(importing)
	if importing ~= self._importing then
		self._importing = importing
		self._isPaused = false
		self._updateSignal:Fire()
	end
end

function TerrainImporter:togglePause()
	self._isPaused = not self._isPaused
	if FFlagTerrainImportUseService then
		self._heightmapImporterService:SetImportHeightmapPaused(self._isPaused)
	else
		self._terrain:SetImportHeightmapPaused(self._isPaused)
	end
	self._updateSignal:Fire()
end

function TerrainImporter:cancel()
	if FFlagTerrainImportUseService then
		self._heightmapImporterService:CancelImportHeightmap()
	else
		self._terrain:CancelImportHeightmap()
	end
	self._hasPixelWarning = false
end

function TerrainImporter:DEPRECATED_startImport()
	if self._importing then
		return
	end

	if not validateImportSettingsOrWarn(self._importSettings, self._localization) then
		return
	end

	self._updateImportProgress(0, "")
	self:_setImporting(true)

	local size = self._importSettings.size
	local center = self._importSettings.position or Vector3.new(0, 0, 0)
	center = center + Vector3.new(0, size.Y / 2, 0)

	local offset = size / 2
	local regionStart = center - offset
	local regionEnd = center + offset
	local region = Region3.new(regionStart, regionEnd):ExpandToGrid(Constants.VOXEL_RESOLUTION)

	local heightUrl = self._importSettings.heightMapUrl
	local useColorMap = self._importSettings.useColorMap
	local colorUrl = ""
	if useColorMap then
		colorUrl = self._importSettings.colorMapUrl
	end

	-- Wrap the call to ImportHeightMap in spawn()
	-- ImportHeightMap does still block this thread whilst preprocessing
	-- But the spawn() allows us to show the progress dialog before the preprocessing starts
	-- So then the user at least gets some feedback that the operation has started other than studio freezing
	spawn(function()
		if self._analytics then
			self._analytics:report("importTerrain", region, heightUrl, colorUrl)
		end

		local status, err = pcall(function()
			self._terrain:ImportHeightmap(region, heightUrl, colorUrl, self._importSettings.defaultMaterial)
		end)

		if status then
			-- Import finished successfully
			self._updateImportProgress(1, "")
			self:_setImporting(false)

		elseif not status then
			warn(self._localization:getText("Warning", "ImportError", err))

			-- Force the import to appear as completed
			-- Otherwise the UI wouldn't update as TerrainProgressUpdate won't fire
			self._updateImportProgress(1, "")
			self:_setImporting(false)
		end
	end)
end

-- Note when FFlagTerrainImportUseService is false, heightmapImporterService is actually the Terrain instance
local function doImport(heightmapImporterService, importSettings, updateProgress, localization, analytics, assetHandler)
	-- Copy the settings we're using in case they change during the import
	importSettings = Cryo.Dictionary.join(importSettings, {})

	return Promise.new(function(resolve, reject)
		local success, err = validateImportSettingsOrWarn(importSettings)
		if not success then
			reject(localization:getText("Warning", err))
			return
		end

		local size = importSettings.size
		local center = importSettings.position or Vector3.new(0, 0, 0)
		center = center + Vector3.new(0, size.Y / 2, 0)

		local offset = size / 2
		local regionStart = center - offset
		local regionEnd = center + offset
		local region = Region3.new(regionStart, regionEnd):ExpandToGrid(Constants.VOXEL_RESOLUTION)

		local heightmapUrl = importSettings.heightmap.file:GetTemporaryId()

		local materialMode = importSettings.materialMode
		local colormapUrl = ""
		local defaultMaterial = Enum.Material.Asphalt

		if FFlagTerrainImportSupportDefaultMaterial then
			if materialMode == ImportMaterialMode.DefaultMaterial then
				defaultMaterial = importSettings.defaultMaterial
			elseif materialMode == ImportMaterialMode.Colormap then
				colormapUrl = importSettings.colormap.file:GetTemporaryId()
			end
		else
			if importSettings.useColorMap then
				colormapUrl = importSettings.colormap.file:GetTemporaryId()
			end
		end

		if analytics then
			if FFlagTerrainToolsReportBetterImport then
				local material = "Colormap"
				local colormapData = {}
				if (materialMode == ImportMaterialMode.DefaultMaterial) then
					material =  importSettings.defaultMaterial.Name
				else
					colormapData = {
						width = importSettings.colormap.width,
						height = importSettings.colormap.height,
						channels = importSettings.colormap.channels,
					}
				end

				local heightmapData = {
					width = importSettings.heightmap.width,
					height = importSettings.heightmap.height,
					channels = importSettings.heightmap.channels,
				}

				analytics:report("importTerrainLocal", region, material, heightmapData, colormapData, importSettings.guid)

			else
				analytics:report("importTerrain", region, heightmapUrl, colormapUrl)
			end
		end

		if FFlagTerrainToolsImportUploadAssets then
			-- Spawn this before calling ImportHeightmap() as that blocks until the import has entirely finished
			spawn(function()
				assetHandler:handleAsset(importSettings.heightmap.file, region,
					importSettings.guid and function(assetId)
						analytics:report("importTerrainLocalHeightMap", assetId, importSettings.guid)
					end or nil)

				local handleColormap
				if FFlagTerrainImportSupportDefaultMaterial then
					handleColormap = materialMode == ImportMaterialMode.Colormap and importSettings.colormap.file
				else
					handleColormap = importSettings.useColorMap
				end
				if handleColormap then
					assetHandler:handleAsset(importSettings.colormap.file, region,
						importSettings.guid and function(assetId)
							analytics:report("importTerrainLocalColorMap", assetId, importSettings.guid)
						end or nil)
				end
			end)
		end

		success, err = pcall(function()
			heightmapImporterService:ImportHeightmap(region, heightmapUrl, colormapUrl, defaultMaterial)
		end)

		if not success then
			reject(err)
			return
		end

		resolve()
	end)
end

function TerrainImporter:startImport()
	if not FFlagTerrainToolsBetterImportTool then
		self:DEPRECATED_startImport()
		return
	end

	if self._importing then
		return
	end

	if FFlagTerrainToolsReportBetterImport and FFlagTerrainToolsImportUploadAssets then
		self:updateSettings({
			guid = HttpService:GenerateGUID(),
		})
	end

	local function beginImport()
		self._hasPixelWarning = false
		self._updateImportProgress(0, "Starting")
		self:_setImporting(true)
	end

	local function finishImport()
		self._updateImportProgress(1, "")
		self:_setImporting(false)
		self._importFinishSignal:Fire()
	end

	local function handleFailure(message)
		self._errorSignal:Fire(message)
	end

	beginImport()
	local importObject = FFlagTerrainImportUseService and self._heightmapImporterService or self._terrain
	doImport(importObject, self._importSettings, self._updateImportProgress,
		self._localization, self._analytics, self._assetHandler)
		:catch(handleFailure)
		:await()
	finishImport()
end

return TerrainImporter
