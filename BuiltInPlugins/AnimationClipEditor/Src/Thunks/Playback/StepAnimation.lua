--[[
	Performs step logic for an animation frame. Also updates
	playhead time.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local SetPlayhead = require(Plugin.Src.Actions.SetPlayhead)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

return function(tck)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local targetInstance = state.Status.RootInstance
		local isPlaying = state.Status.PlayState ~= Constants.PLAY_STATE.Pause

		local active = state.Status.Active
		local visualizeBones = state.Status.VisualizeBones

		if not animationData or not targetInstance or not active then
			return
		end

		local instances = animationData.Instances
		if instances then
			for _, instance in pairs(instances) do
				if instance.Type == Constants.INSTANCE_TYPES.Rig then
					RigUtils.stepRigAnimation(targetInstance, instance, tck)
				end
			end
		end

		if not isPlaying then
			tck = KeyframeUtils.getNearestTick(tck)
		end
		store:dispatch(SetPlayhead(tck))

		RigUtils.updateMicrobones(targetInstance, visualizeBones)
	end
end