--[[
	Save settings for a page
]]

local Plugin = script.Parent.Parent.Parent

local SetPageSaveState = require(Plugin.Src.Actions.SetPageSaveState)

local SaveState = require(Plugin.Src.Util.SaveState)

return function(pageId, saveJobsCallback)
	return function(store, contextItems)

		local saveJobs = saveJobsCallback(store, contextItems)

		store:dispatch(SetPageSaveState(pageId, SaveState.Saving))

		local numSaved = 0
		local saveFailed = false
		for _,callback in ipairs(saveJobs) do
			coroutine.wrap(function()
				local success,result = pcall(callback)
				if (not success) and (not saveFailed) then
					-- TODO (awarwick) 5/5/2020 Replace with error handling when Design decides what they want
					warn("Failed", result)
					saveFailed = true
					store:dispatch(SetPageSaveState(pageId, SaveState.SaveFailed))
				end

				numSaved = numSaved + 1
				if numSaved == #saveJobs and not saveFailed then
					store:dispatch(SetPageSaveState(pageId, SaveState.Saved))
				end
			end)()
		end
	end
end