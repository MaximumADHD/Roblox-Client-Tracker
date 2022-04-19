--[[
	This thunk is used to add a new track to the Animation Editor.

	Parameters:
		string instanceName: The name of the instance this track belongs to.
		string trackName: The name to use for the new track.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Templates = require(Plugin.Src.Util.Templates)
local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagQuaternionsUI = require(Plugin.LuaFlags.GetFFlagQuaternionsUI)
local GetFFlagEulerAnglesOrder = require(Plugin.LuaFlags.GetFFlagEulerAnglesOrder)

local function wrappee(instanceName, trackName, trackType, rotationType, eulerAnglesOrder, analytics)
	return function(store)
		local state = store:getState()
		local status = state.Status

		if status == nil then
			return
		end

		local tracks = status.Tracks
		rotationType = rotationType or status.DefaultRotationType

		for _, track in ipairs(tracks) do
			if track.Name == trackName then
				return
			end
		end

		local newTrack = Templates.trackListEntry(GetFFlagChannelAnimations() and (trackType or Constants.TRACK_TYPES.CFrame) or nil)
		newTrack.Name = trackName
		newTrack.Instance = instanceName
		newTrack.EulerAnglesOrder = eulerAnglesOrder

		if GetFFlagChannelAnimations() then
			local data = state.AnimationData

			if AnimationData.isChannelAnimation(data) then
				TrackUtils.createTrackListEntryComponents(newTrack, instanceName, rotationType, eulerAnglesOrder)
			end
		else
			if GetFFlagFacialAnimationSupport() then
				newTrack.Type = trackType
			end
		end

		local newTracks = Cryo.List.join(tracks, {newTrack})

		store:dispatch(SortAndSetTracks(newTracks))
		if analytics then
			analytics:report("onTrackAdded", trackName)
		end
	end
end

if GetFFlagEulerAnglesOrder() then
	return function(instanceName, trackName, trackType, rotationType, eulerAnglesOrder, analytics)
		return wrappee(instanceName, trackName, trackType, rotationType, eulerAnglesOrder, analytics)
	end
elseif GetFFlagQuaternionsUI() then
	return function(instanceName, trackName, trackType, rotationType, analytics)
		return wrappee(instanceName, trackName, trackType, rotationType, nil, analytics)
	end
elseif GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations() then
	return function(instanceName, trackName, trackType, analytics)
		return wrappee(instanceName, trackName, trackType, nil, nil, analytics)
	end
else
	return function(instanceName, trackName, analytics)
		return wrappee(instanceName, trackName, nil, nil, nil, analytics)
	end
end