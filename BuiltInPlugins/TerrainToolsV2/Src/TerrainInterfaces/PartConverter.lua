local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Cryo = require(Plugin.Packages.Cryo)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and require(Framework.Util) or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local ConversionOperationDetails = require(Plugin.Src.Util.ConversionOperationDetails)
local LongOperation = require(Plugin.Src.Util.LongOperation)
local LongOperationQueue = require(Plugin.Src.Util.LongOperationQueue)
local PartConverterVisuals = require(Plugin.Src.Util.PartConverterVisuals)

local PartConverter = {}
PartConverter.__index = PartConverter

PartConverter.NOT_RUNNING_CONVERT_STATE = "NotRunning"

function PartConverter.new(options)
	assert(type(options) == "table", "PartConverter needs an options table")

	local self = setmetatable({
		_terrain = options.terrain,
		_localization = options.localization,
		_operationQueue = LongOperationQueue.new({
			timeBetweenOperations = 0.1,
		}),

		_convertState = PartConverter.NOT_RUNNING_CONVERT_STATE,
		_convertStateChanged = Signal.new(),

		-- We only have a selectionModel when the convert tool is active
		_selectionModel = nil,
		-- We only have a visuals object after a conversion has started
		_visuals = nil,
		_visualsFinishedConnection = nil,
	}, PartConverter)

	assert(self._terrain, "PartConverter needs a terrain instance")
	assert(self._localization, "PartConverter needs a localization instance")

	-- When a new operation starts (e.g. transitioning from GetTargetShapes->ConvertShapesToMaterial)
	-- Store this data so that the progress bar can show what's happening
	self._operationStartedConnection = self._operationQueue.NextOperationStarted:Connect(function(operation)
		self:_setConvertState(operation:getName())
	end)

	-- When the queue finishes, reset our own state
	self._queueRunningChangedConnection = self._operationQueue.QueueRunningChanged:Connect(function(running)
		if not running then
			if self._visuals then
				self._visuals:enterCleanupMode()
			end
			self:_setConvertState(PartConverter.NOT_RUNNING_CONVERT_STATE)
		end
	end)

	self._onVisualsFinished = function()
		self:_destroyVisuals()
	end

	return self
end

-- selectionModel can be nil, meaning we should clear our reference
function PartConverter:setSelectionModel(selectionModel)
	self._selectionModel = selectionModel
	if self._visuals then
		self._visuals:setSelectionModel(selectionModel)
	end
end

function PartConverter:destroy()
	self:setSelectionModel(nil)
	self:_destroyVisuals()

	if self._operationStartedConnection then
		self._operationStartedConnection:Disconnect()
		self._operationStartedConnection = nil
	end

	if self._queueRunningChangedConnection then
		self._queueRunningChangedConnection:Disconnect()
		self._queueRunningChangedConnection = nil
	end

	if self._operationQueue then
		self._operationQueue:destroy()
		self._operationQueue = nil
	end
end

function PartConverter:convertInstancesToMaterial(instances, material)
	if self:isRunning() then
		return
	end

	local targetInstances = Cryo.Dictionary.join(instances, {})

	self:_createNewVisuals(targetInstances)

	self._operationQueue
		:reset()
		:addToQueue(LongOperation.new(ConversionOperationDetails.UpdateInstanceVisuals))
		:addToQueue(LongOperation.new(ConversionOperationDetails.GetTargetShapes))
		:addToQueue(LongOperation.new(ConversionOperationDetails.ConvertShapesToMaterial))
		:start({
			terrain = self._terrain,
			localization = self._localization,

			targetInstances = self._visuals:getTargetInstancesRef(),
			originalVisualsPerInstance = self._visuals:getOriginalVisualsPerInstanceRef(),

			material = material,
		})
end

function PartConverter:convertInstancesToBiome(instances, generateSettings)
	if self:isRunning() then
		return
	end

	local targetInstances = Cryo.Dictionary.join(instances, {})

	self:_createNewVisuals(targetInstances)

	self._operationQueue
		:reset()
		:addToQueue(LongOperation.new(ConversionOperationDetails.UpdateInstanceVisuals))
		:addToQueue(LongOperation.new(ConversionOperationDetails.GetTargetShapes))
		:addToQueue(LongOperation.new(ConversionOperationDetails.ConvertShapesToBiomes))
		:start({
			terrain = self._terrain,
			localization = self._localization,

			targetInstances = self._visuals:getTargetInstancesRef(),
			originalVisualsPerInstance = self._visuals:getOriginalVisualsPerInstanceRef(),

			generateSettings = generateSettings,
		})
end

function PartConverter:subscribeToConvertStateChanged(...)
	return self._convertStateChanged:Connect(...)
end

function PartConverter:getConvertState()
	return self._convertState
end

function PartConverter:_setConvertState(convertState)
	if self._convertState ~= convertState then
		self._convertState = convertState
		self._convertStateChanged:Fire(convertState)
	end
end

function PartConverter:_destroyVisuals()
	if self._visualsFinishedConnection then
		self._visualsFinishedConnection:Disconnect()
		self._visualsFinishedConnection = nil
	end

	if self._visuals then
		self._visuals:destroy()
		self._visuals = nil
	end
end

-- Create "new" visuals because we destroy any that we already have
function PartConverter:_createNewVisuals(instances)
	if self._visuals then
		self:_destroyVisuals()
	end

	self._visuals = PartConverterVisuals.new(instances)
	self._visualsFinishedConnection = self._visuals:subscribeToVisualsFinished(self._onVisualsFinished)
	if self._selectionModel then
		self._visuals:setSelectionModel(self._selectionModel)
	end
end

--[[
	Methods that pass through to our operation queue
]]
function PartConverter:subscribeToRunningChanged(...)
	return self._operationQueue.QueueRunningChanged:Connect(...)
end

function PartConverter:subscribeToPausedChanged(...)
	return self._operationQueue.PausedChanged:Connect(...)
end

function PartConverter:subscribeToProgressChanged(...)
	return self._operationQueue.ProgressChanged:Connect(...)
end

function PartConverter:pause()
	self._operationQueue:pause()
end

function PartConverter:resume()
	self._operationQueue:resume()
end

function PartConverter:togglePause()
	self._operationQueue:togglePause()
end

function PartConverter:cancel()
	self._operationQueue:cancel()
end

function PartConverter:isRunning()
	return self._operationQueue:isQueueRunning()
end

function PartConverter:isPaused()
	return self._operationQueue:isPaused()
end

function PartConverter:getProgress()
	return self._operationQueue:getProgress()
end
--[[
	End methods that pass through to operation queue
]]

return PartConverter
