--[[
	Promotes a Keyframe animation to Channels.
]]
local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetFuture = require(Plugin.Src.Actions.SetFuture)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

return function()
    return function(store)
        local state = store:getState()
        local animationData = state.AnimationData
        if not animationData or not animationData.Metadata or animationData.Metadata.IsChannelAnimation then
            return
        end

        -- Remove potential change history waypoints
        store:dispatch(SetPast({}))
        store:dispatch(SetFuture({}))

        -- Reset all hanging data
        store:dispatch(SetSelectedKeyframes({}))

        local newData = deepCopy(animationData)
        AnimationData.promoteToChannels(newData)

        local tracks = state.Status.Tracks
        for _, track in ipairs(tracks) do
            TrackUtils.createTrackListEntryComponents(track, track.Instance)
        end

        store:dispatch(SortAndSetTracks(tracks))
        store:dispatch(UpdateAnimationData(newData))
    end
end