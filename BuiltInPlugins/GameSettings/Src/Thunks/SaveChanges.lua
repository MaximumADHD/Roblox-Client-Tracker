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

return function()
	return function(store)
		local startTime = tick()
		Analytics.onSaveAttempt()
		store:dispatch(SetCurrentStatus(CurrentStatus.Working))

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
					store:dispatch(SetCurrentStatus(CurrentStatus.Error))
					reject({})
				end
			end)
		end)
	end
end