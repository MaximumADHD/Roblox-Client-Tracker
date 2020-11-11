--[[
	Displays panels associated with the improved import tool
]]

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
local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SelectColormap = require(Actions.SelectColormap)
local SelectHeightmap = require(Actions.SelectHeightmap)
local SetUseColorMap = require(Actions.SetUseColorMap)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

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
		-- TODO: MOD-231
		print("TODO: Import local tool pausing")
	end

	self.onCancelRequested = function()
		-- TODO: MOD-231
		print("TODO: Import local tool canceling")
	end
end

function ImportLocal:updateImportProps()
	self.props.TerrainImporter:updateSettings({
		size = Vector3.new(self.props.size.X, self.props.size.Y, self.props.size.Z),
		position = Vector3.new(self.props.position.X, self.props.position.Y, self.props.position.Z),

		heightmap = self.props.heightmap or Cryo.None,
		useColorMap = self.props.useColorMap,
		colormap = self.props.colormap or Cryo.None,
	})
end

function ImportLocal:didMount()
	self:updateImportProps()
end

function ImportLocal:didUpdate()
	self:updateImportProps()
end

function ImportLocal:render()
	local localization = self.props.Localization:get()

	local importInProgress = self.props.TerrainImporter:isImporting()
	local importProgress = importInProgress and self.props.TerrainImporter:getImportProgress() or 0

	local canImport = not importInProgress
		and self.state.mapSettingsValid
		and self.props.heightmap
		and (not self.props.useColorMap or self.props.colormap)

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
			UseColorMapToggle = Roact.createElement(LabeledToggle, {
				LayoutOrder = 1,
				Text = localization:getText("Import", "UseColormap"),
				IsOn = self.props.useColorMap,
				SetIsOn = self.props.dispatchSetUseColorMap,
			}),

			-- TODO: Should we hide this, or render it as disabled when not using colour maps?
			Colormap = self.props.useColorMap and Roact.createElement(LabeledElementPair, {
				-- Use empty text so this looks like it's part of the toggle above
				-- When it's actually a separate row
				Text = "",
				Size = UDim2.new(1, 0, 0, 60),
				LayoutOrder = 2,
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

		useColorMap = state[REDUCER_KEY].useColorMap,
		heightmap = state[REDUCER_KEY].heightmap,
		colormap = state[REDUCER_KEY].colormap,
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
		dispatchSetUseColorMap = function(useColorMap)
			dispatchToImportLocal(SetUseColorMap(useColorMap))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ImportLocal)
