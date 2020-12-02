--[[
	Displays panels associated with the improved import tool
]]

local FFlagTerrainImportSupportDefaultMaterial = game:GetFastFlag("TerrainImportSupportDefaultMaterial")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local ErrorDialog = require(Plugin.Src.Components.ErrorDialog)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledToggle = require(ToolParts.LabeledToggle)
local LocalImageSelector = require(ToolParts.LocalImageSelector)
local MapSettingsWithPreviewFragment = require(ToolParts.MapSettingsWithPreviewFragment)
local Panel = require(ToolParts.Panel)
local MaterialSelector = require(ToolParts.MaterialSelector)
local ModeSelector = require(ToolParts.ModeSelector)
local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SelectColormap = require(Actions.SelectColormap)
local SelectHeightmap = require(Actions.SelectHeightmap)
local SetUseColorMap = require(Actions.SetUseColorMap)
local SetDefaultMaterial = require(Actions.SetDefaultMaterial)
local SetImportMaterialMode = require(Actions.SetImportMaterialMode)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ImportMaterialMode = TerrainEnums.ImportMaterialMode

local HeightmapImporterService = game:GetService("HeightmapImporterService")

local REDUCER_KEY = "ImportLocalTool"

local ImportLocal = Roact.PureComponent:extend(script.Name)

function ImportLocal:init()
	self.state = {
		mapSettingsValid = true,

		hasError = false,
		errorMainText = "",
		errorSubText = "",
	}

	self.onImportButtonClicked = function()
		-- TODO MOD-46, MOD-49: Handle registering asset usage and uploading local files to get real asset ids
		self.props.TerrainImporter:startImport()
	end

	self.setMapSettingsValid = function(mapSettingsValid)
		self:setState({
			mapSettingsValid = mapSettingsValid,
		})
	end

	self.onPauseRequested = function()
		self.props.TerrainImporter:togglePause()
	end

	self.onCancelRequested = function()
		self.props.TerrainImporter:cancel()
	end

	self.selectHeightmap = function(file)
		if not file then
			-- Reducers understand that nil = clear selection
			self.props.dispatchSelectHeightmap(nil)
			return
		end

		local id = file:GetTemporaryId()
		local success, status, width, height, channels, bytesPerChannel = HeightmapImporterService:IsValidHeightmap(id)

		if success then
			print(("Loaded heightmap %s with width:%d height:%d channels:%d bytesPerChannel:%d")
				:format(file.Name, width, height, channels, bytesPerChannel))
			self.props.dispatchSelectHeightmap({
				file = file,
				width = width,
				height = height,
				channels = channels,
				bytesPerChannel = bytesPerChannel,
			})
		else
			self.setErrorMessage("FailedToLoadHeightmap", status)
		end
	end

	self.selectColormap = function(file)
		if not file then
			-- Reducers understand that nil = clear selection
			self.props.dispatchSelectColormap(nil)
			return
		end

		local id = file:GetTemporaryId()
		local success, status, width, height, channels = HeightmapImporterService:IsValidColormap(id)

		if success then
			print(("Loaded colormap %s with width:%d height:%d channels:%d"):format(
				file.Name, width, height, channels))
			self.props.dispatchSelectColormap({
				file = file,
				width = width,
				height = height,
				channels = channels,
			})
		else
			self.setErrorMessage("FailedToLoadColormap", status)
		end
	end

	self.setErrorMessage = function(errorTitle, errorBody)
		if errorTitle then
			local localization = self.props.Localization:get()

			local mainText = localization:getText("ImportError", errorTitle)
			local subText = localization:getText("ImportError", errorBody)

			warn(("Import error: %s - %s"):format(errorTitle, errorBody))

			self:setState({
				hasError = true,
				errorMainText = mainText,
				errorSubText = subText,
			})
		else
			self:setState({
				hasError = false,
				errorMainText = "",
				errorSubText = "",
			})
		end
	end

	self.clearErrorMessage = function()
		self.setErrorMessage(nil)
	end
end

function ImportLocal:updateImportProps()
	local newSettings = {
		size = Vector3.new(self.props.size.X, self.props.size.Y, self.props.size.Z),
		position = Vector3.new(self.props.position.X, self.props.position.Y, self.props.position.Z),

		heightmap = self.props.heightmap or {},
		colormap = self.props.colormap or {},
	}

	if FFlagTerrainImportSupportDefaultMaterial then
		newSettings.materialMode = self.props.materialMode
		newSettings.defaultMaterial = self.props.defaultMaterial
	else
		newSettings.useColorMap = self.props.useColorMap
	end

	self.props.TerrainImporter:updateSettings(newSettings)
end

function ImportLocal:didMount()
	self:updateImportProps()

	self._onImportErrorConnection = self.props.TerrainImporter:subscribeToErrors(function(message)
		self.setErrorMessage("ImportFailed", message)
	end)
end

function ImportLocal:didUpdate()
	self:updateImportProps()
end

function ImportLocal:willUnmount()
	if self._onImportErrorConnection then
		self._onImportErrorConnection:Disconnect()
		self._onImportErrorConnection = nil
	end
end

function ImportLocal:render()
	local localization = self.props.Localization:get()

	local importPaused = self.props.TerrainImporter:isPaused()
	local importInProgress = self.props.TerrainImporter:isImporting()
	local importProgress = importInProgress and self.props.TerrainImporter:getImportProgress() or 0

	local canImport = not importInProgress
		and self.state.mapSettingsValid
		and self.props.heightmap.file

	if FFlagTerrainImportSupportDefaultMaterial then
		canImport = canImport
			-- If we're using default material then we're fine, else we're using colormap so check we actually have a colormap
			and (self.props.materialMode == ImportMaterialMode.DefaultMaterial or self.props.colormap.file)
	else
		canImport = canImport
			and (not self.props.useColorMap or self.props.colormap.file)
	end

	local showColormapMaterialToggle
	local showUseColormap
	local showColormap
	local showDefaultMaterial

	if FFlagTerrainImportSupportDefaultMaterial then
		showColormapMaterialToggle = true
		showUseColormap = false

		showColormap = self.props.materialMode == ImportMaterialMode.Colormap
		showDefaultMaterial =  self.props.materialMode == ImportMaterialMode.DefaultMaterial
	else
		showColormapMaterialToggle = false
		showUseColormap = true

		showColormap = self.props.useColorMap
		showDefaultMaterial = false
	end

	local errorMainText = self.state.errorMainText
	local errorSubText = self.state.errorSubText

	return Roact.createFragment({
		MapSettings = Roact.createElement(Panel, {
			LayoutOrder = 1,
			Title = localization:getText("MapSettings", "MapSettings"),
			Padding = UDim.new(0, 12),
		}, {
			Heightmap = Roact.createElement(LabeledElementPair, {
				Text = localization:getText("Import", "Heightmap"),
				Size = UDim2.new(1, 0, 0, 60),
				LayoutOrder = 1,
				SizeToContent = true,
			}, {
				LocalImageSelector = Roact.createElement(LocalImageSelector, {
					CurrentFile = self.props.heightmap,
					SelectFile = self.selectHeightmap,
					PreviewTitle = localization:getText("Import", "HeightmapPreview"),
				}),
			}),

			MapSettingsWithPreview = Roact.createElement(MapSettingsWithPreviewFragment, {
				toolName = self.props.toolName,
				InitialLayoutOrder = 2,

				Position = self.props.position,
				Size = self.props.size,
				PreviewOffset = Vector3.new(0, 0.5, 0),

				OnPositionChanged = self.props.dispatchChangePosition,
				OnSizeChanged = self.props.dispatchChangeSize,
				SetMapSettingsValid = self.setMapSettingsValid,
			}),
		}),

		MaterialSettings = Roact.createElement(Panel, {
			Title = localization:getText("MaterialSettings", "MaterialSettings"),
			LayoutOrder = 2,
		}, {
			UseColorMapToggle = showUseColormap and Roact.createElement(LabeledToggle, {
				LayoutOrder = 1,
				Text = localization:getText("Import", "UseColormap"),
				IsOn = self.props.useColorMap,
				SetIsOn = self.props.dispatchSetUseColorMap,
			}),

			MaterialColorToggle = showColormapMaterialToggle and Roact.createElement(ModeSelector, {
				LayoutOrder = 1,
				Selected = self.props.materialMode,
				Select = self.props.dispatchSetImportMaterialMode,

				Options = {
					{
						Text = localization:getText("ImportMaterialMode", "DefaultMaterial"),
						Data = ImportMaterialMode.DefaultMaterial,
					}, {
						Text = localization:getText("ImportMaterialMode", "Colormap"),
						Data = ImportMaterialMode.Colormap,
					},
				},
			}),

			DefaultMaterialSelector = showDefaultMaterial and Roact.createElement(MaterialSelector, {
				LayoutOrder = 2,

				AllowAir = false,
				Label = localization:getText("Import", "DefaultMaterial"),
				material = self.props.defaultMaterial,
				setMaterial = self.props.dispatchSetDefaultMaterial,
			}),

			Colormap = showColormap and Roact.createElement(LabeledElementPair, {
				LayoutOrder = 2,
				-- When flag is off, use empty string so this looks like it's part of the toggle above
				Text = FFlagTerrainImportSupportDefaultMaterial
					and localization:getText("Import", "Colormap")
					or "",
				Size = UDim2.new(1, 0, 0, 60),
				SizeToContent = true,
			}, {
				LocalImageSelector = Roact.createElement(LocalImageSelector, {
					CurrentFile = self.props.colormap,
					SelectFile = self.selectColormap,
					PreviewTitle = localization:getText("Import", "ColormapPreview"),
				}),
			}),
		}),

		ImportButtonFrame = Roact.createElement(ButtonGroup, {
			LayoutOrder = 4,
			Buttons = {
				{
					Key = "Import",
					Name = localization:getText("Import", "ButtonImport"),
					Active = canImport,
					OnClicked = self.onImportButtonClicked,
				}
			}
		}),

		ProgressDialog = importInProgress
			and Roact.createElement(ProgressDialog, {
			Title = localization:getText("Generate", "GenerateProgressTitle"),
			SubText = localization:getText("Generate", "GenerateVoxels"),

			Progress = importProgress,
			IsPaused = importPaused,

			OnPauseButtonClicked = self.onPauseRequested,
			OnCancelButtonClicked = self.onCancelRequested,
		}),

		ErrorDialog = self.state.hasError and Roact.createElement(ErrorDialog, {
			Title = "Roblox Studio",
			MainText = errorMainText,
			SubText = errorSubText,
			OnClose = self.clearErrorMessage,
		}),
	})
end

ContextServices.mapToProps(ImportLocal, {
	Localization = ContextItems.UILibraryLocalization,
	TerrainImporter = ContextItems.TerrainImporter,
})

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.ImportLocal,
		position = state[REDUCER_KEY].position,
		size = state[REDUCER_KEY].size,

		heightmap = state[REDUCER_KEY].heightmap or {},
		colormap = state[REDUCER_KEY].colormap or {},

		-- TODO: Remove useColorMap when removing FFlagTerrainImportSupportDefaultMaterial
		useColorMap = state[REDUCER_KEY].useColorMap,

		materialMode = state[REDUCER_KEY].materialMode,
		defaultMaterial = state[REDUCER_KEY].defaultMaterial,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToImportLocal = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function(position)
			dispatchToImportLocal(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToImportLocal(ChangeSize(size))
		end,
		dispatchSelectHeightmap = function(heightmap)
			dispatchToImportLocal(SelectHeightmap(heightmap))
		end,
		dispatchSelectColormap = function(colormap)
			dispatchToImportLocal(SelectColormap(colormap))
		end,
		-- TODO: Remove dispatchSetUseColorMap when removing FFlagTerrainImportSupportDefaultMaterial
		dispatchSetUseColorMap = function(useColorMap)
			dispatchToImportLocal(SetUseColorMap(useColorMap))
		end,
		dispatchSetImportMaterialMode = function(materialMode)
			dispatchToImportLocal(SetImportMaterialMode(materialMode))
		end,
		dispatchSetDefaultMaterial = function(defaultMaterial)
			dispatchToImportLocal(SetDefaultMaterial(defaultMaterial))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ImportLocal)
