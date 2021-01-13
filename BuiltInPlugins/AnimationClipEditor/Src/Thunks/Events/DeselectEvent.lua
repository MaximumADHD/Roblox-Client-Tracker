--[[
	Deselects the events at the given frame.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)

return function(frame)
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
			store:dispatch(SetSelectedEvents(Cryo.Dictionary.join(selectedEvents, {
				[frame] = Cryo.None,
			})))
		end
	end
end