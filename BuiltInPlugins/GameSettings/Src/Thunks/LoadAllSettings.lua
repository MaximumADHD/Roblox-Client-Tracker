--[[
	Loads all actual settings values from web endpoints and properties.
	Once complete, saves these loaded values into the main store.
	Returns a Promise that will resolve when loading is complete.
]]

local Plugin = script.Parent.Parent.Parent
local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

return function(settingsImpl)
	return function(store)
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))
		return settingsImpl:GetSettings():andThen(function(settings)
			store:dispatch(SetCurrentSettings(settings))
			store:dispatch(SetCurrentStatus(CurrentStatus.Open))
		end)
	end
end