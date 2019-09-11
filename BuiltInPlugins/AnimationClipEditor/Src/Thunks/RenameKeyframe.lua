--[[
	Legacy behavior to rename a summary keyframe.
	Replaced by Animation Events, but we still need to support it for now.
]]

local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(frame, name)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)
		AnimationData.setKeyframeName(newData, frame, name)

		store:dispatch(UpdateAnimationData(newData))

		state.Analytics:onRenameKeyframe(name)
	end
end