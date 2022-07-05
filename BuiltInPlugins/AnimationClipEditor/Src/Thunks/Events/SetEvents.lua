--[[
	Sets the Events in AnimationData to the new Events table.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local deepCopy = require(Plugin.Src.Util.deepCopy)

local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(newEvents, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local editorMode = state.Status.EditorMode
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)
		newData.Events = newEvents
		store:dispatch(UpdateAnimationData(newData))

		local oldEvents = animationData.Events.Data
		for tick, events in pairs(newEvents.Data) do
			for name, parameter in pairs(events) do
				if oldEvents[tick] == nil or oldEvents[tick][name] == nil then
					analytics:report("onAddEvent", name, parameter, editorMode)
				end
			end
		end
	end
end
