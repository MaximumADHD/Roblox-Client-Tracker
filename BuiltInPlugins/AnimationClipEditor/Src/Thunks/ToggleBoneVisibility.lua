--[[
	When the plugin is activated, return everything that is controlled
	by the AnimationClip editor to its pose.
]]
local Plugin = script.Parent.Parent.Parent

local SetBoneVisualization = require(Plugin.Src.Actions.SetBoneVisualization)
local SetBoneLinksToBone = require(Plugin.Src.Actions.SetBoneLinksToBone)
local RigUtils = require(Plugin.Src.Util.RigUtils)

return function()
	return function(store)
		local state = store:getState()
		local visualizeBones = not state.Status.VisualizeBones
		local animationData = state.AnimationData
		local targetInstance = state.Status.RootInstance
		local active = state.Status.Active

		if not animationData or not targetInstance or not active then
			return
		end

		store:dispatch(SetBoneVisualization(visualizeBones))

		store:dispatch(SetBoneLinksToBone(RigUtils.updateMicrobones(targetInstance, visualizeBones)))
	end
end