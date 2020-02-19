local Plugin = script.Parent.Parent.Parent
local UILibrary = Plugin.Packages.UILibrary
local Signal = require(UILibrary.Utils.Signal)

local LongOperation = require(Plugin.Src.Util.LongOperation)
local LongOperationQueue = require(Plugin.Src.Util.LongOperationQueue)
local ConversionOperationDetails = require(Plugin.Src.Util.ConversionOperationDetails)

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
	}, PartConverter)

	assert(self._terrain, "PartConverter needs a terrain instance")
	assert(self._localization, "PartConverter needs a localization instance")

	-- When a new operation starts (e.g. transitioning from GetConvertibleShapes->ConvertShapesToMaterial)
	-- Store this data so that the progress bar can show what's happening
	self._operationStartedConnection = self._operationQueue.NextOperationStarted:connect(function(operation)
		self:_setConvertState(operation:getName())
	end)

	-- When the queue finishes, reset our own state
	self._queueRunningChangedConnection = self._operationQueue.QueueRunningChanged:connect(function(running)
		if not running then
			self:_setConvertState(PartConverter.NOT_RUNNING_CONVERT_STATE)
		end
	end)

	return self
end

function PartConverter:destroy()
	if self._operationStartedConnection then
		self._operationStartedConnection:disconnect()
		self._operationStartedConnection = nil
	end

	if self._queueRunningChangedConnection then
		self._queueRunningChangedConnection:disconnect()
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

	self._operationQueue
		:reset()
		:addToQueue(LongOperation.new(ConversionOperationDetails.GetConvertibleShapes))
		:addToQueue(LongOperation.new(ConversionOperationDetails.ConvertShapesToMaterial))
		:start({
			terrain = self._terrain,
			localization = self._localization,
			instances = instances,
			material = material,
		})
end

function PartConverter:convertInstancesToBiome(instances, generateSettings)
	if self:isRunning() then
		return
	end

	self._operationQueue
		:reset()
		:addToQueue(LongOperation.new(ConversionOperationDetails.GetConvertibleShapes))
		:addToQueue(LongOperation.new(ConversionOperationDetails.ConvertShapesToBiomes))
		:start({
			terrain = self._terrain,
			localization = self._localization,
			instances = instances,
			generateSettings = generateSettings,
		})
end

function PartConverter:subscribeToConvertStateChanged(...)
	return self._convertStateChanged:connect(...)
end

function PartConverter:getConvertState()
	return self._convertState
end

function PartConverter:_setConvertState(convertState)
	if self._convertState ~= convertState then
		self._convertState = convertState
		self._convertStateChanged:fire(convertState)
	end
end

--[[
	Methods that pass through to our operation queue
]]
function PartConverter:subscribeToRunningChanged(...)
	return self._operationQueue.QueueRunningChanged:connect(...)
end

function PartConverter:subscribeToPausedChanged(...)
	return self._operationQueue.PausedChanged:connect(...)
end

function PartConverter:subscribeToProgressChanged(...)
	return self._operationQueue.ProgressChanged:connect(...)
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
