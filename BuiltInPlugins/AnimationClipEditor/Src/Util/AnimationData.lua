--[[
	Utilities for interacting with the AnimationEditor animation data format.

	Handles:
		-Creation of new AnimationData tables.
		-Exporting to and importing from CFrame[][]
			for interfacing with the Roblox API for animations.
		-Helper functions for keyframe manipulation thunks.
]]

local Plugin = script.Parent.Parent.Parent
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local Templates = require(Plugin.Src.Util.Templates)
local Constants = require(Plugin.Src.Util.Constants)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Cryo = require(Plugin.Packages.Cryo)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

local AnimationData = {}

function AnimationData.new(name, rootType)
	assert(name ~= nil, "Expected a name for the AnimationData.")

	local animationData = Templates.animationData()
	animationData.Metadata.Name = name
	animationData.Instances.Root.Type = rootType
	return animationData
end

-- Deprecated when GetFFlagUseTicks is ON
-- We don't want to expose the FrameRate
function AnimationData.new_deprecated(name, frameRate, rootType)
	assert(name ~= nil, "Expected a name for the AnimationData.")
	assert(frameRate ~= nil, "Expected a frameRate for the AnimationData.")
	assert(frameRate > 0, "Expected frameRate to be positive.")

	local animationData = Templates.animationData()
	animationData.Metadata.Name = name
	animationData.Metadata.FrameRate = frameRate
	animationData.Instances.Root.Type = rootType
	return animationData
end

function AnimationData.newRigAnimation(name)
	if GetFFlagUseTicks() then
		return AnimationData.new(name, Constants.INSTANCE_TYPES.Rig)
	else
		return AnimationData.new_deprecated(name, Constants.DEFAULT_FRAMERATE, Constants.INSTANCE_TYPES.Rig)
	end
end

function AnimationData.toCFrameArray(bones, data, frameRate)
	assert(bones ~= nil, "No bones array was provided.")
	assert(data ~= nil, "No data table was provided.")
	assert(typeof(bones) == "table", "Bones should be an array of bone names.")
	assert(typeof(data) == "table", "Data must be an AnimationData table.")

	local inputFrameRate = GetFFlagUseTicks() and Constants.TICK_FREQUENCY or data.Metadata.FrameRate
	local outputFrameRate = frameRate or inputFrameRate
	assert(outputFrameRate ~= nil, "No frame rate was found for exporting.")
	assert(inputFrameRate > 0, "Input frame rate must be positive.")
	assert(outputFrameRate > 0, "Output frame rate must be positive.")

	local inputLength = data.Metadata.EndTick - data.Metadata.StartTick
	local rateConversion = inputFrameRate / outputFrameRate
	local outputLength = inputLength / rateConversion

	local poses = {}

	local skeleton = data.Instances.Root
	assert(skeleton.Type == "Skeleton", "Can only export Skeleton animations to CFrame[][]")

	local tracks = skeleton.Tracks
	for boneIndex, boneName in ipairs(bones) do
		local keyframes = {}
		if tracks[boneName] then
			for tick = 1, outputLength do
				local value = KeyframeUtils:getValue(tracks[boneName], tick * rateConversion)
				keyframes[tick] = value
			end
		end
		poses[boneIndex] = keyframes
	end

	return poses
end

function AnimationData.fromCFrameArray(bones, poses, name, frameRate)
	assert(bones ~= nil, "No bones array was provided.")
	assert(typeof(bones) == "table", "Bones should be an array of bone names.")

	local animationData = AnimationData.new(name, frameRate)
	animationData.Instances.Root.Type = "Skeleton"
	local rootTracks = animationData.Instances.Root.Tracks

	for boneIndex, boneName in ipairs(bones) do
		if #poses[boneIndex] > 0 then
			rootTracks[boneName] = Templates.track(Constants.TRACK_TYPES.CFrame)
			animationData.Metadata.EndTick = math.max(animationData.Metadata.EndTick, #poses[boneIndex])
			for tick = 1, #poses[boneIndex] do
				table.insert(rootTracks[boneName].Keyframes, tick)
				local newKeyframe = Templates.keyframe()
				newKeyframe.Value = poses[boneIndex][tick]
				rootTracks[boneName].Data[tick] = newKeyframe
			end
		end
	end

	return animationData
end

-- Adds an event to the events table at the given tick,
-- with the given name and value.
function AnimationData.addEvent(events, tick, name, value)
	local eventKeyframes = events.Keyframes
	local eventData = events.Data
	if not eventData[tick] then
		local insertIndex = KeyframeUtils.findInsertIndex(eventKeyframes, tick)
		if insertIndex then
			table.insert(eventKeyframes, insertIndex, tick)
		end
		eventData[tick] = {}
	end
	if not eventData[tick][name] then
		eventData[tick][name] = value or ""
	end
end

-- Moves all events at a tick to a new tick.
function AnimationData.moveEvents(events, oldTick, newTick)
	if oldTick == newTick then
		return
	end

	local eventKeyframes = events.Keyframes
	local eventData = events.Data
	if eventData[oldTick] then
		local oldIndex = KeyframeUtils.findKeyframe(eventKeyframes, oldTick)
		table.remove(eventKeyframes, oldIndex)

		local insertIndex = KeyframeUtils.findInsertIndex(eventKeyframes, newTick)
		if insertIndex then
			table.insert(eventKeyframes, insertIndex, newTick)
		end
		eventData[newTick] = deepCopy(eventData[oldTick])
		eventData[oldTick] = nil
	end
end

-- Deletes all events at the given tick.
function AnimationData.deleteEvents(events, tick)
	local eventKeyframes = events.Keyframes
	local eventData = events.Data
	if eventData[tick] then
		local oldIndex = KeyframeUtils.findKeyframe(eventKeyframes, tick)
		table.remove(eventKeyframes, oldIndex)
		eventData[tick] = nil
	end
end

-- Edits the value of the event at the given tick and name.
function AnimationData.setEventValue(events, tick, name, value)
	local eventData = events.Data
	if eventData[tick] and eventData[tick][name] then
		eventData[tick][name] = value
	end
end

-- Removes an event at tick and name from the events table.
function AnimationData.removeEvent(events, tick, name)
	local eventKeyframes = events.Keyframes
	local eventData = events.Data
	if eventData[tick] and eventData[tick][name] then
		eventData[tick][name] = nil
		if isEmpty(eventData[tick]) then
			eventData[tick] = nil
			local keyIndex = KeyframeUtils.findKeyframe(eventKeyframes, tick)
			table.remove(eventKeyframes, keyIndex)
		end
	end
end

-- Adds a new track at trackName to the given track.
function AnimationData.addTrack(tracks, trackName, trackType)
	tracks[trackName] = Templates.track(trackType)
end

-- Adds a new keyframe at the given tick with the given value.
function AnimationData.addKeyframe(track, tick, value)
	local trackKeyframes = track.Keyframes
	local insertIndex = KeyframeUtils.findInsertIndex(trackKeyframes, tick)
	if insertIndex then
		table.insert(trackKeyframes, insertIndex, tick)
		track.Data[tick] = Templates.keyframe()
		track.Data[tick].Value = value
	end
end

function AnimationData.addDefaultKeyframe(track, tick, trackType)
	local value = TrackUtils.getDefaultValueByType(trackType)
	AnimationData.addKeyframe(track, tick, value)
end

-- Finds a named keyframe at oldTick and moves it to newTick if it exists
-- and if no more keyframes would exist at the old name.
function AnimationData.moveNamedKeyframe(data, oldTick, newTick)
	if data.Events then
		local namedKeyframes = data.Events.NamedKeyframes
		if namedKeyframes and namedKeyframes[oldTick] then
			local oldName = namedKeyframes[oldTick]
			local shouldMove = true
			for _, instance in pairs(data.Instances) do
				local summaryKeyframes = TrackUtils.getSummaryKeyframes(instance.Tracks, data.Metadata.StartTick, data.Metadata.EndTick)
				for _, tick in ipairs(summaryKeyframes) do
					if tick == oldTick then
						shouldMove = false
					end
				end
			end
			if shouldMove then
				AnimationData.setKeyframeName(data, oldTick, nil)
				AnimationData.setKeyframeName(data, newTick, oldName)
			end
		end
	end
end

-- Moves a keyframe from oldTick to newTick.
function AnimationData.moveKeyframe(track, oldTick, newTick)
	if oldTick == newTick then
		return
	end

	local trackKeyframes = track.Keyframes
	local oldIndex = KeyframeUtils.findKeyframe(trackKeyframes, oldTick)
	table.remove(trackKeyframes, oldIndex)

	local insertIndex = KeyframeUtils.findInsertIndex(trackKeyframes, newTick)
	if insertIndex then
		table.insert(trackKeyframes, insertIndex, newTick)
	end

	track.Data[newTick] = deepCopy(track.Data[oldTick])
	track.Data[oldTick] = nil
end

-- Deletes the keyframe at the given track and tick.
function AnimationData.deleteKeyframe(track, tick)
	track.Data[tick] = nil
	local index = KeyframeUtils.findKeyframe(track.Keyframes, tick)
	table.remove(track.Keyframes, index)
end

-- Sets the data for the keyframe at the given track and tick.
function AnimationData.setKeyframeData(track, tick, data)
	track.Data[tick] = Cryo.Dictionary.join(track.Data[tick], data)
end

-- Renames a summary keyframe in the animation.
function AnimationData.setKeyframeName(data, tick, name)
	if name == Constants.DEFAULT_KEYFRAME_NAME then
		data.Events.NamedKeyframes[tick] = nil
	else
		data.Events.NamedKeyframes[tick] = name
	end
end

-- Removes summary keyframe names which are no longer attached to keyframes
function AnimationData.validateKeyframeNames(data)
	if data.Events then
		local namedKeyframes = data.Events.NamedKeyframes
		if namedKeyframes and not isEmpty(namedKeyframes) then
			local validTicks = {}
			for _, instance in pairs(data.Instances) do
				local summaryKeyframes = TrackUtils.getSummaryKeyframes(instance.Tracks, data.Metadata.StartTick, data.Metadata.EndTick)
				for _, tick in ipairs(summaryKeyframes) do
					validTicks[tick] = true
				end
			end
			for tick, _ in pairs(namedKeyframes) do
				if not validTicks[tick] then
					AnimationData.setKeyframeName(data, tick, nil)
				end
			end
		end
	end
end

function AnimationData.setEndTick(data)
	local endTick = 0
	if data and data.Instances then
		for _, instance in pairs(data.Instances) do
			if instance.Tracks then
				for _, track in pairs(instance.Tracks) do
					if track.Keyframes then
						local lastKey = track.Keyframes[#track.Keyframes]
						endTick = math.max(endTick, lastKey)
					end
				end
			end
		end
	end
	data.Metadata.EndTick = endTick
end

function AnimationData.getMaximumLength(framerate)
	return framerate * Constants.MAX_TIME
end

function AnimationData.setLooping(data, looping)
	if data then
		data.Metadata.Looping = looping
	end
end

-- Used to check whether an animation has keyframes in between frames.
-- If all keyframes are on frames at 30 FPS, this will return true.
function AnimationData.isQuantized(data)
	if data and data.Instances then
		for _, instance in pairs(data.Instances) do
			for _, track in pairs(instance.Tracks) do
				for _, keyframe in ipairs(track.Keyframes) do
					if keyframe ~= math.floor(keyframe) then
						return false
					end
				end
			end
		end
		return true
	end
end

-- removes all keyframes that exist past the maximum animation
-- time allowed, returns true if keyframes were removed.
function AnimationData.removeExtraKeyframes(data)
	local removed = false

	if data and data.Instances and data.Metadata then
		local maxLength = GetFFlagUseTicks() and Constants.MAX_ANIMATION_LENGTH or AnimationData.getMaximumLength(data.Metadata.FrameRate)

		-- first pass: remove keyframes
		local keysToRemove = {}

		-- get range of keyframe indices past max tick limit
		for instanceName, instance in pairs(data.Instances) do
			keysToRemove[instanceName] = {}
			for trackName, track in pairs(instance.Tracks) do
				local minIndex = KeyframeUtils.findNearestKeyframes(track.Keyframes, maxLength)
				keysToRemove[instanceName][trackName] = {
					Start = minIndex,
					End = #track.Keyframes,
				}
			end
		end

		-- remove each keyframe in range
		for instance, tracks in pairs(keysToRemove) do
			for track, range in pairs(tracks) do
				for i = range.End, range.Start, -1 do
					local keyframes = data.Instances[instance].Tracks[track].Keyframes
					local kfData = data.Instances[instance].Tracks[track].Data
					local tick = keyframes[i]
					if tick > maxLength then
						removed = true
						kfData[tick] = nil
						table.remove(keyframes, i)
					end
				end
			end
		end

		-- second pass: remove events
		if data.Events and data.Events.Keyframes then
			local eventsToRemove = {}
			for _, tick in ipairs(data.Events.Keyframes) do
				if tick > maxLength then
					removed = true
					table.insert(eventsToRemove, tick)
				end
			end

			for _, tick in ipairs(eventsToRemove) do
				AnimationData.deleteEvents(data.Events, tick)
			end
		end
	end

	return removed
end

function AnimationData.getSelectionBounds(data, selectedKeyframes)
	if not selectedKeyframes or isEmpty(selectedKeyframes) then
		return nil, nil
	end

	local earliest = GetFFlagUseTicks() and Constants.MAX_ANIMATION_LENGTH or AnimationData.getMaximumLength(data.Metadata.FrameRate)
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

function AnimationData.getEventBounds(animationData, selectedEvents)
	local earliest = GetFFlagUseTicks() and Constants.MAX_ANIMATION_LENGTH or AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
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

return AnimationData
