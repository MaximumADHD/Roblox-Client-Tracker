--[[
	Saves all user changed settings to actual setting values.
	Returns a Promise that will resolve when saving is complete.
]]

local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Src.Util.Analytics)
local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddTableKeyErrors = require(Plugin.Src.Actions.AddTableKeyErrors)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)
local Promise = require(Plugin.Promise)

local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")

return function(settingsImpl)
	return function(store)
		local startTime = tick()
		Analytics.onSaveAttempt()
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))


		local state = FFlagGameSettingsPlaceSettings and store:getState() or store:getState().Settings
		return settingsImpl:SaveAll(state)
		:andThen(function()
			Analytics.onSaveSuccess(tick() - startTime)
		end)
		:catch(function(errors)
			if errors then
				if DFFlagDeveloperSubscriptionsEnabled then
					store:dispatch(SetCurrentStatus(CurrentStatus.Error))

					for k,v in pairs(errors) do
						if k == "TableErrors" then
							store:dispatch(AddTableKeyErrors(v.TableName, v.TableKey, v.ValueKey, v.Error))
						else
							store:dispatch(AddErrors(errors))
						end
					end

					return Promise.reject(errors)
				else
					store:dispatch(SetCurrentStatus(CurrentStatus.Error))
					store:dispatch(AddErrors(errors))
					return Promise.reject(errors)
				end
			end
		end)
	end
end