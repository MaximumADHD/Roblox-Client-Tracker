-- 24RightAngles
local Plugin = script.Parent.Parent.Parent.Parent

local coreGui = game:GetService('CoreGui')
local ChangeHistoryService = game:GetService('ChangeHistoryService')
local AnalyticsService = game:GetService("RbxAnalyticsService")
local StudioService = game:GetService("StudioService")
local UserInputService = game:GetService("UserInputService")

local ProgressFrame = require(script.Parent.ProgressFrame)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")

local supportedFileType = {"png"}
local terrain

local mouse = nil
local pluginGui	= nil
local screenGui = nil

local kProgressSignal = nil
local kProgressFrameObj = nil
local kProgressFrame = nil

local onImportStartActiveButton

local posHasError = {}
local sizeHasError = {}

local kSize = Vector3.new()
local kPos = Vector3.new()
local kUseColorMap = false
local kHeightMapUrl = nil
local kColorMapUrl = nil

local kGenerating = false

module = {}
module.Init = function (toolName, theMouse)
	mouse = theMouse

	if toolName == ToolId.Clear then
		module.clearTerrain()
	end
	module.FirstTimeSetup()
end

module.ChangeProperties = function (vals)
	kPos = vals.position
	kSize = vals.size
	kUseColorMap = vals.useColorMap
	kHeightMapUrl = vals.heightMapUrl
	kColorMapUrl = vals.colorMapUrl
end

module.FirstTimeSetup = function()
	if not kScreenGui then
		kScreenGui = Instance.new("ScreenGui")
		kScreenGui.Name = "TerrainBrushGui"

		kProgressFrameObj = ProgressFrame.new()
		kProgressFrameObj:GetPauseButton().Visible = false
		kProgressFrameObj:GetCancelButton().Visible = false
		kProgressFrame = kProgressFrameObj:GetFrame()
		kProgressFrame.Parent = kScreenGui
	end

	if kProgressSignal then
		kProgressSignal:Disconnect()
		kProgressSignal = nil
	end

	terrain = workspace.Terrain
	kProgressSignal = terrain.TerrainProgressUpdate:connect(function(completionPercent)
		if completionPercent < 1 then
			kProgressFrame.Visible = true
			kProgressFrameObj:GetFill().Size = UDim2.new(completionPercent,0,1,0)
		else
			kProgressFrame.Visible = false
			assert(onImportStartActiveButton ~= nil, "missing onImportStartActiveButton callback")
			onImportStartActiveButton(true)
		end
	end)
end

module.SetImportButtonStateFunc = function(callback)
	onImportStartActiveButton = callback
end

module.ImportTerrain = function(localization)
	if tonumber(game.GameId) == 0 then
		warn(localization:getText("Warning", "RequirePublishedForImport"))
		return
	end

	if not kHeightMapUrl then
		warn(localization:getText("Warning", "ValidHeightMapImport"))
		return
	end

	if posHasError[1] or posHasError[2] or posHasError[3] then
		warn(localization:getText("Warning", "InvalidPosition"))
		return
	end

	if sizeHasError[1] or sizeHasError[2] or sizeHasError[3] then
		warn(localization:getText("Warning", "InvalidSize"))
		return
	end

	terrain = workspace.Terrain
	if not kGenerating then
		if onImportStartActiveButton then
			onImportStartActiveButton(false)
		end
		kGenerating = true
		kScreenGui.Parent = coreGui
		-- center represents the center of the bottom plane
		local center = kPos or Vector3.new(0, 0, 0)
		center = center + Vector3.new(0, kSize.Y/2, 0)

		if kSize then
			-- expect Studs
			local offset = kSize / 2
			local regionStart = (center - offset)
			local regionEnd = (center + offset)
			local region = Region3.new(regionStart, regionEnd)
			region = region:ExpandToGrid(4)

			local status, err = pcall(function()
				local heightUrl = kHeightMapUrl
				local colorUrl = nil
				if kUseColorMap then
					colorUrl = kColorMapUrl
				end
				terrain:ImportHeightMap(heightUrl, colorUrl, region)
			end)

			if FFlagTerrainToolMetrics then
				AnalyticsService:SendEventDeferred("studio", "TerrainEditorV2", "ImportTerrain", {
					userId = StudioService:GetUserId(),
					regionDims = string.format("%d,%d,%d)", region.Size.x, region.Size.y, region.Size.z),
					useColorMap = binary2 ~= nil,
				})
			end

			if not status then
				warn(err)
			end
		else
			warn(WARN_SIZE_REQUIRED)
		end

		kGenerating = false
	end
end

module.On = function(theTool)
	screenGui.Parent = coreGui
	terrainImporterFrame.Visible = true
	on = true
end

module.Off = function()
	on = false
	screenGui.Parent = nil
	terrainImporterFrame.Visible = false
end

return module
