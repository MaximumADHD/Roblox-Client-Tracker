--!nolint ImportUnused
--^ DEVTOOLS-4491

--[[
	Displays panels associated with the import tool
]]

local FFlagTerrainToolsRedesignProgressDialog = game:GetFastFlag("TerrainToolsRedesignProgressDialog")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = script.Parent.ToolParts
local AssetIdSelector = require(ToolParts.AssetIdSelector)
local ButtonGroup = require(ToolParts.ButtonGroup)
local DEPRECATED_ImportProgressFrame = require(Plugin.Src.Components.DEPRECATED_ImportProgressFrame)
local LabeledToggle = require(ToolParts.LabeledToggle)
local MapSettingsWithPreviewFragment = require(ToolParts.MapSettingsWithPreviewFragment)
local Panel = require(ToolParts.Panel)
local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetUseColorMap = require(Actions.SetUseColorMap)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "ImportTool"

local Import = Roact.PureComponent:extend(script.Name)

function Import:init()
	self.state = {
		validatedMapSettings = true,
		validatedHeightMap = nil,
		validatedColorMap = nil,
	}

	self.updateImportProps = function()
		self.props.TerrainImporter:updateSettings({
			size = Vector3.new(self.props.Size.X, self.props.Size.Y, self.props.Size.Z),
			position = Vector3.new(self.props.Position.X, self.props.Position.Y, self.props.Position.Z),
			useColorMap = self.props.UseColorMap,

			heightMapUrl = self.state.validatedHeightMap,
			colorMapUrl = self.state.validatedColorMap,
		})
	end

	self.mapSettingsValidated = function(validatedMapSettings)
		self:setState({
			validatedMapSettings = validatedMapSettings
		})
	end

	self.heightMapValidated = function(validatedAssetId)
		self:setState({
			validatedHeightMap = validatedAssetId
		})
	end

	self.colorMapValidated = function(validatedAssetId)
		self:setState({
			validatedColorMap = validatedAssetId
		})
	end

	self.onImportButtonClicked = function()
		self.props.TerrainImporter:startImport()
	end
end

function Import:didUpdate()
	self.updateImportProps()
end

function Import:didMount()
	self.updateImportProps()
end

function Import:render()
	local localization = self.props.Localization:get()

	local size = self.props.Size
	local position = self.props.Position
	local useColorMap = self.props.UseColorMap

	local importInProgress = self.props.TerrainImporter:isImporting()
	local importProgress = importInProgress and self.props.TerrainImporter:getImportProgress() or 0

	local importIsActive = not importInProgress
		and self.state.validatedMapSettings
		and self.state.validatedHeightMap
		-- Either don't care about color map being validated cause we're not using it
		-- Or we are using it and it has to be valid
		and (not useColorMap or self.state.validatedColorMap)

	local hideColorMapAssetSelector = not useColorMap

	return Roact.createFragment({
		MapSettings = Roact.createElement(Panel, {
			LayoutOrder = 1,
			Title = localization:getText("MapSettings", "MapSettings"),
			Padding = UDim.new(0, 12),
		}, {
			HeightmapSelector = Roact.createElement(AssetIdSelector, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 60),
				Label = localization:getText("MapSettings", "HeightMap"),
				OnAssetIdValidated = self.heightMapValidated,
			}),

			MapSettingsWithPreview = Roact.createElement(MapSettingsWithPreviewFragment, {
				toolName = self.props.toolName,
				InitialLayoutOrder = 2,

				Position = position,
				Size = size,
				PreviewOffset = Vector3.new(0, 0.5, 0),

				OnPositionChanged = self.props.dispatchChangePosition,
				OnSizeChanged = self.props.dispatchChangeSize,
				SetMapSettingsValid = self.mapSettingsValidated,
			}),
		}),

		MaterialSettings = Roact.createElement(Panel, {
			Title = localization:getText("MaterialSettings", "MaterialSettings"),
			LayoutOrder = 2,
		}, {
			UseColorMapToggle = Roact.createElement(LabeledToggle, {
				LayoutOrder = 1,
				Text = localization:getText("MaterialSettings", "UseColorMap"),
				IsOn = useColorMap,
				SetIsOn = self.props.dispatchSetUseColorMap,
			}),

			ColorMapAssetSelector = Roact.createElement(AssetIdSelector, {
				Size = UDim2.new(1, 0, 0, 60),
				LayoutOrder = 2,
				Label = "",

				OnAssetIdValidated = self.colorMapValidated,
				Disabled = hideColorMapAssetSelector,
			}),
		}),

		ImportButtonFrame = Roact.createElement(ButtonGroup, {
			LayoutOrder = 4,
			Buttons = {
				{
					Key = "Import",
					Name = localization:getText("ToolName", "Import"),
					Active = importIsActive,
					OnClicked = self.onImportButtonClicked,
				}
			}
		}),

		DEPRECATED_ImportProgressFrame = not FFlagTerrainToolsRedesignProgressDialog and (importInProgress
			and Roact.createElement(DEPRECATED_ImportProgressFrame, {
			ImportProgress = importProgress,
		})),

		ProgressDialog = FFlagTerrainToolsRedesignProgressDialog and (importInProgress
			and Roact.createElement(ProgressDialog, {
			Title = localization:getText("Generate", "GenerateProgressTitle"),
			SubText = localization:getText("Generate", "GenerateVoxels"),

			Progress = importProgress,
		})),
	})
end

ContextServices.mapToProps(Import, {
	Localization = ContextItems.UILibraryLocalization,
	TerrainImporter = ContextItems.TerrainImporter,
})

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Import,
		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
		UseColorMap = state[REDUCER_KEY].useColorMap,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToImport = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function(position)
			dispatchToImport(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToImport(ChangeSize(size))
		end,
		dispatchSetUseColorMap = function(useColorMap)
			dispatchToImport(SetUseColorMap(useColorMap))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Import)
