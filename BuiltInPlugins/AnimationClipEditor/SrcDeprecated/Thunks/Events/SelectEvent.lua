--[[
	Selects the events at the given frame.
	If multi-selecting, adds this event to the selection.
	Otherwise, replaces the selection.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local SetSelectedEvents = require(Plugin.SrcDeprecated.Actions.SetSelectedEvents)

return function(frame, multiSelect)
	return function(store)
		local animationData = store:getState().AnimationData
		local selectedEvents = store:getState().Status.SelectedEvents
		if not animationData or not selectedEvents then
			return
		end

		local events = animationData.Events
		if events == nil then
			return
		end

		if events.Data and events.Data[frame] then
			if multiSelect then
				store:dispatch(SetSelectedEvents(Cryo.Dictionary.join(selectedEvents, {
					[frame] = true,
				})))
			else
				store:dispatch(SetSelectedEvents({
					[frame] = true,
				}))
			end
		end
	end
end