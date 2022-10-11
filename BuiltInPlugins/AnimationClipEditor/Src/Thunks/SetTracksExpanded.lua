--[[
	Toggles the expanded state of given tracks.

	Params:
		array trackPaths = list of track paths that need to be expanded/collapsed
		bool expanded = whether every track in tracks should be expanded or collapsed
		bool recursive = whether all components of the track should be expanded or collapsed
]]

local Plugin = script.Parent.Parent.Parent
local deepCopy = require(Plugin.Src.Util.deepCopy)
local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local SetTracks = require(Plugin.Src.Actions.SetTracks)

return function(trackPaths, expanded, recursive)
	return function(store)
		local state = store:getState()
		local tracks = deepCopy(state.Status.Tracks)
		local animationData = state.AnimationData
		local isChannelAnimation = AnimationData.isChannelAnimation(animationData)

		for _, trackPath in ipairs(trackPaths) do
			local function recurse(track)
				-- For channel animations, a track is expandable if it has components
				-- For KFS animations, a track is expandable if its type is CFrame
				if (isChannelAnimation and track.Components) or track.Type == Constants.TRACK_TYPES.CFrame then
					track.Expanded = expanded
					if recursive and track.Components then
						for _, component in pairs(track.Components) do
							recurse(component)
						end
					end
				end
			end

			local track = TrackUtils.findTrackEntry(tracks, trackPath)
			recurse(track)
		end

		store:dispatch(SetTracks(tracks))
	end
end
