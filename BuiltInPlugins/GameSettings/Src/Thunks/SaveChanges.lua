--[[
	Saves all user changed settings to actual setting values.
	Returns a Promise that will resolve when saving is complete.
]]

local Plugin = script.Parent.Parent.Parent

local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local AddErrors = require(Plugin.Src.Actions.AddErrors)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

return function(settingsImpl)
	return function(store)
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))
		local state = store:getState().Settings
		return settingsImpl:SaveAll(state):andThen(function()
			store:dispatch(SetCurrentStatus(CurrentStatus.Closed))
		end)
		:catch(function(errors)
			if errors then
				store:dispatch(SetCurrentStatus(CurrentStatus.Error))
				store:dispatch(AddErrors(errors))
			end
		end)
	end
end