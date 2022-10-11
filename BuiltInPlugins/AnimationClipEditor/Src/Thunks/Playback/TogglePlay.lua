--[[
	Performs step logic for an animation frame. Also updates
	playhead time.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local SetPlayState = require(Plugin.Src.Actions.SetPlayState)

return function(analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData

		if animationData and animationData.Metadata and animationData.Metadata.EndTick > 0 then
			if store:getState().Status.PlayState == Constants.PLAY_STATE.Pause then
				store:dispatch(SetPlayState(Constants.PLAY_STATE.Play))
			else
				store:dispatch(SetPlayState(Constants.PLAY_STATE.Pause))
			end
		end

		analytics:report("onControlPressed", "TogglePlay")
	end
end
