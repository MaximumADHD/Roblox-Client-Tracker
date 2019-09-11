--[[
	Changes whether the animation clip that is currently being edited
	should loop or not.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)

return function()
	return function(store)
		local animationData = store:getState().AnimationData

		if not animationData then
			return
		end

		local newData = deepCopy(animationData)

		local looping = newData.Metadata.Looping
		AnimationData.setLooping(newData, not looping)
		store:dispatch(SetAnimationData(newData))

		store:getState().Analytics:onControlPressed("ToggleLooping")
	end
end