--[[
	Reducer for the current status of the application.
	Stores a CurrentStatus defining what the current status of the app is.
]]

local Plugin = script.Parent.Parent.Parent

local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local function Status(state, action)
	state = state or CurrentStatus.Closed

	if action.type == SetCurrentStatus.name then
		return action.currentStatus
	end

	return state
end

return Status