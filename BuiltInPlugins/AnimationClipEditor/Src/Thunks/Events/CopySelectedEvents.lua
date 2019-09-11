--[[
	Copies all events which are selected to the clipboard.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local isEmpty = require(Plugin.Src.Util.isEmpty)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local SetClipboard = require(Plugin.Src.Actions.SetClipboard)
local Constants = require(Plugin.Src.Util.Constants)

return function()
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

		if not isEmpty(selectedEvents) then
			local newClipboard = {}
			for frame, _ in pairs(selectedEvents) do
				newClipboard[frame] = deepCopy(events.Data[frame])
			end

			store:dispatch(SetClipboard(newClipboard, Constants.CLIPBOARD_TYPE.Events))
		end
	end
end