local Plugin = script.Parent.Parent.Parent.Parent

local SetFacialRecordingMode = require(Plugin.Src.Thunks.Recording.SetFacialRecordingMode)
local SetInReviewState = require(Plugin.Src.Actions.SetInReviewState)

local GetFacialAnimationRecordingAnalytics1 = require(Plugin.LuaFlags.GetFacialAnimationRecordingAnalytics1)

return function(analytics)
	return function(store)
		local state = store:getState()
		local inReviewState = state.Status.inReviewState
		if inReviewState then
			--get out of review state in case user clicked this button while in review state
			store:dispatch(SetInReviewState(false))
			store:dispatch(SetFacialRecordingMode(false))
		else
			--user was not in review state, get going with recoder
			if GetFacialAnimationRecordingAnalytics1() then
				analytics:report("onFacialAnimationRecordingEnabled")
			end
			store:dispatch(SetFacialRecordingMode(true))
		end
	end
end
