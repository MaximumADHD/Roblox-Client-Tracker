--[[
	Sets the playback speed. Updates playback start info if the animation is playing
]]

local Plugin = script.Parent.Parent.Parent.Parent
local SetPlaybackSpeed = require(Plugin.Src.Actions.SetPlaybackSpeed)
local SetPlaybackStartInfo = require(Plugin.Src.Actions.SetPlaybackStartInfo)

return function(playbackSpeed)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData

		store:dispatch(SetPlaybackSpeed(playbackSpeed))

		-- If there's an animation playing, update the playback start info
		if animationData and animationData.Metadata and animationData.Metadata.EndFrame > 0 then
			local playing = store:getState().Status.IsPlaying
			if playing then
				local playbackStartInfo = {
					startTime = tick(),
					startPlayhead = store:getState().Status.Playhead
				}
				store:dispatch(SetPlaybackStartInfo(playbackStartInfo))
			end
		end

	end
end