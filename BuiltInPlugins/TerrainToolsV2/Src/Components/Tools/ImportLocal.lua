--[[
	Displays panels associated with the improved import tool
]]

local FFlagTerrainImportSupportDefaultMaterial = game:GetFastFlag("TerrainImportSupportDefaultMaterial")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

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

local REDUCER_KEY = "ImportLocalTool"

local ImportLocal = Roact.PureComponent:extend(script.Name)

function ImportLocal:init()
	self.state = {
		mapSettingsValid = true,
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
end

function ImportLocal:updateImportProps()
	local newSettings = {
		size = Vector3.new(self.props.size.X, self.props.size.Y, self.props.size.Z),
		position = Vector3.new(self.props.position.X, self.props.position.Y, self.props.position.Z),

		heightmap = self.props.heightmap or Cryo.None,
		colormap = self.props.colormap or Cryo.None,
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
end

function ImportLocal:didUpdate()
	self:updateImportProps()
end

function ImportLocal:render()
	local localization = self.props.Localization:get()

	local importPaused = self.props.TerrainImporter:isPaused()
	local importInProgress = self.props.TerrainImporter:isImporting()
	local importProgress = importInProgress and self.props.TerrainImporter:getImportProgress() or 0

	local canImport = not importInProgress
		and self.state.mapSettingsValid
		and self.props.heightmap

	if FFlagTerrainImportSupportDefaultMaterial then
		canImport = canImport
			-- If we're using default material then we're fine, else we're using colormap so check we actually have a colormap
			and (self.props.materialMode == ImportMaterialMode.DefaultMaterial or self.props.colormap)
	else
		canImport = canImport
			and (not self.props.useColorMap or self.props.colormap)
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
					SelectFile = self.props.dispatchSelectHeightmap,
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
					SelectFile = self.props.dispatchSelectColormap,
					PreviewTitle = localization:getText("Import", "ColormapPreview"),
				}),
			}),
		}),

		ImportButtonFrame = Roact.createElement(ButtonGroup, {
			LayoutOrder = 4,
			Buttons = {
				{
					Key = "Import",
					Name = localization:getText("ToolName", "Import"),
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

		heightmap = state[REDUCER_KEY].heightmap,
		colormap = state[REDUCER_KEY].colormap,

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
