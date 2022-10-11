--[[
	Loads a KeyframeSequence animation by the current name
	from the AnimSaves folder.
]]

-- TODO: Remove when GetFFlacChannelAnimations() is ON
local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Constants = require(Plugin.Src.Util.Constants)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetNotification = require(Plugin.Src.Actions.SetNotification)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetFrameRate = require(Plugin.Src.Actions.SetFrameRate)

return function(name, analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local animSaves = RigUtils.getAnimSavesFolder(rootInstance)
		if animSaves then
			local keyframeSequence = animSaves:FindFirstChild(name)
			if keyframeSequence then
				local newData, frameRate, numKeyframes, numPoses, numEvents =
					RigUtils.fromRigAnimation(keyframeSequence)
				store:dispatch(LoadAnimationData(newData, analytics))
				store:dispatch(SetNotification("Loaded", name))
				store:dispatch(SetIsDirty(false))
				store:dispatch(SetFrameRate(frameRate))

				analytics:report(
					"onLoadAnimation",
					name,
					numKeyframes,
					numPoses,
					numEvents,
					Constants.ANIMATION_TYPE.KeyframeSequence
				)
			end
		end
	end
end
