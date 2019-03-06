--[[
	Saves all user changed settings to actual setting values.
	Returns a Promise that will resolve when saving is complete.
]]

local FFlagStudioLuaGameSettingsSaveErrorsPopUp = settings():GetFFlag("StudioLuaGameSettingsSaveErrorsPopUp")

local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Src.Util.Analytics)
local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local AddErrors = require(Plugin.Src.Actions.AddErrors)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)
local Promise = nil
if FFlagStudioLuaGameSettingsSaveErrorsPopUp then
	Promise = require(Plugin.Promise)
end

return function(settingsImpl)
	return function(store)
		local startTime = tick()
		Analytics.onSaveAttempt()
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))
		local state = store:getState().Settings
		return settingsImpl:SaveAll(state)
		:andThen(function()
			Analytics.onSaveSuccess(tick() - startTime)
		end)
		:catch(function(errors)
			if errors then
				store:dispatch(SetCurrentStatus(CurrentStatus.Error))
				store:dispatch(AddErrors(errors))
				if FFlagStudioLuaGameSettingsSaveErrorsPopUp then
					return Promise.reject(errors)
				end
			end
		end)
	end
end