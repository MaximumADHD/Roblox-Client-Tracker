local Plugin = script.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)

local makeTerrainGenerator = require(script.Parent.makeTerrainGenerator)

local TerrainGeneration = {}
TerrainGeneration.__index = TerrainGeneration

function TerrainGeneration.new(options)
	assert(options and type(options) == "table", "TerrainGeneration requires an options table")

	local self = setmetatable({
		_terrain = options.terrain,
		_localization = options.localization,

		_generateSettings = {
			position = Vector3.new(0, 0, 0),
			size = Vector3.new(0, 0, 0),
			biomeSelection = {},
			biomeSize = 0,
			haveCaves = false,
			seed = "0",
		},

		-- True once start() is called and we've created a generator
		-- False once we're done with the generator
		-- Does not indicate whether the generator is actively running or if we're paused
		_generating = false,
		_generateStartTime = 0,

		-- Generator instance that actually does the terrain generating
		_generator = nil,
		-- Our connections to signals from the generator
		_generatorProgressConnection = nil,
		_generatorPausedConnection = nil,
		_generatorFinishedConnection = nil,

		-- Signals that external sources connect to (e.g. Roact UI)
		_generatingStateChangedSignal = Signal.new(),
		_generatingProgressUpdateSignal = Signal.new(),
		_generatingPausedSignal = Signal.new(),
		_generatingFinishedSignal = Signal.new(),
	}, TerrainGeneration)

	assert(self._terrain, "TerrainGeneration.new() requires a terrain instance")

	-- These functions are connected to the signals from the generator
	self._onGeneratorProgressUpdate = function(progress)
		-- Pass the progress on to our subscribers
		self._generatingProgressUpdateSignal:fire(progress)
	end

	self._onGeneratorPaused = function(paused)
		-- Pass the paused update on to our subscribers
		self._generatingPausedSignal:fire(paused)
	end

	self._onGeneratorFinished = function()
		local endTime = tick()
		print(self._localization:getText("Generate", "GenerationFinished", endTime - self._generateStartTime))

		-- Update our subscribers first
		self._generatingFinishedSignal:fire()
		-- Before killing our generator
		self:_stopAndClearGenerator()
	end

	return self
end

function TerrainGeneration:subscribeToStartStopGeneratingChanged(...)
	return self._generatingStateChangedSignal:connect(...)
end

function TerrainGeneration:subscribeToProgressUpdate(...)
	return self._generatingProgressUpdateSignal:connect(...)
end

function TerrainGeneration:subscribeToPaused(...)
	return self._generatingPausedSignal:connect(...)
end

function TerrainGeneration:subscribeToFinished(...)
	return self._generatingFinishedSignal:connect(...)
end

function TerrainGeneration:isGenerating()
	return self._generating
end

function TerrainGeneration:getProgress()
	return self._generator and self._generator.getProgress() or 0
end

function TerrainGeneration:isPaused()
	if self._generator then
		return self._generator.isPaused()
	end
	return false
end

-- Updates terrain generation settings with new values
-- Does not modify an in-progress generation
-- Only saves these for the next generation
function TerrainGeneration:updateSettings(newSettings)
	self._generateSettings = Cryo.Dictionary.join(self._generateSettings, newSettings)
end

function TerrainGeneration:destroy()
	-- TerrainGeneration is going away so tell our generator to stop
	self:cancelGeneration()
end

function TerrainGeneration:startGeneration()
	if self._generating or self._generator then
		return
	end

	self:_setGenerating(true)

	local position = self._generateSettings.position
	local size = self._generateSettings.size
	local seed = self._generateSettings.seed
	local biomes = self._generateSettings.biomeSelection

	-- Position and size from generateSettings are dictionaries, so turn them into Vector3s
	local positionV3 = Vector3.new(position.X, position.Y, position.Z)
	local sizeV3 = Vector3.new(size.X, size.Y, size.Z)

	-- Biome selection is a table, so copy it before sending to the generator
	local biomesCopy = Cryo.Dictionary.join(biomes, {})

	local localizedBiomes = {}
	for biome, selected in pairs(biomes) do
		if selected then
			table.insert(localizedBiomes, self._localization:getText("Generate", Constants.BiomeToLocalizationKey[biome]))
		end
	end
	local biomesStr = table.concat(localizedBiomes, ", ")

	print(self._localization:getText("Generate", "StartGeneration",
		tostring(sizeV3), tostring(positionV3), tostring(seed), biomesStr
	))

	-- Copy the generate settings table in case it is modified whilst we are generating
	self._generator = makeTerrainGenerator(self._terrain, {
		position = positionV3,
		size = sizeV3,
		biomeSelection = biomesCopy,
		biomeSize = self._generateSettings.biomeSize,
		haveCaves = self._generateSettings.haveCaves,
		seed = seed,
	})

	-- Start listening to what the generator is doing
	self._generatorProgressConnection = self._generator.progressSignal:connect(self._onGeneratorProgressUpdate)
	self._generatorPausedConnection = self._generator.pauseSignal:connect(self._onGeneratorPaused)
	self._generatorFinishedConnection = self._generator.finishSignal:connect(self._onGeneratorFinished)

	-- Record how long the generation takes
	self._generateStartTime = tick()

	-- Run the generator on a different thread
	spawn(self._generator.start)
end

function TerrainGeneration:togglePauseGeneration()
	if not self._generator then
		return
	end

	if self._generator.isPaused() then
		self._generator.resume()
	else
		self._generator.pause()
	end
end

function TerrainGeneration:cancelGeneration()
	if not self._generator then
		return
	end

	self._generator.cancel()
end

function TerrainGeneration:_setGenerating(generating)
	if generating ~= self._generating then
		self._generating = generating
		self._generatingStateChangedSignal:fire(generating)
	end
end

function TerrainGeneration:_stopAndClearGenerator()
	if self._generatorProgressConnection then
		self._generatorProgressConnection:disconnect()
		self._generatorProgressConnection = nil
	end

	if self._generatorPausedConnection then
		self._generatorPausedConnection:disconnect()
		self._generatorPausedConnection = nil
	end

	if self._generatorFinishedConnection then
		self._generatorFinishedConnection:disconnect()
		self._generatorFinishedConnection = nil
	end

	self._generator = nil
	self:_setGenerating(false)
end

return TerrainGeneration
