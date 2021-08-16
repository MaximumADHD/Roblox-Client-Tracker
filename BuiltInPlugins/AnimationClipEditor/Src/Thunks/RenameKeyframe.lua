--[[
	Legacy behavior to rename a summary keyframe.
	Replaced by Animation Events, but we still need to support it for now.
]]

local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(tick, name, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)
		AnimationData.setKeyframeName(newData, tick, name)

		store:dispatch(UpdateAnimationData(newData))

		analytics:report("onRenameKeyframe", name)
	end
end