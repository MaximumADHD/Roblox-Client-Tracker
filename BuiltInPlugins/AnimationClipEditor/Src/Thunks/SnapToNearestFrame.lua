--[[
	Given a tick, move the scrub bar to the nearest DisplayFrame
]]

local Plugin = script.Parent.Parent.Parent
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

return function(tick)
	return function(store)
		local state = store:getState()

		local displayFrameRate = state.Status.DisplayFrameRate
		local snapTick = KeyframeUtils.getNearestFrame(tick, displayFrameRate)

		store:dispatch(StepAnimation(snapTick))
	end
end