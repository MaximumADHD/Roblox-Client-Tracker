local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local ToolParts = script.Parent.ToolParts
local BiomeSettingsFragment = require(ToolParts.BiomeSettingsFragment)
local ButtonGroup = require(ToolParts.ButtonGroup)
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local OtherGenerateSettings = require(ToolParts.OtherGenerateSettings)
local Panel = require(ToolParts.Panel)
local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)

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

	self.state = {
		mapSettingsValid = true,
	}

	self.selectBiome = function(biome)
		local biomes = self.props.biomeSelection
		local value = not biomes[biome]

		self.props.dispatchSetBiomeSelection(biome, value)
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
		self.props.TerrainGeneration:updateSettings({
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
		self.props.TerrainGeneration:startGeneration()
	end

	self.onGenerationPauseRequested = function()
		self.props.TerrainGeneration:togglePauseGeneration()
	end

	self.onGenerationCancelRequested = function()
		self.props.TerrainGeneration:cancelGeneration()
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

function Generate:render()
	local localization = self.props.Localization

	local position = self.props.position
	local size = self.props.size
	local biomeSelection = self.props.biomeSelection
	local biomeSize = self.props.biomeSize
	local haveCaves = self.props.haveCaves
	local seed = self.props.seed
	local selectBiome = self.selectBiome

	local generateInProgress = self.props.TerrainGeneration:isGenerating()
	local generateProgress = generateInProgress and self.props.TerrainGeneration:getProgress() or 0
	local generatePaused = generateInProgress and self.props.TerrainGeneration:isPaused() or false

	local generateIsActive = self.state.mapSettingsValid and not generateInProgress

	return Roact.createFragment({
		MapSettingsWithPreview = Roact.createElement(MapSettingsWithPreview, {
			toolName = self.props.toolName,
			LayoutOrder = 1,

			Position = position,
			Size = size,

			OnPositionChanged = self.props.dispatchChangePosition,
			OnSizeChanged = self.props.dispatchChangeSize,
			SetMapSettingsValid = self.setMapSettingsValidated,
			SetWarnings = self.setWarnings,
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

		ProgressDialog = generateInProgress and Roact.createElement(ProgressDialog, {
			Title = localization:getText("Generate", "GenerateProgressTitle"),
			SubText = localization:getText("Generate", "GenerateVoxels"),

			Progress = generateProgress,
			IsPaused = generatePaused,

			OnPauseButtonClicked = self.onGenerationPauseRequested,
			OnCancelButtonClicked = self.onGenerationCancelRequested,
		}),
	})
end

Generate = withContext({
	Localization = ContextServices.Localization,
	TerrainGeneration = ContextItems.TerrainGeneration,
})(Generate)

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
