local AnalyticsService = game:GetService("RbxAnalyticsService")

local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)
local SetDevConsoleVisibility = require(script.Parent.Parent.Actions.SetDevConsoleVisibility)
local SetDevConsoleMinimized = require(script.Parent.Parent.Actions.SetDevConsoleMinimized)

local FFlagReportDevConsoleOpenClose = settings():GetFFlag("ReportDevConsoleOpenClose")
local FFlagDevConsoleAnalyticsIncludeOwner = settings():GetFFlag("DevConsoleAnalyticsIncludeOwner")

local START_VISIBLE = "DevConsoleStartVisible"
local CLOSE_SESSION_TIME = "DevConsoleSessionTime"

local TABBING_START_VISIBLE = "StartVisible"
local TABBING_END_VISIBLE = "EndVisible"
local TABBING_MINIMIZED = "Minimized"

function ReportDevConsoleOpenClose(store, action)
	if action.type == SetDevConsoleVisibility.name then
		local currState = store:getState().DisplayOptions.isVisible
		local lastTick = store:getState().DisplayOptions.visibleStartTime

		if action.isVisible ~= currState then
			if action.isVisible then
				AnalyticsService:ReportCounter(START_VISIBLE, 1)
			else
				local sessionTime = tick() - lastTick
				AnalyticsService:ReportStats(CLOSE_SESSION_TIME, sessionTime)
			end
		end
	end
end

function getTabAnalyticsKeyName(tabIndex, isClientView)
	if isClientView ~= nil then
		return string.format("%s_%s", tabIndex, isClientView and "Client" or "Server")
	else
		return string.format("%s", tabIndex)
	end
end

function dispatchTabAnalytics(additionArgs)
	AnalyticsService:SendEventImmediately("client", "devConsoleMetric", "devConsoleTabChange", additionArgs)
end

function ReportTabChange(store, action, isDeveloper)
	if action.type == SetActiveTab.name then
		local mainView = store:getState().MainView

		local updateIndex = action.newTabIndex
		local updateIsClient = action.isClientView

		if updateIndex ~= mainView.currTabIndex or
			(updateIsClient ~= nil and
			updateIsClient ~= mainView.isClientView) then

			local additionArgs = {
				initTab = getTabAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
				endTab = getTabAnalyticsKeyName(updateIndex, updateIsClient),
			}
			if FFlagDevConsoleAnalyticsIncludeOwner then
				additionArgs.isOwner = isDeveloper
			end

			dispatchTabAnalytics(additionArgs)
		end

	elseif action.type == SetDevConsoleVisibility.name then
		local mainView = store:getState().MainView
		local displayOptions = store:getState().DisplayOptions

		local additionArgs
		if action.isVisible then
			additionArgs = {
				initTab = TABBING_START_VISIBLE,
				endTab = getTabAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
			}
		elseif displayOptions.isMinimized then
			additionArgs = {
				initTab = TABBING_MINIMIZED,
				endTab = TABBING_END_VISIBLE,
			}
		else
			additionArgs = {
				initTab = getTabAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
				endTab = TABBING_END_VISIBLE,
			}
		end
		if FFlagDevConsoleAnalyticsIncludeOwner then
			additionArgs.isOwner = isDeveloper
		end
		dispatchTabAnalytics(additionArgs)

	elseif action.type == SetDevConsoleMinimized.name then
		local mainView = store:getState().MainView

		local additionArgs
		if action.isMinimized then
			additionArgs = {
				initTab = getTabAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
				endTab = TABBING_MINIMIZED,
			}
		else
			additionArgs = {
				initTab = TABBING_MINIMIZED,
				endTab = getTabAnalyticsKeyName(mainView.currTabIndex, mainView.isClientView),
			}
		end
		if FFlagDevConsoleAnalyticsIncludeOwner then
			additionArgs.isOwner = isDeveloper
		end
		dispatchTabAnalytics(additionArgs)

	end
end

local export: any

if FFlagDevConsoleAnalyticsIncludeOwner then
	-- wrap this middleware in a functional constructor to pass initalization information
	export = function(isDeveloper)
		return function(nextDispatch, store)
			return function(action)
				ReportTabChange(store, action, isDeveloper)

				if FFlagReportDevConsoleOpenClose then
					ReportDevConsoleOpenClose(store, action)
				end
				nextDispatch(action)
			end
		end
	end
else
	export = function(nextDispatch, store)
		return function(action)
				ReportTabChange(store, action)
			if FFlagReportDevConsoleOpenClose then
				ReportDevConsoleOpenClose(store, action)
			end
			nextDispatch(action)
		end
	end
end

return export
