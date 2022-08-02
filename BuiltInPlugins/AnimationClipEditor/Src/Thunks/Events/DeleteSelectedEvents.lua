--[[
	Deletes all events that are selected.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function()
	return function(store)
		local animationData = store:getState().AnimationData
		local selectedEvents = store:getState().Status.SelectedEvents
		if not animationData then
			return
		end

		local newData = deepCopy(animationData)

		local events = newData.Events
		if events == nil then
			return
		end

		for tck, _ in pairs(selectedEvents) do
			AnimationData.deleteEvents(events, tck)
		end
		store:dispatch(SetSelectedEvents({}))
		store:dispatch(UpdateAnimationData(newData))
	end
end
