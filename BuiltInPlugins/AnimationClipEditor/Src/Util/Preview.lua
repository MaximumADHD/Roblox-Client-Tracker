--[[
	A class which is created from the current selected keyframes or events
	and can make transforms based on the current selection without
	editing the actual AnimationData itself. This is used to show a live
	preview of keyframes or events as the user is still dragging or scaling them.

	Transformations that take place here are for display only.
	When the user finishes a transform, the Preview is destroyed and the
	actual AnimationData is updated using the appropriate thunks.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local Preview = {}
Preview.__index = Preview

local function buildPreview(animationData, selectedKeyframes)
	local previewKeyframes = {}
	local previewData = {}
	for instanceName, instance in pairs(selectedKeyframes) do
		previewKeyframes[instanceName] = {}
		previewData[instanceName] = {}
		for trackName, _ in pairs(instance) do
			local keyframes = Cryo.Dictionary.keys(instance[trackName])
			local data = animationData.Instances[instanceName].Tracks[trackName].Data
			previewKeyframes[instanceName][trackName] = keyframes
			previewData[instanceName][trackName] = {}
			for index, keyframe in ipairs(keyframes) do
				previewData[instanceName][trackName][index] = data[keyframe]
			end
		end
	end
	return previewKeyframes, previewData
end

function Preview.getFrameBounds(animationData, selectedKeyframes)
	local earliest = AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
	local latest = 0
	for _, instance in pairs(selectedKeyframes) do
		for trackName, _ in pairs(instance) do
			local keyframes = Cryo.Dictionary.keys(instance[trackName])
			table.sort(keyframes)
			if keyframes then
				if keyframes[1] <= earliest then
					earliest = keyframes[1]
				end
				if keyframes[#keyframes] >= latest then
					latest = keyframes[#keyframes]
				end
			end
		end
	end
	return earliest, latest
end

function Preview.new(animationData, selectedKeyframes, pivotFrame)
	local previewKeyframes, previewData = buildPreview(animationData, selectedKeyframes)
	local self = {
		pivotFrame = pivotFrame,
		newFrame = pivotFrame,
		scale = 1,
		previewKeyframes = previewKeyframes,
		previewData = previewData,
	}
	self.earliestFrame, self.latestFrame = Preview.getFrameBounds(animationData, selectedKeyframes)

	setmetatable(self, Preview)

	return self
end

-- Get a preview set of keyframes for when the user drags the selected keyframes
function Preview:moveKeyframes(animationData, selectedKeyframes, newFrame)
	self.newFrame = newFrame
	local pivotFrame = self.pivotFrame
	local earliestFrame = self.earliestFrame
	local latestFrame = self.latestFrame
	local delta = newFrame - pivotFrame
	local maxLength = AnimationData.getMaximumLength(animationData.Metadata.FrameRate)

	local previewKeyframes = self.previewKeyframes
	for instanceName, instance in pairs(selectedKeyframes) do
		for trackName, _ in pairs(instance) do
			local keyframes = Cryo.Dictionary.keys(instance[trackName])
			previewKeyframes[instanceName][trackName] = Cryo.List.map(keyframes, function(frame)
				return math.clamp(frame + delta, frame - earliestFrame, maxLength - (latestFrame - frame))
			end)
		end
	end
end

-- Get a preview set of keyframes for when the user scales the selected keyframes
function Preview:scaleKeyframes(animationData, selectedKeyframes, newFrame, startFrame)
	self.newFrame = newFrame
	local pivotFrame = self.pivotFrame
	local delta = (pivotFrame == self.latestFrame) and (pivotFrame - newFrame) or (newFrame - pivotFrame)
	self.scale = delta / (self.latestFrame - self.earliestFrame)
	local maxLength = AnimationData.getMaximumLength(animationData.Metadata.FrameRate)

	local previewKeyframes = self.previewKeyframes
	for instanceName, instance in pairs(selectedKeyframes) do
		for trackName, _ in pairs(instance) do
			local keyframes = Cryo.Dictionary.keys(instance[trackName])
			previewKeyframes[instanceName][trackName] = Cryo.List.map(keyframes, function(frame)
				local newFrame = KeyframeUtils.getNearestFrame(pivotFrame + ((frame - pivotFrame) * self.scale))
				return math.clamp(newFrame, startFrame, maxLength)
			end)
		end
	end
end

-- Events
local function buildPreviewEvents(selectedEvents)
	local events = Cryo.Dictionary.keys(selectedEvents)
	table.sort(events)
	return events
end

function Preview.getEventBounds(animationData, selectedEvents)
	local earliest = AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
	local latest = 0
	local eventFrames = Cryo.Dictionary.keys(selectedEvents)
	table.sort(eventFrames)
	if eventFrames then
		if eventFrames[1] <= earliest then
			earliest = eventFrames[1]
		end
		if eventFrames[#eventFrames] >= latest then
			latest = eventFrames[#eventFrames]
		end
	end
	return earliest, latest
end

function Preview.newEvents(animationData, selectedEvents, pivotFrame)
	local self = {
		pivotFrame = pivotFrame,
		newFrame = pivotFrame,
		previewEvents = buildPreviewEvents(selectedEvents),
	}
	self.earliestFrame, self.latestFrame = Preview.getEventBounds(animationData, selectedEvents)

	setmetatable(self, Preview)

	return self
end

-- Get a preview set of events for when the user drags the selected events
function Preview:moveEvents(animationData, selectedEvents, newFrame)
	self.newFrame = newFrame
	local pivotFrame = self.pivotFrame
	local latestFrame = self.latestFrame
	local delta = newFrame - pivotFrame
	local earliestFrame = self.earliestFrame
	local maxLength = AnimationData.getMaximumLength(animationData.Metadata.FrameRate)

	local newPreviewEvents = buildPreviewEvents(selectedEvents)

	if earliestFrame + delta <= 0 then
		self.newFrame = pivotFrame - earliestFrame
	end
	if latestFrame + delta > maxLength then
		self.newFrame = maxLength - (latestFrame - pivotFrame)
	end

	self.previewEvents = Cryo.List.map(newPreviewEvents, function(frame)
		return math.clamp(frame + delta, frame - earliestFrame, maxLength - (latestFrame - frame))
	end)
end

return Preview