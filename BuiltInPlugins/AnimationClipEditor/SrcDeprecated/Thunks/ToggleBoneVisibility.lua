--[[
	When the plugin is activated, return everything that is controlled
	by the AnimationClip editor to its pose.
]]
local Plugin = script.Parent.Parent.Parent

local SetBoneVisualization = require(Plugin.SrcDeprecated.Actions.SetBoneVisualization)
local RigUtils = require(Plugin.SrcDeprecated.Util.RigUtils)
local IsMicroboneSupportEnabled = require(Plugin.LuaFlags.GetFFlagAnimationEditorMicroboneSupport)

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

		if IsMicroboneSupportEnabled() then
			RigUtils.updateMicrobones(targetInstance, visualizeBones)
		end

	end
end