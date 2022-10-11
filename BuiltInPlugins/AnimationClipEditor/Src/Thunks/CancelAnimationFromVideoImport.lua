--[[
    CancelAnimationFromVideoImport

	Cancels animation from video creation import.
]]

local Plugin = script.Parent.Parent.Parent

local SetCreatingAnimationFromVideo = require(Plugin.Src.Actions.SetCreatingAnimationFromVideo)

return function(analytics)
	return function(store)
		store:dispatch(SetCreatingAnimationFromVideo(false))

		local state = store:getState()
		local erroredOut = state.Status.AnimationFromVideoErroredOut

		if not erroredOut then
			-- we only track real cancellations (not clicking the cancel button after user just dismisses the error displayed on progress dialog)
			local startTime = state.Status.AnimationFromVideoUploadStartTime
			local duration = startTime and os.clock() - startTime
			analytics:report("onAnimationEditorImportVideoUploadCancel", duration)
		end
	end
end
