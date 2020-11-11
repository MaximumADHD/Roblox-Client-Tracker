local FFlagTerrainToolsBetterImportTool = game:GetFastFlag("TerrainToolsBetterImportTool")

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

--[[
When FFlagTerrainToolsBetterImportTool off, logs warning and returns false
When flag on, returns `false, warningString` to be logged
]]
local function validateImportSettingsOrWarn(importSettings, DEPRECATED_localization)
	if FFlagTerrainToolsBetterImportTool then
		if not importSettings.heightmap then
			return false, "ValidHeightMapImport"
		end

		-- TODO: Check colormap

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
		_terrain = options.terrain,
		_localization = options.localization,
		_analytics = options.analytics,
		_assetHandler = FFlagTerrainToolsBetterImportTool and ImportAssetHandler.new(options.imageUploader) or nil,

		_importSettings = {
			position = Vector3.new(0, 0, 0),
			size = Vector3.new(0, 0, 0),
			useColorMap = not FFlagTerrainToolsBetterImportTool, -- Default to false when flag on

			-- TODO: Remove with FFlagTerrainToolsBetterImportTool
			heightMapUrl = "",
			colorMapUrl = "",

			heightmap = nil,
			colormap = nil,
		},

		_importing = false,
		_importProgress = 0,

		_updateSignal = Signal.new(),

	}, TerrainImporter)

	assert(self._terrain, "TerrainImporter.new() requires a terrain instance")

	self._updateImportProgress = function(completionPercent)
		self._importProgress = completionPercent
		self._updateSignal:Fire()
		if not FFlagTerrainToolsBetterImportTool then
			if completionPercent >= 1 then
				self:_setImporting(false)
			end
		end
	end

	if not FFlagTerrainToolsBetterImportTool then
		self._terrainProgressUpdateConnection = self._terrain.TerrainProgressUpdate:Connect(self._updateImportProgress)
	end

	return self
end

function TerrainImporter:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
		UpdateSignal = self._updateSignal,
	}, {root})
end

function TerrainImporter:getImportProgress()
	return self._importProgress
end

function TerrainImporter:isImporting()
	return self._importing
end

function TerrainImporter:destroy()
	if not FFlagTerrainToolsBetterImportTool then
		if self._terrainProgressUpdateConnection then
			self._terrainProgressUpdateConnection:Disconnect()
			self.__terrainProgressUpdateConnection = nil
		end
	end

	self:_setImporting(false)

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
		self._updateSignal:Fire()
	end
end

function TerrainImporter:DEPRECATED_startImport()
	if self._importing then
		return
	end

	if not validateImportSettingsOrWarn(self._importSettings, self._localization) then
		return
	end

	self._updateImportProgress(0)
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
	local colorUrl = nil
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
			self._terrain:ImportHeightMap(heightUrl, colorUrl, region)
		end)

		if not status then
			warn(self._localization:getText("Warning", "ImportError", err))

			-- Force the import to appear as completed
			-- Otherwise the UI wouldn't update as TerrainProgressUpdate won't fire
			self._updateImportProgress(1)
			self:_setImporting(false)
		end
	end)
end

local function doImport(terrain, importSettings, updateProgress, localization, analytics, assetHandler)
	-- Copy the settings we're using in case they change during the import
	importSettings = Cryo.Dictionary.join(importSettings, {})

	local connection

	local function cleanup(...)
		if connection then
			connection:Disconnect()
			connection = nil
		end
		return Promise.resolve(...)
	end

	-- If we reject in the promise below, we need to pass that error along for our caller to catch
	local function cleanupPassError(...)
		cleanup()
		return Promise.reject(...)
	end

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

		local heightmapUrl = importSettings.heightmap:GetTemporaryId()
		local colormapUrl
		if importSettings.useColorMap then
			colormapUrl = importSettings.colormap:GetTemporaryId()
		end

		if analytics then
			analytics:report("importTerrain", region, heightmapUrl, colormapUrl)
		end

		-- Update listeners of our progress
		-- And resolve the promise once the terrain instance tells us it has finished
		-- (progress is between 0 and 1, so treat >=1 as finished)
		connection = terrain.TerrainProgressUpdate:Connect(function(progress)
			updateProgress(progress)
			if progress >= 1 then
				resolve()
			end
		end)

		success, err = pcall(function()
			terrain:ImportHeightMap(heightmapUrl, colormapUrl, region)
		end)

		-- Import preprocessing failed
		if not success then
			reject(localization:getText("Warning", "ImportError", err))
			return
		end

		-- Import preprocessing was successful
		-- Terrain generation is running on another thread
		-- Safe to upload assets to web
		spawn(function()
			assetHandler:handleAsset(importSettings.heightmap, region)
			if importSettings.useColorMap then
				assetHandler:handleAsset(importSettings.colormap, region)
			end
		end)
	end):andThen(cleanup, cleanupPassError)
end

function TerrainImporter:startImport()
	if not FFlagTerrainToolsBetterImportTool then
		self:DEPRECATED_startImport()
		return
	end

	if self._importing then
		return
	end

	local function beginImport()
		self._updateImportProgress(0)
		self:_setImporting(true)
	end

	local function finishImport()
		self._updateImportProgress(1)
		self:_setImporting(false)
	end

	beginImport()
	doImport(self._terrain, self._importSettings, self._updateImportProgress,
		self._localization, self._analytics, self._assetHandler)
		:catch(warn) -- TODO: Better failure case handling
		:await()
	finishImport()
end

return TerrainImporter
