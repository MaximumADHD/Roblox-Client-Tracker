--[[
	Deletes a track from the Animation Editor window.
	Also erases all keyframes from the animation data associated with that track.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(trackName, analytics)
	return function(store)
		local state = store:getState()
		local status = state.Status
		local tracks = status.Tracks
		local root = status.RootInstance

		if root == nil then
			return
		end

		local trackIndex = nil
		for index, track in ipairs(tracks) do
			if track.Name == trackName then
				trackIndex = index
			end
		end

		if trackIndex then
			local newTracks = Cryo.List.removeIndex(tracks, trackIndex)
			store:dispatch(SortAndSetTracks(newTracks))

			local animationData = state.AnimationData
			if not (animationData) then
				return
			end

			for instanceName, instance in pairs(animationData.Instances) do
				for track, _ in pairs(instance.Tracks) do
					if track == trackName then
						local hadKeyframes = track.Keyframes and not isEmpty(track.Keyframes)
						local newData = deepCopy(animationData)
						newData.Instances[instanceName].Tracks[track] = nil
						store:dispatch(UpdateAnimationData(newData))
						store:dispatch(SetSelectedKeyframes({}))

						analytics:report("onTrackDeleted", trackName, hadKeyframes)
						return
					end
				end
			end
		end
	end
end