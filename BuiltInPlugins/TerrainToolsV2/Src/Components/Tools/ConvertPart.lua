local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextServices = FFlagTerrainToolsUseDevFramework and Framework.ContextServices or nil
local ContextItems = FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextItems) or nil
local StudioPlugin = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.StudioPlugin) or nil

local withLocalization = not FFlagTerrainToolsUseDevFramework and UILibrary.Localizing.withLocalization or nil

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
local ConvertPartWarning = TerrainEnums.ConvertPartWarning

local TerrainInterface = not FFlagTerrainToolsUseDevFramework and require(Plugin.Src.ContextServices.TerrainInterface)
	or nil

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

	if FFlagTerrainToolsUseDevFramework then
		self.state = {
			hasValidInstances = self.partSelectionModel:hasValidInstances(),
			warnings = self.partSelectionModel:getWarnings(),
		}
	else
		self.partConverter = TerrainInterface.getPartConverter(self)
		self.state = {
			hasValidInstances = self.partSelectionModel:hasValidInstances(),
			warnings = self.partSelectionModel:getWarnings(),

			progress = self.partConverter:getProgress(),
			isRunning = self.partConverter:isRunning(),
			isPaused = self.partConverter:isPaused(),
			convertState = self.partConverter:getConvertState(),
		}
	end

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
		local partConverter = FFlagTerrainToolsUseDevFramework and self.props.PartConverter or self.partConverter
		partConverter:convertInstancesToBiome(
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
		local partConverter = FFlagTerrainToolsUseDevFramework and self.props.PartConverter or self.partConverter
		partConverter:convertInstancesToMaterial(
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
		local partConverter = FFlagTerrainToolsUseDevFramework and self.props.PartConverter or self.partConverter
		partConverter:togglePause()
	end

	self.onCancelClicked = function()
		local partConverter = FFlagTerrainToolsUseDevFramework and self.props.PartConverter or self.partConverter
		partConverter:cancel()
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
						local plugin = FFlagTerrainToolsUseDevFramework and self.props.Plugin or StudioPlugin.getPlugin(self)
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
	local partConverter = FFlagTerrainToolsUseDevFramework and self.props.PartConverter or self.partConverter

	if not FFlagTerrainToolsUseDevFramework then
		self.connections.convertStateChangedConnection = partConverter:subscribeToConvertStateChanged(
			function(convertState)
			self:setState({
				convertState = convertState,
			})
		end)

		self.connections.runningChangedConnection = partConverter:subscribeToRunningChanged(function(running)
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

		self.connections.progressChangedConnection = partConverter:subscribeToProgressChanged(function(progress)
			self:setState({
				progress = progress,
			})
		end)

		self.connections.pausedChangedConnection = partConverter:subscribeToPausedChanged(function(paused)
			self:setState({
				isPaused = paused,
			})
		end)
	end

	self.connections.selectionStateChangedConnection = self.partSelectionModel:subscribeToSelectionStateChanged(function()
		self:onSelectionChanged()

		self:setState({
			hasValidInstances = self.partSelectionModel:hasValidInstances(),
			warnings = self.partSelectionModel:getWarnings(),
		})
	end)

	partConverter:setSelectionModel(self.partSelectionModel)
	self.onSelectionChanged()
end

function ConvertPart:didUpdate()
	self.onSelectionChanged()
end

function ConvertPart:willUnmount()
	local partConverter = FFlagTerrainToolsUseDevFramework and self.props.PartConverter or self.partConverter
	partConverter:setSelectionModel(nil)

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

function ConvertPart:_render(localization)
	local progress
	local isRunning
	local isPaused
	local convertState

	if FFlagTerrainToolsUseDevFramework then
		isRunning = self.props.PartConverter:isRunning()
		progress = isRunning and self.props.PartConverter:getProgress() or 0
		isPaused = isRunning and self.props.PartConverter:isPaused() or false
		convertState = self.props.PartConverter:getConvertState()
	else
		progress = self.state.progress
		isRunning = self.state.isRunning
		isPaused = self.state.isPaused
		convertState = self.state.convertState
	end

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

		ConvertProgressFrame = isRunning and Roact.createElement(ConvertProgressFrame, {
			Progress = progress,
			IsPaused = isPaused,

			Title = localizedConvertState,
			OnPauseRequested = self.onPauseClicked,
			OnCancelRequested = self.onCancelClicked,
		}),
	})
end

function ConvertPart:render()
	if FFlagTerrainToolsUseDevFramework then
		return self:_render(self.props.Localization:get())
	else
		return withLocalization(function(localization)
			return self:_render(localization)
		end)
	end
end

if FFlagTerrainToolsUseDevFramework then
	ContextServices.mapToProps(ConvertPart, {
		Plugin = ContextServices.Plugin,
		Localization = ContextItems.UILibraryLocalization,
		PartConverter = ContextItems.PartConverter,
	})
end

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
