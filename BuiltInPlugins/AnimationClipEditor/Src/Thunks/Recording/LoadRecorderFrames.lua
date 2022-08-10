-- LoadRecorderFrames
local Plugin = script.Parent.Parent.Parent.Parent

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetInReviewState = require(Plugin.Src.Actions.SetInReviewState)
local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
local SetHaveToSetBackToNotLooping = require(Plugin.Src.Actions.SetHaveToSetBackToNotLooping)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)

function clearFacsTracksAndHeadTrack(animationData)
	for instanceName, instance in pairs(animationData.Instances) do
		for i, facsName in pairs(Constants.FacsNames) do		
			local trackName = facsName
			for track, _ in pairs(instance.Tracks) do
				if track == trackName then
					animationData.Instances[instanceName].Tracks[track] = nil
				end
			end
		end
		animationData.Instances["Root"].Tracks["Head"] = nil	
	end
end

return function(props, recordedFrames, analytics)
	return function(store)
		--[[
			prepping recorded frames for loading in as new animation:
			we have to cover a few cases:
			-there is no previous existing (body) animation: in that case we just use the recording as new animation 
			-there is a previous existing (body) animation and it was not a channel animation:
				-in that case we add the face animation to a copy of that and use that then
			-there is a previous existing (body) animation and it is a channel animation:
				-in that case we convert our recording to a channel animation and add that to a copy of the previous animation and use that then
		]]
		local previousAnimationData = 	nil
		if props.AnimationData ~= nil then previousAnimationData = deepCopy(props.AnimationData) end
		local localization = props.Localization
		local defaultFaceRecordingName =  localization:getText("FaceCapture", "DefaultFaceRecordingName")
		local newAnimationData = AnimationData.newRigAnimation(defaultFaceRecordingName)

		local isChannelAnimation = false
		
		if previousAnimationData ~= nil then
			--clearing these so no glitchy output where old facs tracks and head rotation track are combined with new values
			clearFacsTracksAndHeadTrack(previousAnimationData)
		end

		if previousAnimationData ~= nil and not previousAnimationData.Metadata.IsChannelAnimation then
			newAnimationData = previousAnimationData
		end		

		if previousAnimationData ~= nil and previousAnimationData.Metadata.IsChannelAnimation then
			isChannelAnimation = true						
		end
		for _, instance in pairs(newAnimationData.Instances) do
			local tracks = instance.Tracks
			for tck, values in pairs(recordedFrames) do
				for trackName, value in pairs(values) do
					local track = tracks[trackName]
					if track == nil then
						if trackName == "Head" then
							track = AnimationData.addTrack(tracks, trackName, Constants.TRACK_TYPES.CFrame,
								false, Constants.TRACK_TYPES.Quaternion)
						else
							track = AnimationData.addTrack(tracks, trackName, Constants.TRACK_TYPES.Facs,
								false, Constants.TRACK_TYPES.Quaternion)
						end
						if not GetFFlagChannelAnimations() then
							track = tracks[trackName]
						end
					end
					AnimationData.addKeyframe(track, tck, {
						Value = value,
						EasingStyle = Enum.PoseEasingStyle.Linear,
						EasingDirection = Enum.PoseEasingDirection.In,
					})
				end
			end

			-- Remove identical values
			for _, track in pairs(tracks) do
				--only do it for the facs tracks, don't do it for body tracks coming from existing anim
				if track.Type == Constants.TRACK_TYPES.Facs then				
					local value_2, value_1, value
					local lastIndex, lastTick

					local keyframes = track.Keyframes
					local data = track.Data

					local newKeyframes = {}
					for index, tck in ipairs(keyframes) do
						value_2, value_1, value = value_1, value, data[tck].Value
						if value_2 == value_1 and value_1 == value then
							keyframes[lastIndex] = nil
							data[lastTick] = nil
						else
							table.insert(newKeyframes, keyframes[lastIndex])
						end
						lastTick = tck
						lastIndex = index
					end

					track.Keyframes = newKeyframes
				end
			end	
		end
		-- Preserve the changes history past as LoadAnimationData clears it
		store:dispatch(AddWaypoint())
		local state = store:getState()
		local history = state.History
		local past = history.Past		
		
		-- handling the case where there was a previous (body) animation and it is a channel animation,
			--in that case we convert the new recorded face animation to a channel animation, too 
			--and then add it to a copy of the previous animation
		if previousAnimationData and isChannelAnimation then
			--convert face capture to channelanimation
			local status = props.Status
			local rotationType = status.DefaultRotationType
			local eulerAnglesOrder = status.DefaultEulerAnglesOrder
			local numTracks, numKeyframes = AnimationData.promoteToChannels(newAnimationData, rotationType, eulerAnglesOrder)	

			local instance = previousAnimationData.Instances["Root"]
			local previousAnimationsTracks = instance.Tracks

			--add the tracks of to the existing body animation
			for _, instance in pairs(newAnimationData.Instances) do
				local tracks = instance.Tracks
				for trackName, track in pairs(tracks) do
					local track = tracks[trackName]
					local clonedTrack = deepCopy(track)
					previousAnimationsTracks[trackName] = clonedTrack
				end
			end
			store:dispatch(LoadAnimationData(previousAnimationData, analytics))
			newAnimationData = previousAnimationData
		else	
			store:dispatch(LoadAnimationData(newAnimationData, analytics))
		end		
		
		store:dispatch(SetPast(past))	
		
		store:dispatch(SetInReviewState(true))
		
		
		--set looping on to play animation looped while in recording state.
		--also noting haveToSetBackToNotLooping to set it back on exit review state
		local animationData = newAnimationData
		local looping = animationData.Metadata.Looping
		if not looping then
			AnimationData.setLooping(newAnimationData, true)
			store:dispatch(SetAnimationData(newAnimationData))
			store:dispatch(SetHaveToSetBackToNotLooping(true))
		end		
	end
end