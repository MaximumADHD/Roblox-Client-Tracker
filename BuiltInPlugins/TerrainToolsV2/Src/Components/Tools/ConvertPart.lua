local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BiomeSettingsFragment = require(ToolParts.BiomeSettingsFragment)
local ButtonGroup = require(ToolParts.ButtonGroup)
local InfoLabel = require(ToolParts.InfoLabel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local MaterialSettingsFragment = require(ToolParts.MaterialSettingsFragment)
local OtherGenerateSettings = require(ToolParts.OtherGenerateSettings)
local Panel = require(ToolParts.Panel)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local ConvertProgressFrame = require(Plugin.Src.Components.ConvertProgressFrame)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ConvertMode = TerrainEnums.ConvertMode

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)
local PartConverter = require(Plugin.Src.TerrainInterfaces.PartConverter)
local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)
local PartSelectionModel = require(Plugin.Src.Util.PartSelectionModel)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetConvertMode = require(Actions.SetConvertMode)
local SetMaterial = require(Actions.SetMaterial)

local SetBiomeSelection = require(Actions.SetBiomeSelection)
local SetBiomeSize = require(Actions.SetBiomeSize)
local SetHeightPicker = require(Actions.SetHeightPicker)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetHaveCaves = require(Actions.SetHaveCaves)
local SetSeed = require(Actions.SetSeed)

local SelectionService = game:GetService("Selection")

local CONVERT_PART_REDUCER_KEY = "ConvertPartTool"

-- this key should match the key used in Components/Tools/Generate
-- we may want to move the keys to a enum later since we now have a
-- case where multiple tools use access the same tool reducers
local GENERATE_REDUCER_KEY = "GenerateTool"

local ConvertPart = Roact.PureComponent:extend(script.Name)

function ConvertPart:init()
	self.partConverter = TerrainInterface.getPartConverter(self)
	self.partSelectionModel = PartSelectionModel.new({
		getSelection = function()
			return SelectionService:Get()
		end,
		selectionChanged = SelectionService.SelectionChanged,
		validFilter = PartConverterUtil.validInstanceFilter,
	})

	self.connections = {}

	self.state = {
		hasValidInstances = self.partSelectionModel:hasValidInstances(),
		hasInvalidInstances = self.partSelectionModel:hasInvalidInstances(),

		progress = self.partConverter:getProgress(),
		isRunning = self.partConverter:isRunning(),
		isPaused = self.partConverter:isPaused(),
		convertState = self.partConverter:getConvertState(),
	}

	self.selectBiome = function(biome)
		local biomes = self.props.biomeSelection
		local value = not biomes[biome]

		self.props.dispatchSetBiomeSelection(biome, value)
	end

	self.setPlanePositionY = function(...)
		print("fill out setPlanePositionY ->", ...)
	end

	self.setHeightPicker = function( ... )
		print("fill out setHeightPicker ->", ...)
	end

	self.onConvertBiomeClicked = function()
		self.partConverter:convertInstancesToBiome(self.partSelectionModel:getSelection(), {
			biomeSelection = self.props.biomeSelection,
			biomeSize = self.props.biomeSize,
			haveCaves = self.props.haveCaves,

			seed = self.props.seed,
		})
	end

	self.onConvertMaterialClicked = function()
		self.partConverter:convertInstancesToMaterial(
			self.partSelectionModel:getSelection(),
			self.props.convertMaterial
		)
	end

	self.onConvertClicked = function()
		if self.props.convertMode == ConvertMode.Biome then
			self.onConvertBiomeClicked()
		else
			self.onConvertMaterialClicked()
		end
	end

	self.onPauseClicked = function()
		self.partConverter:togglePause()
	end

	self.onCancelClicked = function()
		self.partConverter:cancel()
	end
end

function ConvertPart:didMount()
	self.connections.convertStateChangedConnection = self.partConverter:subscribeToConvertStateChanged(
		function(convertState)
		self:setState({
			convertState = convertState,
		})
	end)

	self.connections.runningChangedConnection = self.partConverter:subscribeToRunningChanged(function(running)
		if not running then
			self:setState({
				isRunning = running,
				progress = 0,
				isPaused = false,
			})
		else
			self:setState({
				isRunning = running,
			})
		end
	end)

	self.connections.progressChangedConnection = self.partConverter:subscribeToProgressChanged(function(progress)
		self:setState({
			progress = progress,
		})
	end)

	self.connections.pausedChangedConnection = self.partConverter:subscribeToPausedChanged(function(paused)
		self:setState({
			isPaused = paused,
		})
	end)

	self.connections.selectionStateChangedConnection = self.partSelectionModel:subscribeToSelectionStateChanged(function()
		self:setState({
			hasValidInstances = self.partSelectionModel:hasValidInstances(),
			hasInvalidInstances = self.partSelectionModel:hasInvalidInstances(),
		})
	end)

	self.partConverter:setSelectionModel(self.partSelectionModel)
end

function ConvertPart:willUnmount()
	self.partConverter:setSelectionModel(nil)

	for _, connection in pairs(self.connections) do
		connection:disconnect()
	end
	self.connections = {}

	if self.partSelectionModel then
		self.partSelectionModel:destroy()
		self.partSelectionModel = nil
	end
end

function ConvertPart:render()
	return withLocalization(function(localization)
		local isRunning = self.state.isRunning
		local convertMode = self.props.convertMode
		local convertButtonActive = false

		local infoLabelText = ""
		local infoLabelType = InfoLabel.Info
		local showInfoLabel = true
		if not isRunning then
			local hasValid = self.state.hasValidInstances
			local hasInvalid = self.state.hasInvalidInstances
			--[[
				No valid + No invalid
					"Select some parts!" info
					Disable button

				Some valid + no invalid
					No text
					Enable button

				No valid + some invalid
					"Need to select a part" error
					Disable button

				Some valid + some invalid
					"Only parts will work" warning
					Enable button
			]]

			if hasValid and hasInvalid then
				infoLabelText = localization:getText("ConvertPart", "SelectionOnlyParts")
				infoLabelType = InfoLabel.Warning
				convertButtonActive = true

			elseif hasValid and not hasInvalid then
				showInfoLabel = false
				convertButtonActive = true

			elseif not hasValid and hasInvalid then
				infoLabelText = localization:getText("ConvertPart", "SelectionNeedPart")
				infoLabelType = InfoLabel.Error

			else -- not hasValid and not hasInvalid
				infoLabelText = localization:getText("ConvertPart", "SelectionHelp")
			end
		end

		local planePositionY = self.props.planePositionY
		local heightPicker = self.props.heightPicker

		local biomeSelection = self.props.biomeSelection
		local biomeSize = self.props.biomeSize
		local haveCaves = self.props.haveCaves
		local seed = self.props.seed

		local localizedConvertState = ""
		if self.state.convertState ~= PartConverter.NOT_RUNNING_CONVERT_STATE then
			localizedConvertState = localization:getText("ConvertPart", self.state.convertState)
		end

		return Roact.createFragment({
			MapSettings = Roact.createElement(Panel, {
				Title = localization:getText("MapSettings", "MapSettings"),
				LayoutOrder = 1,
			}, {
				ConvertModeSelector = Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 22),
					Text = localization:getText("ConvertMode", "ConvertMode"),
					LayoutOrder = 1,
				}, {
					Roact.createElement(SingleSelectButtonGroup, {
						Size = UDim2.new(0, 141, 0, 22),
						Selected = convertMode,
						Select = self.props.dispatchSetConvertMode,

						Options = {
							{
								Text = localization:getText("ConvertMode", "Biome"),
								Data = ConvertMode.Biome,
							}, {
								Text = localization:getText("ConvertMode", "Material"),
								Data = ConvertMode.Material,
							},
						}
					}),
				}),

				BiomeSettingsFragment = convertMode == ConvertMode.Biome and Roact.createElement(BiomeSettingsFragment, {
					LayoutOrder = 2,
					biomeSelection = biomeSelection,
					selectBiome = self.selectBiome,
					biomeSize = biomeSize,
					setBiomeSize = self.props.dispatchSetBiomeSize,
					planePositionY = planePositionY,
					setPlanePositionY = self.setPlanePositionY,
					heightPicker = heightPicker,
					setHeightPicker = self.setHeightPicker,
					haveCaves = haveCaves,
					setHaveCaves = self.props.dispatchSetHaveCaves,
				}),

				MaterialSettingsFragment = convertMode == ConvertMode.Material and Roact.createElement(MaterialSettingsFragment, {
					LayoutOrder = 2,
					material = self.props.convertMaterial,
					setMaterial = self.props.dispatchSetConvertMaterial,
				}),
			}),

			OtherGenerateSettings = convertMode == ConvertMode.Biome and Roact.createElement(OtherGenerateSettings, {
				LayoutOrder = 2,
				seed = seed,
				setSeed = self.props.dispatchSetSeed,
			}),

			Label = showInfoLabel and Roact.createElement(InfoLabel, {
				LayoutOrder = 3,
				Text = infoLabelText,
				Type = infoLabelType,
			}),

			ButtonGroup = Roact.createElement(ButtonGroup, {
				LayoutOrder = 4,
				Buttons = {
					{
						Key = "Convert",
						Name = localization:getText("ConvertPart", "Convert"),
						Active = convertButtonActive,
						OnClicked = self.onConvertClicked,
					},
				}
			}),

			ConvertProgressFrame = isRunning and Roact.createElement(ConvertProgressFrame, {
				Progress = self.state.progress,
				IsPaused = self.state.isPaused,

				Title = localizedConvertState,
				OnPauseRequested = self.onPauseClicked,
				OnCancelRequested = self.onCancelClicked,
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.ConvertPart,

		convertMode = state[CONVERT_PART_REDUCER_KEY].convertMode,
		convertMaterial = state[CONVERT_PART_REDUCER_KEY].material,

		biomeSelection = state[GENERATE_REDUCER_KEY].biomeSelection,
		biomeSize = state[GENERATE_REDUCER_KEY].biomeSize,
		planePositionY = state[GENERATE_REDUCER_KEY].planePositionY,
		heightPicker = state[GENERATE_REDUCER_KEY].heightPicker,
		haveCaves = state[GENERATE_REDUCER_KEY].haveCaves,

		seed = state[GENERATE_REDUCER_KEY].seed,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToConvertPart = function(action)
		dispatch(ApplyToolAction(CONVERT_PART_REDUCER_KEY, action))
	end

	local dispatchToGenerate = function(action)
		dispatch(ApplyToolAction(GENERATE_REDUCER_KEY, action))
	end

	return {
		dispatchSetConvertMode = function(convertMode)
			dispatchToConvertPart(SetConvertMode(convertMode))
		end,
		dispatchSetConvertMaterial = function(convertMaterial)
			dispatchToConvertPart(SetMaterial(convertMaterial))
		end,


		dispatchSetBiomeSelection = function (biome, value)
			dispatchToGenerate(SetBiomeSelection(biome, value))
		end,
		dispatchSetBiomeSize = function(size)
			dispatchToGenerate(SetBiomeSize(size))
		end,
		dispatchSetHeightPicker = function(heightPicker)
			dispatchToGenerate(SetHeightPicker(heightPicker))
		end,
		dispatchChangePlanePositionY = function (planePositionY)
			dispatchToGenerate(ChangePlanePositionY(planePositionY))
		end,
		dispatchSetHaveCaves = function (haveCaves)
			dispatchToGenerate(SetHaveCaves(haveCaves))
		end,
		dispatchSetSeed = function(seed)
			dispatchToGenerate(SetSeed(seed))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ConvertPart)
