--[[
	Deletes all events that are selected.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local deepCopy = require(Plugin.SrcDeprecated.Util.deepCopy)
local AnimationData = require(Plugin.SrcDeprecated.Util.AnimationData)
local SetSelectedEvents = require(Plugin.SrcDeprecated.Actions.SetSelectedEvents)
local UpdateAnimationData = require(Plugin.SrcDeprecated.Thunks.UpdateAnimationData)

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

		for frame, _ in pairs(selectedEvents) do
			AnimationData.deleteEvents(events, frame)
		end
		store:dispatch(SetSelectedEvents({}))
		store:dispatch(UpdateAnimationData(newData))
	end
end