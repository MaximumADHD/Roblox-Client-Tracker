--[[
	Sets the Events in AnimationData to the new Events table.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local deepCopy = require(Plugin.SrcDeprecated.Util.deepCopy)

local UpdateAnimationData = require(Plugin.SrcDeprecated.Thunks.UpdateAnimationData)

return function(newEvents)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)
		newData.Events = newEvents
		store:dispatch(UpdateAnimationData(newData))

		local oldEvents = animationData.Events.Data
		for frame, events in pairs(newEvents.Data) do
			for name, parameter in pairs(events) do
				if oldEvents[frame] == nil or oldEvents[frame][name] == nil then
					state.Analytics:onAddEvent(name, parameter)
				end
			end
		end
	end
end