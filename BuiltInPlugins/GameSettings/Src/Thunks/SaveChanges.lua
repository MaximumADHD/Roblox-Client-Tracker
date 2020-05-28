--[[
	Saves all user changed settings to actual setting values.
	Returns a Promise that will resolve when saving is complete.
]]

local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Src.Util.Analytics)
local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local SetPageSaveState = require(Plugin.Src.Actions.SetPageSaveState)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddTableKeyErrors = require(Plugin.Src.Actions.AddTableKeyErrors)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)
local SaveState = require(Plugin.Src.Util.SaveState)
local Promise = require(Plugin.Promise)

local DFFlagDeveloperSubscriptionsEnabled = settings():GetFFlag("DeveloperSubscriptionsEnabled")
local FFlagGameSettingsPlaceSettings = game:GetFastFlag("GameSettingsPlaceSettings")

return function(settingsImpl)
	return function(store)
		local startTime = tick()
		Analytics.onSaveAttempt()
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))

		if game:GetFastFlag("GameSettingsNetworkRefactor") then
			local state = store:getState()
			for pageId,_ in pairs(state.PageSaveState) do
				store:dispatch(SetPageSaveState(pageId, SaveState.Pending))
			end

			return Promise.new(function(resolve, reject)
				spawn(function()
					local allSaved
					local allSuccessful

					while wait() do
						allSaved = true
						allSuccessful = true

						for pageId,saveState in pairs(store:getState().PageSaveState) do
							if saveState == SaveState.SaveFailed then
								allSuccessful = false
							end
							if saveState <= SaveState.Saving then
								allSaved = false
							end
						end

						if allSaved then
							break
						end
					end

					local state = store:getState()
					for pageId,_ in pairs(state.PageSaveState) do
						store:dispatch(SetPageSaveState(pageId, SaveState.Unsaved))
					end

					Analytics.onSaveSuccess(tick() - startTime)

					if allSuccessful then
						resolve()
					else
						store:dispatch(SetCurrentStatus(CurrentStatus.Open))
						reject({})
					end
				end)
			end)
		else
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
end