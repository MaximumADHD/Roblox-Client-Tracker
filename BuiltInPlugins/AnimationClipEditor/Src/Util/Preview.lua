--[[
	A class which is created from the current selected keyframes or events
	and can make transforms based on the current selection without
	editing the actual AnimationData itself. This is used to show a live
	preview of keyframes or events as the user is still dragging or scaling them.

	Transformations that take place here are for display only.
	When the user finishes a transform, the Preview is destroyed and the
	actual AnimationData is updated using the appropriate thunks.
]]

-- TODO: This file will become obsolete when GetFFlagRealtimeChanges is retired

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagFixScaleKeyframeClobbering = require(Plugin.LuaFlags.GetFFlagFixScaleKeyframeClobbering)
local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

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
	return AnimationData.getSelectionBounds(animationData, selectedKeyframes)
end

function Preview.new(animationData, selectedKeyframes, pivotTick)
	local previewKeyframes, previewData = buildPreview(animationData, selectedKeyframes)
	local self = {
		pivotTick = pivotTick,
		newTick = pivotTick,
		scale = 1,
		previewKeyframes = previewKeyframes,
		previewData = previewData,
	}
	self.earliestTick, self.latestTick = Preview.getFrameBounds(animationData, selectedKeyframes)

	setmetatable(self, Preview)

	return self
end

-- Get a preview set of keyframes for when the user drags the selected keyframes
function Preview:moveKeyframes(animationData, selectedKeyframes, newTick)
	self.newTick = newTick
	local pivotTick = self.pivotTick
	local earliestTick = self.earliestTick
	local latestTick = self.latestTick
	local delta = newTick - pivotTick
	local maxLength = GetFFlagUseTicks() and Constants.MAX_ANIMATION_LENGTH or AnimationData.getMaximumLength(animationData.Metadata.FrameRate)

	local previewKeyframes = self.previewKeyframes
	for instanceName, instance in pairs(selectedKeyframes) do
		for trackName, _ in pairs(instance) do
			local keyframes = Cryo.Dictionary.keys(instance[trackName])
			previewKeyframes[instanceName][trackName] = Cryo.List.map(keyframes, function(tick)
				return math.clamp(tick + delta, tick - earliestTick, maxLength - (latestTick - tick))
			end)
		end
	end
end

-- Get a preview set of keyframes for when the user scales the selected keyframes
function Preview:scaleKeyframes(animationData, selectedKeyframes, newTick, startTick)
	self.newTick = newTick
	local pivotTick = self.pivotTick
	local delta = (pivotTick == self.latestTick) and (pivotTick - newTick) or (newTick - pivotTick)
	self.scale = delta / (self.latestTick - self.earliestTick)
	local maxLength = GetFFlagUseTicks() and Constants.MAX_ANIMATION_LENGTH or AnimationData.getMaximumLength(animationData.Metadata.FrameRate)

	local previewKeyframes = self.previewKeyframes
	for instanceName, instance in pairs(selectedKeyframes) do
		for trackName, _ in pairs(instance) do
			local keyframes = Cryo.Dictionary.keys(instance[trackName])
			previewKeyframes[instanceName][trackName] = Cryo.List.map(keyframes, function(tick)
				local nearestTick = GetFFlagUseTicks() and KeyframeUtils.getNearestTick(pivotTick + ((tick - pivotTick) * self.scale))
					or KeyframeUtils.getNearestFrame_deprecated(pivotTick + ((tick - pivotTick) * self.scale))
				if GetFFlagFixScaleKeyframeClobbering() then
					return math.clamp(nearestTick, 0, maxLength)
				else
					return math.clamp(nearestTick, startTick, maxLength)
				end
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
	local earliest = GetFFlagUseTicks() and Constants.MAX_ANIMATION_LENGTH or AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
	local latest = 0
	local eventTicks = Cryo.Dictionary.keys(selectedEvents)
	table.sort(eventTicks)
	if eventTicks then
		if eventTicks[1] <= earliest then
			earliest = eventTicks[1]
		end
		if eventTicks[#eventTicks] >= latest then
			latest = eventTicks[#eventTicks]
		end
	end
	return earliest, latest
end

function Preview.newEvents(animationData, selectedEvents, pivotTick)
	local self = {
		pivotTick = pivotTick,
		newTick = pivotTick,
		previewEvents = buildPreviewEvents(selectedEvents),
	}
	self.earliestTick, self.latestTick = Preview.getEventBounds(animationData, selectedEvents)

	setmetatable(self, Preview)

	return self
end

-- Get a preview set of events for when the user drags the selected events
function Preview:moveEvents(animationData, selectedEvents, newTick)
	self.newTick = newTick
	local pivotTick = self.pivotTick
	local latestTick = self.latestTick
	local delta = newTick - pivotTick
	local earliestTick = self.earliestTick
	local maxLength = GetFFlagUseTicks() and Constants.MAX_ANIMATION_LENGTH or AnimationData.getMaximumLength(animationData.Metadata.FrameRate)

	local newPreviewEvents = buildPreviewEvents(selectedEvents)

	if earliestTick + delta <= 0 then
		self.newTick = pivotTick - earliestTick
	end
	if latestTick + delta > maxLength then
		self.newTick = maxLength - (latestTick - pivotTick)
	end

	self.previewEvents = Cryo.List.map(newPreviewEvents, function(tick)
		return math.clamp(tick + delta, tick - earliestTick, maxLength - (latestTick - tick))
	end)
end

return Preview