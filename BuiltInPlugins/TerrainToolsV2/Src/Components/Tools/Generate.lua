local FFlagTerrainToolsUseMapSettingsWithPreview = game:GetFastFlag("TerrainToolsUseMapSettingsWithPreview")

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local ToolParts = script.Parent.ToolParts
local BiomeSettingsFragment = require(ToolParts.BiomeSettingsFragment)
local ButtonGroup = require(ToolParts.ButtonGroup)
local GenerateProgressFrame = require(Plugin.Src.Components.GenerateProgressFrame)
local MapSettings = require(ToolParts.MapSettings)
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local OtherGenerateSettings = require(ToolParts.OtherGenerateSettings)
local Panel = require(ToolParts.Panel)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetBiomeSelection = require(Actions.SetBiomeSelection)
local SetBiomeSize = require(Actions.SetBiomeSize)
local SetHaveCaves = require(Actions.SetHaveCaves)
local SetSeed = require(Actions.SetSeed)

local REDUCER_KEY = "GenerateTool"

local Generate = Roact.PureComponent:extend(script.Name)

function Generate:init()
	self.warnings = {}

	self.terrainGeneration = TerrainInterface.getTerrainGeneration(self)
	assert(self.terrainGeneration, "Generate component requires a TerrainGeneration from context")

	self.state = {
		mapSettingsValid = true,

		-- If we open the generate tool and there's generation in progress
		-- Then we want to initialize with that state
		isGenerating = self.terrainGeneration:isGenerating(),
		generateProgress = self.terrainGeneration:getProgress(),
		generatePaused = self.terrainGeneration:isPaused(),
	}

	self.selectBiome = function(biome)
		local biomes = self.props.biomeSelection
		local value = not biomes[biome]

		self.props.dispatchSetBiomeSelection(biome, value)
	end

	if not FFlagTerrainToolsUseMapSettingsWithPreview then
		local function makeOnVectorAxisChanged(getCurrentValue, setNewValue)
			return function(vector, axis, text, isValid)
				if not isValid then
					self.warnings[vector .. axis] = true
					return
				end
				self.warnings[vector .. axis] = false

				setNewValue(Cryo.Dictionary.join(getCurrentValue(), {
					[axis] = text,
				}))
			end
		end

		self.onPositionChanged = makeOnVectorAxisChanged(function()
			return self.props.position
		end, self.props.dispatchChangePosition)

		self.onSizeChanged = makeOnVectorAxisChanged(function()
			return self.props.size
		end, self.props.dispatchChangeSize)
	end

	self.onBiomeSizeChanged = function(text)
		local biomeSize = tonumber(text)
		if biomeSize and biomeSize > 0 then
			self.props.dispatchSetBiomeSize(text)
		end
	end

	self.updateGenerateProps = function()
		-- Because TerrainGeneration copies the settings into makeTerrainGenerator()
		-- It's safe to update the settings even during a generation
		-- They won't affect the current generation, just the next one
		self.terrainGeneration:updateSettings({
			position = self.props.position,
			size = self.props.size,

			biomeSelection = self.props.biomeSelection,
			biomeSize = self.props.biomeSize,
			haveCaves = self.props.haveCaves,

			seed = self.props.seed,
		})
	end

	self.setMapSettingsValidated = function(isValidated)
		self:setState({
			mapSettingsValid = isValidated
		})
	end

	self.onSeedFocusLost = function(enterPressed, text)
		self.props.dispatchSetSeed(text)
	end

	self.tryGenerate = function()
		for key, invalidEntry in pairs(self.warnings) do
			if invalidEntry then
				warn(key .. " is invalid.")
				return
			end
		end

		self.updateGenerateProps()
		self.terrainGeneration:startGeneration()
	end

	self.onGenerateStartStopConnection = self.terrainGeneration:subscribeToStartStopGeneratingChanged(function(generating)
		if not generating then
			-- If we've stopped generating then also reset the UI
			self:setState({
				isGenerating = generating,
				generateProgress = 0,
				generatePaused = false,
			})
		else
			self:setState({
				isGenerating = generating,
			})
		end
	end)

	self.onProgressChangedConnection = self.terrainGeneration:subscribeToProgressUpdate(function(progress)
		self:setState({
			generateProgress = progress,
		})
	end)

	self.onPausedChangedConnection = self.terrainGeneration:subscribeToPaused(function(isPaused)
		self:setState({
			generatePaused = isPaused,
		})
	end)

	self.onGenerationPauseRequested = function()
		self.terrainGeneration:togglePauseGeneration()
	end

	self.onGenerationCancelRequested = function()
		self.terrainGeneration:cancelGeneration()
	end

	self.setWarnings = function(warnings)
		self.warnings = warnings
	end
end

function Generate:didUpdate()
	self.updateGenerateProps()
end

function Generate:didMount()
	self.updateGenerateProps()
end

function Generate:willUnmount()
	if self.onGenerateStartStopConnection then
		self.onGenerateStartStopConnection:Disconnect()
		self.onGenerateStartStopConnection = nil
	end

	if self.onProgressChangedConnection then
		self.onProgressChangedConnection:Disconnect()
		self.onProgressChangedConnection = nil
	end

	if self.onPausedChangedConnection then
		self.onPausedChangedConnection:Disconnect()
		self.onPausedChangedConnection = nil
	end
end

function Generate:render()
	local position = self.props.position
	local size = self.props.size
	local biomeSelection = self.props.biomeSelection
	local biomeSize = self.props.biomeSize
	local haveCaves = self.props.haveCaves
	local seed = self.props.seed
	local selectBiome = self.selectBiome

	local generateInProgress = self.state.isGenerating
	local generateProgress = self.state.generateProgress
	local generatePaused = self.state.generatePaused

	local generateIsActive = self.state.mapSettingsValid and not generateInProgress

	return withLocalization(function(localization)
		return Roact.createFragment({
			MapSettingsWithPreview = FFlagTerrainToolsUseMapSettingsWithPreview and Roact.createElement(MapSettingsWithPreview, {
				toolName = self.props.toolName,
				LayoutOrder = 1,

				Position = position,
				Size = size,

				OnPositionChanged = self.props.dispatchChangePosition,
				OnSizeChanged = self.props.dispatchChangeSize,
				SetMapSettingsValid = self.setMapSettingsValidated,
				SetWarnings = self.setWarnings,
			}),

			MapSettings = not FFlagTerrainToolsUseMapSettingsWithPreview and Roact.createElement(MapSettings, {
				LayoutOrder = 1,

				Position = position,
				Size = size,

				OnPositionChanged = self.onPositionChanged,
				OnSizeChanged = self.onSizeChanged,
				SetMapSettingsValid = self.setMapSettingsValidated,
			}),

			MaterialSettings = Roact.createElement(Panel, {
				Title = localization:getText("MaterialSettings", "MaterialSettings"),
				LayoutOrder = 2,
			}, {
				BiomeSettingsFragment = Roact.createElement(BiomeSettingsFragment, {
					LayoutOrder = 1,
					biomeSelection = biomeSelection,
					selectBiome = selectBiome,
					biomeSize = biomeSize,
					setBiomeSize = self.props.dispatchSetBiomeSize,
					haveCaves = haveCaves,
					setHaveCaves = self.props.dispatchSetHaveCaves,
				}),
			}),

			OtherSettings = Roact.createElement(OtherGenerateSettings, {
				LayoutOrder = 3,
				seed = seed,
				setSeed = self.props.dispatchSetSeed,
			}),

			GenerateButtonFrame = Roact.createElement(ButtonGroup, {
				LayoutOrder = 4,
				Buttons = {
					{
						Key = "Generate",
						Name = localization:getText("Generate", "ButtonGenerate"),
						Active = generateIsActive,
						OnClicked = self.tryGenerate,
					}
				},
			}),

			GenerateProgressFrame = generateInProgress and Roact.createElement(GenerateProgressFrame, {
				GenerateProgress = generateProgress,
				IsPaused = generatePaused,
				OnPauseRequested = self.onGenerationPauseRequested,
				OnCancelRequested = self.onGenerationCancelRequested,
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Generate,

		biomeSelection = state[REDUCER_KEY].biomeSelection,
		biomeSize = state[REDUCER_KEY].biomeSize,
		haveCaves = state[REDUCER_KEY].haveCaves,
		position = state[REDUCER_KEY].position,
		seed = state[REDUCER_KEY].seed,
		size = state[REDUCER_KEY].size,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToGenerate = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchSetBiomeSelection = function (biome, value)
			dispatchToGenerate(SetBiomeSelection(biome, value))
		end,
		dispatchSetBiomeSize = function(size)
			dispatchToGenerate(SetBiomeSize(size))
		end,
		dispatchSetHaveCaves = function (haveCaves)
			dispatchToGenerate(SetHaveCaves(haveCaves))
		end,
		dispatchChangePosition = function (position)
			dispatchToGenerate(ChangePosition(position))
		end,
		dispatchSetSeed = function(seed)
			dispatchToGenerate(SetSeed(seed))
		end,
		dispatchChangeSize = function(size)
			dispatchToGenerate(ChangeSize(size))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Generate)
