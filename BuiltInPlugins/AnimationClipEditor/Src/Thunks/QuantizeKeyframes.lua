--[[
	A thunk which quantizes keyframes: It moves keyframes between frames
	to the nearest frame, deleting extra keyframes if necessary. This thunk
	is mainly used to clean up KeyframeSequence animations after import.
]]

local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local function traverseKeyframes(animationData, func, reverseOrder)
	local instances = animationData.Instances
	for instanceName, instance in pairs(instances) do
		local tracks = instance.Tracks
		for trackName, track in pairs(tracks) do
			local keyframes = track.Keyframes
			if reverseOrder then
				for index = #keyframes, 1, -1 do
					local tck = keyframes[index]
					func(instanceName, trackName, tck)
				end
			else
				for _, tck in ipairs(keyframes) do
					func(instanceName, trackName, tck)
				end
			end
		end
	end
end

local function traverseCenters(centers, func)
	for instanceName, instance in pairs(centers) do
		for trackName, track in pairs(instance) do
			for baseFrame, tck in pairs(track) do
				func(instanceName, trackName, baseFrame, tck)
			end
		end
	end
end

return function()
	return function(store)
		local animationData = store:getState().AnimationData
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)

		local leftCenters = {}
		local rightCenters = {}

		-- Save leftmost and rightmost center keyframes
		traverseKeyframes(newData, function(instanceName, trackName, tck)
			local baseFrame = math.floor(tck)
			if tck ~= baseFrame then
				leftCenters[instanceName] = leftCenters[instanceName] or {}
				rightCenters[instanceName] = rightCenters[instanceName] or {}
				leftCenters[instanceName][trackName] = leftCenters[instanceName][trackName] or {}
				rightCenters[instanceName][trackName] = rightCenters[instanceName][trackName] or {}
				local lefts = leftCenters[instanceName][trackName]
				local rights = rightCenters[instanceName][trackName]

				lefts[baseFrame] = lefts[baseFrame] == nil and tck or lefts[baseFrame]
				rights[baseFrame] = rights[baseFrame] == nil and tck or math.max(rights[baseFrame], tck)
			end
		end)

		-- Move leftmost center keyframes left, unless there is already a keyframe there
		traverseCenters(leftCenters, function(instanceName, trackName, baseFrame, tck)
			local track = newData.Instances[instanceName].Tracks[trackName]
			local data = track.Data
			if not data[baseFrame] then
				AnimationData.moveKeyframe(track, tck, baseFrame)
				AnimationData.moveNamedKeyframe(newData, tck, baseFrame)
				-- We've already moved the keyframe, so don't move it right if we would
				if
					rightCenters[instanceName]
					and rightCenters[instanceName][trackName]
					and rightCenters[instanceName][trackName][baseFrame] == tck
				then
					rightCenters[instanceName][trackName][baseFrame] = nil
				end
			end
		end)

		-- Move rightmost center keyframes right, unless there is already a keyframe there
		traverseCenters(rightCenters, function(instanceName, trackName, baseFrame, tck)
			local track = newData.Instances[instanceName].Tracks[trackName]
			local data = track.Data
			if not data[baseFrame + 1] then
				AnimationData.moveKeyframe(track, tck, baseFrame + 1)
				AnimationData.moveNamedKeyframe(newData, tck, baseFrame + 1)
			end
		end)

		-- Delete all leftover center keyframes
		traverseKeyframes(newData, function(instanceName, trackName, tck)
			local baseFrame = math.floor(tck)
			if tck ~= baseFrame then
				local track = newData.Instances[instanceName].Tracks[trackName]
				AnimationData.deleteKeyframe(track, tck)
			end
		end, true)

		store:dispatch(UpdateAnimationData(newData))
	end
end
