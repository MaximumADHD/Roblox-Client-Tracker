local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local BiomeSettingsFragment = require(ToolParts.BiomeSettingsFragment)
local ButtonGroup = require(ToolParts.ButtonGroup)
local InfoLabel = require(ToolParts.InfoLabel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local MaterialSettingsFragment = require(ToolParts.MaterialSettingsFragment)
local OtherGenerateSettings = require(ToolParts.OtherGenerateSettings)
local Panel = require(ToolParts.Panel)
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ConvertMode = TerrainEnums.ConvertMode
local ConvertPartWarning = TerrainEnums.ConvertPartWarning

local PartConverter = require(Plugin.Src.TerrainInterfaces.PartConverter)
local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)
local PartSelectionModel = require(Plugin.Src.Util.PartSelectionModel)

local MidPlanePreview = require(Plugin.Src.TerrainWorldUI.MidPlanePreview)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePlanePositionY = require(Actions.ChangePlanePositionY)
local SetBiomeSelection = require(Actions.SetBiomeSelection)
local SetBiomeSize = require(Actions.SetBiomeSize)
local SetConvertMode = require(Actions.SetConvertMode)
local SetHaveCaves = require(Actions.SetHaveCaves)
local SetHeightPicker = require(Actions.SetHeightPicker)
local SetMaterial = require(Actions.SetMaterial)
local SetSeed = require(Actions.SetSeed)

local SelectionService = game:GetService("Selection")
local Workspace = game:GetService("Workspace")

local CONVERT_PART_REDUCER_KEY = "ConvertPartTool"

-- this key should match the key used in Components/Tools/Generate
-- we may want to move the keys to a enum later since we now have a
-- case where multiple tools use access the same tool reducers
local GENERATE_REDUCER_KEY = "GenerateTool"

-- Consistent order to show warnings in if there is more than 1
local WARNING_ORDER = {
	ConvertPartWarning.HasTooSmall,
	ConvertPartWarning.HasOtherInstance,
	ConvertPartWarning.HasProtected,
}

local ConvertPart = Roact.PureComponent:extend(script.Name)

function ConvertPart:init()
	self.partSelectionModel = PartSelectionModel.new({
		getSelection = function()
			return SelectionService:Get()
		end,
		selectionChanged = SelectionService.SelectionChanged,
		getValidAndWarnings = PartConverterUtil.getValidInstancesAndWarnings,
	})

	self.connections = {}

	self.state = {
		hasValidInstances = self.partSelectionModel:hasValidInstances(),
		warnings = self.partSelectionModel:getWarnings(),
	}

	self.selectBiome = function(biome)
		local biomes = self.props.biomeSelection
		local value = not biomes[biome]

		self.props.dispatchSetBiomeSelection(biome, value)
	end

	self.setPlanePositionY = function(...)
		self.props.dispatchChangePlanePositionY(...)
		if self.midPlanePreview then
			self.midPlanePreview:setY(...)
		end
	end

	self.setHeightPicker = function(picking)
		if self.midPlanePreview and picking then
			self.midPlanePreview:startSelectHeight(function()
				self.props.dispatchSetHeightPicker(false)
				local pos = self.midPlanePreview:getPosition()
				self.props.dispatchChangePlanePositionY(pos.y)
			end, function(...)
				self.props.dispatchChangePlanePositionY(...)
			end)
		else
			self.props.dispatchSetHeightPicker(picking)
		end
	end

	self.onConvertBiomeClicked = function()
		self.props.PartConverter:convertInstancesToBiome(
			self.partSelectionModel:getValidInstancesSet(),
			{
				biomeSelection = self.props.biomeSelection,
				biomeSize = self.props.biomeSize,
				haveCaves = self.props.haveCaves,
				baseLevel = self.props.planePositionY,
				seed = self.props.seed,
			}
		)
	end

	self.onConvertMaterialClicked = function()
		self.props.PartConverter:convertInstancesToMaterial(
			self.partSelectionModel:getValidInstancesSet(),
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
		self.props.PartConverter:togglePause()
	end

	self.onCancelClicked = function()
		self.props.PartConverter:cancel()
	end

	self.onSelectionChanged = function()
		-- remove enableBiome if we want to enable biome convert
		if not self.props.enableBiome then
			return
		end

		if self.props.convertMode == ConvertMode.Biome then
			if self.partSelectionModel:hasValidInstances() then
				local validInstances = self.partSelectionModel:getValidInstancesSet()

				xpcall(function()
					local min, max = PartConverterUtil.getInstanceSetAABBExtents(validInstances)
					if self.midPlanePreview then
						self.midPlanePreview:updatePlaneScaling(min,max)
					else
						local plugin = self.props.Plugin
						self.midPlanePreview = MidPlanePreview.new(plugin, Workspace, min, max)
						local mid = (min + max) * 0.5
						self.setPlanePositionY(mid.y)
					end
					self.midPlanePreview:updateVisibility(true)
				end, function()
					-- silence
				end)
			else
				if self.midPlanePreview then
					self.midPlanePreview:updateVisibility(false)
				end
			end
		end
	end
end

function ConvertPart:didMount()
	self.connections.selectionStateChangedConnection = self.partSelectionModel:subscribeToSelectionStateChanged(function()
		self:onSelectionChanged()

		self:setState({
			hasValidInstances = self.partSelectionModel:hasValidInstances(),
			warnings = self.partSelectionModel:getWarnings(),
		})
	end)

	self.props.PartConverter:setSelectionModel(self.partSelectionModel)
	self.onSelectionChanged()
end

function ConvertPart:didUpdate()
	self.onSelectionChanged()
end

function ConvertPart:willUnmount()
	self.props.PartConverter:setSelectionModel(nil)

	for _, connection in pairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	if self.partSelectionModel then
		self.partSelectionModel:destroy()
		self.partSelectionModel = nil
	end

	if self.midPlanePreview then
		self.midPlanePreview:destroy()
	end
end

function ConvertPart:render()
	local localization = self.props.Localization:get()

	local isRunning = self.props.PartConverter:isRunning()
	local progress = isRunning and self.props.PartConverter:getProgress() or 0
	local isPaused = isRunning and self.props.PartConverter:isPaused() or false
	local convertState = self.props.PartConverter:getConvertState()

	local convertMode = self.props.convertMode

	local infoLabelText = ""
	local infoLabelType = InfoLabel.Info
	local showInfoLabel = false
	local convertButtonActive = false

	if isRunning then
		showInfoLabel = false

	else
		local hasValid = self.state.hasValidInstances
		local warnings = self.state.warnings
		local hasWarnings = not not next(warnings)

		if hasWarnings then
			local orderedWarningsToShow = {}
			for _, warning in ipairs(WARNING_ORDER) do
				if warnings[warning] then
					table.insert(orderedWarningsToShow, localization:getText("ConvertPart", warning))
				end
			end
			infoLabelText = table.concat(orderedWarningsToShow, "\n")
			showInfoLabel = true

			if hasValid then
				infoLabelType = InfoLabel.Warning
				convertButtonActive = true
			else
				infoLabelType = InfoLabel.Error
				convertButtonActive = false
			end

		else
			if hasValid then
				convertButtonActive = true
			else
				infoLabelText = localization:getText("ConvertPart", "SelectionHelp")
				showInfoLabel = true
				convertButtonActive = false
			end
		end
	end

	local showHeightPicker = self.midPlanePreview ~= nil
	local planePositionY = self.props.planePositionY
	local heightPicker = self.props.heightPicker

	local biomeSelection = self.props.biomeSelection
	local biomeSize = self.props.biomeSize
	local haveCaves = self.props.haveCaves
	local seed = self.props.seed

	local localizedConvertState = ""
	if convertState ~= PartConverter.NOT_RUNNING_CONVERT_STATE then
		localizedConvertState = localization:getText("ConvertPart", convertState)
	end

	-- remove if we want to enable biome convert
	if not self.props.enableBiome then
		convertMode = ConvertMode.Material
	end

	return Roact.createFragment({
		MapSettings = Roact.createElement(Panel, {
			Title = localization:getText("MaterialSettings", "MaterialSettings"),
			LayoutOrder = 1,
		}, {
			ConvertModeSelector = self.props.enableBiome and Roact.createElement(LabeledElementPair, {
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
				showHeightPicker = showHeightPicker,
				planePositionY = planePositionY,
				setPlanePositionY = self.setPlanePositionY,
				heightPicker = heightPicker,
				setHeightPicker = self.setHeightPicker,
				haveCaves = haveCaves,
				setHaveCaves = self.props.dispatchSetHaveCaves,
			}),

			MaterialSettingsFragment = convertMode == ConvertMode.Material and Roact.createElement(MaterialSettingsFragment, {
				LayoutOrder = 2,
				AllowAir = true,
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

		ProgressDialog = isRunning and Roact.createElement(ProgressDialog, {
			Title = localization:getText("ConvertPart", "ConvertProgressTitle"),
			SubText = localizedConvertState,

			Progress = progress,
			IsPaused = isPaused,

			OnPauseButtonClicked = self.onPauseClicked,
			OnCancelButtonClicked = self.onCancelClicked,
		}),
	})
end


ConvertPart = withContext({
	Plugin = ContextServices.Plugin,
	Localization = ContextItems.UILibraryLocalization,
	PartConverter = ContextItems.PartConverter,
})(ConvertPart)



local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.ConvertPart,

		convertMode = state[CONVERT_PART_REDUCER_KEY].convertMode,

		biomeSelection = state[GENERATE_REDUCER_KEY].biomeSelection,
		biomeSize = state[GENERATE_REDUCER_KEY].biomeSize,
		convertMaterial = state[CONVERT_PART_REDUCER_KEY].material,
		haveCaves = state[GENERATE_REDUCER_KEY].haveCaves,
		heightPicker = state[GENERATE_REDUCER_KEY].heightPicker,
		planePositionY = state[GENERATE_REDUCER_KEY].planePositionY,
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

		dispatchChangePlanePositionY = function (planePositionY)
			dispatchToGenerate(ChangePlanePositionY(planePositionY))
		end,
		dispatchSetBiomeSelection = function (biome, value)
			dispatchToGenerate(SetBiomeSelection(biome, value))
		end,
		dispatchSetBiomeSize = function (size)
			dispatchToGenerate(SetBiomeSize(size))
		end,
		dispatchSetConvertMaterial = function (convertMaterial)
			dispatchToConvertPart(SetMaterial(convertMaterial))
		end,
		dispatchSetHaveCaves = function (haveCaves)
			dispatchToGenerate(SetHaveCaves(haveCaves))
		end,
		dispatchSetHeightPicker = function (heightPicker)
			dispatchToGenerate(SetHeightPicker(heightPicker))
		end,
		dispatchSetSeed = function (seed)
			dispatchToGenerate(SetSeed(seed))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ConvertPart)
