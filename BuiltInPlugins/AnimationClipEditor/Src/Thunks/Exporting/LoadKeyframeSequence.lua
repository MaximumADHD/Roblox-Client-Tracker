--[[
	Loads a KeyframeSequence animation by the current name
	from the AnimSaves folder.
]]

-- TODO: Remove when GetFFlacChannelAnimations() is ON
local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetNotification = require(Plugin.Src.Actions.SetNotification)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetDisplayFrameRate = require(Plugin.Src.Actions.SetDisplayFrameRate)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

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
				local newData, numKeyframes, numPoses, numEvents, frameRate
				if GetFFlagUseTicks() then
					newData, frameRate, numKeyframes, numPoses, numEvents = RigUtils.fromRigAnimation(
						keyframeSequence)
				else
					frameRate = RigUtils.calculateFrameRate(keyframeSequence)
					newData, numKeyframes, numPoses, numEvents = RigUtils.fromRigAnimation_deprecated(
						keyframeSequence, frameRate)
				end
				store:dispatch(LoadAnimationData(newData, analytics))
				store:dispatch(SetNotification("Loaded", name))
				store:dispatch(SetIsDirty(false))
				if GetFFlagUseTicks() then
					store:dispatch(SetDisplayFrameRate(frameRate))
				end

				analytics:report("onLoadAnimation", name, numKeyframes, numPoses, numEvents)
			end
		end
	end
end