--[[
	Loads all actual settings values from web endpoints and properties.
	Once complete, saves these loaded values into the main store.
	Returns a Promise that will resolve when loading is complete.
]]

local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Src.Util.Analytics)
local SetCurrentSettings = require(Plugin.Src.Actions.SetCurrentSettings)
local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

return function(settingsImpl)
	return function(store)
		local startTime = tick()
		Analytics.onLoadAttempt()
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))
		return settingsImpl:GetSettings():andThen(function(settings)
			if store:getState().Status ~= CurrentStatus.Closed then
				store:dispatch(SetCurrentSettings(settings))
				store:dispatch(SetCurrentStatus(CurrentStatus.Open))
			end
			Analytics.onLoadSuccess(tick() - startTime)
		end)
		:catch(function(errors)
			if errors then
				store:dispatch(SetCurrentStatus(CurrentStatus.Error))
			end
		end)
	end
end
