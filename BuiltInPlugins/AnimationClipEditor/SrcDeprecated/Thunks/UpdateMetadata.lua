--[[
	Used to update the current AnimationData metadata.
	Merges the newData table with the current metadata.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local SetAnimationData = require(Plugin.SrcDeprecated.Actions.SetAnimationData)

return function(newValues)
	return function(store)
		local animationData = store:getState().AnimationData
		if not (animationData and animationData.Metadata) then
			return
		end

		local newData = Cryo.Dictionary.join(animationData, {
			Metadata = Cryo.Dictionary.join(animationData.Metadata, newValues)
		})

		store:dispatch(SetAnimationData(newData))
	end
end