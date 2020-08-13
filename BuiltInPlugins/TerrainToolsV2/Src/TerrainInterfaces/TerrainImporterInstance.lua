local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextItem = FFlagTerrainToolsUseDevFramework and require(Framework.ContextServices.ContextItem) or nil
local Provider = FFlagTerrainToolsUseDevFramework and require(Framework.ContextServices.Provider) or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and require(Framework.Util) or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local Constants = require(Plugin.Src.Util.Constants)

local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")

local function validateImportSettingsOrWarn(importSettings, localization)
	if tonumber(game.GameId) == 0 then
		warn(localization:getText("Warning", "RequirePublishedForImport"))
		return false
	end

	if type(importSettings.heightMapUrl) ~= "string" or importSettings.heightMapUrl == "" then
		warn(localization:getText("Warning", "ValidHeightMapImport"))
		return false
	end

	return true
end

local TerrainImporter
if FFlagTerrainToolsUseDevFramework then
	TerrainImporter = ContextItem:extend("TerrainImporter")
else
	TerrainImporter = {}
	TerrainImporter.__index = TerrainImporter
end

function TerrainImporter.new(options)
	assert(options and type(options) == "table", "TerrainImporter requires an options table")

	local self = setmetatable({
		_terrain = options.terrain,
		_localization = options.localization,
		_analytics = options.analytics,

		_importSettings = {
			position = Vector3.new(0, 0, 0),
			size = Vector3.new(0, 0, 0),
			useColorMap = true,
			heightMapUrl = "",
			colorMapUrl = "",
		},

		_importing = false,
		_importProgress = 0,

		_importingStateChanged = Signal.new(),
		_importProgressChanged = Signal.new(),
	}, TerrainImporter)

	assert(self._terrain, "TerrainImporter.new() requires a terrain instance")

	self._updateImportProgress = function(completionPercent)
		self._importProgress = completionPercent
		self._importProgressChanged:Fire(completionPercent)
		if completionPercent >= 1 then
			self:_setImporting(false)
		end
	end

	self._terrainProgressUpdateConnection = self._terrain.TerrainProgressUpdate:Connect(self._updateImportProgress)

	return self
end

if FFlagTerrainToolsUseDevFramework then
	function TerrainImporter:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, {root})
	end
end

function TerrainImporter:subscribeToImportingStateChanged(...)
	return self._importingStateChanged:Connect(...)
end

function TerrainImporter:subscribeToImportProgressChanged(...)
	return self._importProgressChanged:Connect(...)
end

function TerrainImporter:getImportProgress()
	return self._importProgress
end

function TerrainImporter:isImporting()
	return self._importing
end

function TerrainImporter:destroy()
	if self._terrainProgressUpdateConnection then
		self._terrainProgressUpdateConnection:Disconnect()
		self.__terrainProgressUpdateConnection = nil
	end

	self:_setImporting(false)
end

function TerrainImporter:updateSettings(newSettings)
	self._importSettings = Cryo.Dictionary.join(self._importSettings, newSettings)
end

function TerrainImporter:_setImporting(importing)
	if importing ~= self._importing then
		self._importing = importing
		self._importingStateChanged:Fire(importing)
	end
end

function TerrainImporter:startImport()
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
		if FFlagTerrainToolsUseDevFramework then
			if self._analytics then
				self._analytics:report("importTerrain", region, heightUrl, colorUrl)
			end
		else
			AnalyticsService:SendEventDeferred("studio", "Terrain", "ImportTerrain", {
				userId = StudioService:GetUserId(),
				regionDims = ("%d,%d,%d)"):format(region.Size.x, region.Size.y, region.Size.z),
				studioSId = AnalyticsService:GetSessionId(),
				placeId = game.PlaceId,
				colorMapUrl = colorUrl,
				heightMapUrl = heightUrl
			})
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

return TerrainImporter
