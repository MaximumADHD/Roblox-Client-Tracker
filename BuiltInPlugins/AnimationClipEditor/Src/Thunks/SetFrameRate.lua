--[[
	Sets the framerate of the animation
]]

local Plugin = script.Parent.Parent.Parent
local deepCopy = require(Plugin.Src.Util.deepCopy)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

-- Deprecated when GetFFlagUseTicks is ON
return function(frameRate)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData or not animationData.Metadata then
			return
		end

		local newData = deepCopy(animationData)
		newData.Metadata.FrameRate = frameRate
		store:dispatch(UpdateAnimationData(newData))
	end
end