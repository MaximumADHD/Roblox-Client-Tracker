--[[
	Saves all user changed settings to actual setting values.
	Returns a Promise that will resolve when saving is complete.
]]

local Plugin = script.Parent.Parent.Parent

local Analytics = require(Plugin.Src.Util.Analytics)
local SetCurrentStatus = require(Plugin.Src.Actions.SetCurrentStatus)
local SetPageSaveState = require(Plugin.Src.Actions.SetPageSaveState)

local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)
local SaveState = require(Plugin.Src.Util.SaveState)
local Promise = require(Plugin.Promise)

local FFlagStudioGameSettingsOnlySaveModifiedPages = game:DefineFastFlag("StudioGameSettingsOnlySaveModifiedPages", false)

return function()
	return function(store)
		local startTime = tick()
		Analytics.onSaveAttempt()
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))

		local state = store:getState()
		for pageId,_ in pairs(state.PageSaveState) do
			store:dispatch(SetPageSaveState(pageId, SaveState.Pending))
		end

		for settingName,settingValue in pairs(state.Settings.Changed) do
			Analytics.onSettingSaved(settingName, settingValue)
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
						if FFlagStudioGameSettingsOnlySaveModifiedPages then
							if saveState == SaveState.Saving then
								allSaved = false
							end
						else
							if saveState <= SaveState.Saving then
								allSaved = false
							end
						end
					end

					if allSaved then
						break
					end
				end

				local state = store:getState()
				for pageId,saveState in pairs(state.PageSaveState) do
					if saveState == SaveState.SaveFailed then
						Analytics.onPageSaveError(pageId)
					end

					store:dispatch(SetPageSaveState(pageId, SaveState.Unsaved))
				end

				if allSuccessful then
					Analytics.onSaveSuccess(tick() - startTime)
					resolve()
				else
					Analytics.onSaveError(tick() - startTime)
					store:dispatch(SetCurrentStatus(CurrentStatus.Error))
					reject({})
				end
			end)
		end)
	end
end