--[[
	Load settings for a page
]]

local Plugin = script.Parent.Parent.Parent

local AppendSettings = require(Plugin.Src.Actions.AppendSettings)
local SetPageLoadState = require(Plugin.Src.Actions.SetPageLoadState)

local LoadState = require(Plugin.Src.Util.LoadState)

return function(pageId, settingJobsCallback)
	return function(store, contextItems)

		local settingJobs = settingJobsCallback(store, contextItems)

		store:dispatch(SetPageLoadState(pageId, LoadState.Loading))

		local numLoaded = 0
		local loadFailed = false
		local loadedSettings = {}
		for _,callback in ipairs(settingJobs) do
			coroutine.wrap(function()
				local success,result = pcall(callback, loadedSettings)
				if (not success) and (not loadFailed) then
					-- TODO (awarwick) 5/5/2020 Replace with error handling when Design decides what they want
					warn("Failed", result)
					loadFailed = true
					store:dispatch(SetPageLoadState(pageId, LoadState.LoadFailed))
				end

				numLoaded = numLoaded + 1
				if numLoaded == #settingJobs and not loadFailed then
					store:dispatch(AppendSettings(loadedSettings))
					store:dispatch(SetPageLoadState(pageId, LoadState.Loaded))
				end
			end)()
		end
	end
end