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

local DragContext = {}
DragContext.__index = DragContext

function DragContext.new(animationData, selectedKeyframes, pivotFrame)
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

	local earliestFrame, latestFrame = AnimationData.getSelectionBounds(animationData, selectedKeyframes)

	local self = {
		animationData = animationData,
		selectedKeyframes = selectedKeyframes,
		pivotFrame = pivotFrame,
		newFrame = pivotFrame,
		scale = 1,
		earliestFrame = earliestFrame,
		latestFrame = latestFrame,
	}

	setmetatable(self, DragContext)

	return self
end

-- Update metadata for when the user drags the selected keyframes
function DragContext:moveKeyframes(newFrame)
	self.newFrame = newFrame
end

-- Update metadata for when the user scales the selected keyframes
function DragContext:scaleKeyframes(newFrame)
	self.newFrame = newFrame
	local pivotFrame = self.pivotFrame
	local delta = (pivotFrame == self.latestFrame) and (pivotFrame - newFrame) or (newFrame - pivotFrame)
	self.scale = delta / (self.latestFrame - self.earliestFrame)
end

-- Events
function DragContext.newEvents(animationData, selectedEvents, pivotFrame)
	-- Only deepCopy the events, other data will be left untouched
	animationData = Cryo.Dictionary.join({}, animationData)
	animationData.Events = deepCopy(animationData.Events)
	selectedEvents = deepCopy(selectedEvents)

	local self = {
		pivotFrame = pivotFrame,
		newFrame = pivotFrame,
		animationData = animationData,
		selectedEvents = selectedEvents,
	}

	setmetatable(self, DragContext)

	return self
end

-- Update metadata for when the user drags the selected events
function DragContext:moveEvents(newFrame)
	self.newFrame = newFrame
end

return DragContext