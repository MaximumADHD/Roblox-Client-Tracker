--[[
	A class that holds reference data when the user is performing dragging
	operations such as moving or rescaling keys. This is a subset of the features
	offered by Util.Preview, since that class has become obsolete with the
	changes being applied to animationData and selectedKeyframes in real-time.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local Constants = require(Plugin.Src.Util.Constants)

local DragContext = {}
DragContext.__index = DragContext

function DragContext.new(animationData, selectedKeyframes, pivotTick, pivotValue)
	-- Only deepcopy the selected tracks, the other tracks will be left untouched
	-- during the move/scale operation
	animationData = Cryo.Dictionary.join({}, animationData)
	animationData.Instances = Cryo.Dictionary.join({}, animationData.Instances)
	for instanceName, instance in pairs(selectedKeyframes) do
		animationData.Instances[instanceName] = Cryo.Dictionary.join({}, animationData.Instances[instanceName])
		animationData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, animationData.Instances[instanceName].Tracks)
		local dataInstance = animationData.Instances[instanceName]

		for trackName, _ in pairs(instance) do
			dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])
		end
	end

	selectedKeyframes = deepCopy(selectedKeyframes)

	local earliestTick, latestTick = AnimationData.getSelectionBounds(animationData, selectedKeyframes)

	local self = {
		animationData = animationData,
		selectedKeyframes = selectedKeyframes,
		pivotTick = pivotTick,
		newTick = pivotTick,
		pivotValue = pivotValue,
		newValue = pivotValue,
		scale = 1,
		earliestTick = earliestTick,
		latestTick = latestTick,
		dragMode = Constants.DRAG_MODE.Keyframe,
	}

	setmetatable(self, DragContext)

	return self
end

function DragContext.newTangentContext(animationData, instance, path, tck, side)
	local track = AnimationData.getTrack(animationData, instance, path)
	if not track then
		return nil
	end

	local keyframe = track.Data[tck]
	if not keyframe then
		return nil
	end

	local self = {
		instance = instance,
		path = path,
		tck = tck,
		value = keyframe.Value,
		side = side,
		dragMode = Constants.DRAG_MODE.Tangent,
		trackType = track.Type,
	}

	setmetatable(self, DragContext)

	return self
end

-- Update metadata for when the user drags the selected keyframes
function DragContext:moveKeyframes(newTick, newValue)
	self.newTick = newTick
	self.newValue = newValue
end

-- Update metadata for when the user scales the selected keyframes
function DragContext:scaleKeyframes(newTick)
	self.newTick = newTick
	local pivotTick = self.pivotTick
	local delta = (pivotTick == self.latestTick) and (pivotTick - newTick) or (newTick - pivotTick)
	self.scale = delta / (self.latestTick - self.earliestTick)
end

-- Events
function DragContext.newEvents(animationData, selectedEvents, pivotTick)
	-- Only deepCopy the events, other data will be left untouched
	animationData = Cryo.Dictionary.join({}, animationData)
	animationData.Events = deepCopy(animationData.Events)
	selectedEvents = deepCopy(selectedEvents)

	local self = {
		pivotTick = pivotTick,
		newTick = pivotTick,
		animationData = animationData,
		selectedEvents = selectedEvents,
	}

	setmetatable(self, DragContext)

	return self
end

-- Update metadata for when the user drags the selected events
function DragContext:moveEvents(newTick)
	self.newTick = newTick
end

return DragContext