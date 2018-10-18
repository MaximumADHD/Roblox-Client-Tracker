local AnalyticsService = game:GetService("AnalyticsService")
local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)
local SetDevConsoleVisibility = require(script.Parent.Parent.Actions.SetDevConsoleVisibility)
local SetDevConsoleMinimized = require(script.Parent.Parent.Actions.SetDevConsoleMinimized)


local START_VISIBLE = "StartVisible"
local END_VISIBLE = "EndVisible"
local MINIMIZED = "Minimized"

function getAnalyticsKeyName(tabIndex, isClientView)
	if isClientView ~= nil then
		return string.format("%s_%s", tabIndex, isClientView and "Client" or "Server")
	else
		return string.format("%s", tabIndex)
	end
end

function dispatchAnalytics(additionArgs)
	AnalyticsService:SendEventImmediately("client", "devConsoleMetric", "devConsoleTabChange", additionArgs)
end

function ReportTabChange(nextDispatch, store)
	return function(action)
		if action.type == SetActiveTab.name then
			local mainView = store:getState().MainView

			local updateIndex = action.newTabIndex
			local updateIsClient = action.isClientView

			if updateIndex ~= mainView.currTabIndex or
				(updateIsClient ~= nil and
				updateIsClient ~= mainView.isClientView) then

				local additionArgs = {
					initTab = getAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
					endTab = getAnalyticsKeyName(updateIndex, updateIsClient),
				}
				dispatchAnalytics(additionArgs)
			end

		elseif action.type == SetDevConsoleVisibility.name then
			local mainView = store:getState().MainView
			local displayOptions = store:getState().DisplayOptions

			local additionArgs
			if action.isVisible then
				additionArgs = {
					initTab = START_VISIBLE,
					endTab = getAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
				}
			elseif displayOptions.isMinimized then
				additionArgs = {
					initTab = MINIMIZED,
					endTab = END_VISIBLE,
				}
			else
				additionArgs = {
					initTab = getAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
					endTab = END_VISIBLE,
				}
			end
			dispatchAnalytics(additionArgs)

		elseif action.type == SetDevConsoleMinimized.name then
			local mainView = store:getState().MainView

			local additionArgs
			if action.isMinimized then
				additionArgs = {
					initTab = getAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
					endTab = MINIMIZED,
				}
			else
				additionArgs = {
					initTab = MINIMIZED,
					endTab = getAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
				}
			end
			dispatchAnalytics(additionArgs)

		end
        nextDispatch(action)
	end
end

return ReportTabChange