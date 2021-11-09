--[[
	Loads an animation by the current name
	from the AnimSaves folder.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Constants = require(Plugin.Src.Util.Constants)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetNotification = require(Plugin.Src.Actions.SetNotification)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local SetDisplayFrameRate = require(Plugin.Src.Actions.SetDisplayFrameRate)
local AnimationData = require(Plugin.Src.Util.AnimationData)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(name, analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local animSaves = RigUtils.getAnimSavesFolder(rootInstance)
		if not animSaves then
			return
		end

		local animation = animSaves:FindFirstChild(name)
		if not animation then
			return
		end

		local newData, numKeyframes, numPoses, numEvents, frameRate
		if animation:IsA("KeyframeSequence") then
			if GetFFlagUseTicks() then
				newData, frameRate, numKeyframes, numPoses, numEvents = RigUtils.fromRigAnimation(
					animation)
			else
				frameRate = RigUtils.calculateFrameRate(animation)
				newData, numKeyframes, numPoses, numEvents = RigUtils.fromRigAnimation_deprecated(
					animation, frameRate)
			end
		elseif animation:IsA("CurveAnimation") then
			newData = RigUtils.fromCurveAnimation(animation)
			frameRate = Constants.DEFAULT_FRAMERATE
		else
			return
		end

		store:dispatch(LoadAnimationData(newData, analytics))
		store:dispatch(SetNotification("Loaded", name))
		store:dispatch(SetIsDirty(false))
		if GetFFlagUseTicks() then
			store:dispatch(SetDisplayFrameRate(frameRate))
		end

		-- TODO: Add analytics for channel animations
		if not AnimationData.isChannelAnimation(newData) then
			analytics:report("onLoadAnimation", name, numKeyframes, numPoses, numEvents)
		end
	end
end