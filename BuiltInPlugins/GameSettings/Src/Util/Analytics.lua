--[[
	Handles analytics for Game Settings, including Diag and EventStream.
	Diag charts can be found under https://go/gamesettingsanalytics

	Allows for local logging to the console by modifying the constant value below.
]]


local LOG_ANALYTICS_EVENTS = false

local AnalyticsService = game:GetService("RbxAnalyticsService")
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local FIntMaxAccessPermissionsCollaborators = game:DefineFastInt("MaxAccessPermissionsCollaborators", 200)

--These functions will be implemented in CLIDEVSRVS-1689
local function getStudioSession()
	local sessionId = nil
	pcall(function()
		sessionId = AnalyticsService:GetSessionId()
	end)
	return sessionId
end

local function getStudioId()
	local clientId = nil
	pcall(function()
		clientId = AnalyticsService:GetClientId()
	end)
	return clientId
end

local Analytics = {}

-- Logging
function Analytics.print(reportType, counterName, num)
	if LOG_ANALYTICS_EVENTS then
		print(string.format("Game Settings Analytics: %s: \"%s\", %f", reportType, counterName, num))
	end
end

function Analytics.printTable(reportType, counterName, tab)
	if LOG_ANALYTICS_EVENTS then
		print(string.format("Game Settings Analytics: %s: \"%s\", %s", reportType, counterName, tab))
	end
end

-- Analytics impl
function Analytics.reportCounter(counterName, num)
	Analytics.print("reportCounter", counterName, num or 1)
	AnalyticsService:ReportCounter(counterName, num or 1)
end

function Analytics.reportStats(counterName, num)
	Analytics.print("reportStats", counterName, num)
	AnalyticsService:ReportStats(counterName, num)
end

function Analytics.sendEventDeferred(eventName, additionalArgs)
	Analytics.printTable("sendEventDeferred", eventName, HttpService:JSONEncode(additionalArgs))
	local args = Cryo.Dictionary.join(additionalArgs, {
		uid = getStudioId(),
		sid = getStudioSession(),
		pid = game.PlaceId,
	})
	AnalyticsService:SendEventDeferred("studio", "gameSettings", eventName, args)
end

-- Analytics events
function Analytics.onSettingSaved(settingName, settingValue)
	Analytics.reportCounter(string.format("GameSettings_SettingSaved_%s", settingName))

	-- Rudimentary hack to get more metrics out of settings without making rules for each individual setting
	-- In the future, we should encapsulate settings in structures that provide more information e.g.
	-- asset id (which we don't want to show on charts) vs bounded int (which we might). Not just for analytics,
	-- but also for saner store code with less manual juggling of data structures
	if typeof(settingValue) == "boolean" then
		local counterModifier = settingValue and "Enabled" or "Disabled"
		Analytics.reportCounter(string.format("GameSettings_Setting%s_%s", counterModifier, settingName))
	elseif typeof(settingValue) == "string" then
		Analytics.reportStats(string.format("GameSettings_StringSettingLength_%s", settingName), settingValue:len())
	end
end

function Analytics.onPageLoadAttempt(pageId)
	Analytics.reportCounter(string.format("GameSettings_PageLoadAttempt_%s", pageId))
end

function Analytics.onPageLoadSuccess(pageId, loadTimeSeconds)
	Analytics.reportCounter(string.format("GameSettings_PageLoadSuccess_%s", pageId))
	Analytics.reportStats(string.format("GameSettings_PageLoadTime_Success_%s", pageId), loadTimeSeconds)
end

function Analytics.onPageLoadError(pageId, loadTimeSeconds)
	Analytics.reportCounter(string.format("GameSettings_PageLoadError_%s", pageId))
	Analytics.reportStats(string.format("GameSettings_PageLoadTime_Error_%s", pageId), loadTimeSeconds)
end

function Analytics.onSaveAttempt()
	Analytics.reportCounter("GameSettings_SaveAttempt")
end

function Analytics.onSaveSuccess(saveTimeSeconds)
	Analytics.reportCounter("GameSettings_SaveSuccess")
	Analytics.reportStats("GameSettings_SaveTime_Success", saveTimeSeconds)
end

function Analytics.onSaveError(saveTimeSeconds)
	Analytics.reportCounter("GameSettings_SaveError")
	Analytics.reportStats("GameSettings_SaveTime_Error", saveTimeSeconds)
end

function Analytics.onPageSaveError(pageId)
	Analytics.reportCounter(string.format("GameSettings_PageSaveError_%s", pageId))
end

function Analytics.onOpenEvent(userId, gameId)
	Analytics.sendEventDeferred("gameSettingsOpen", {})

	Analytics.sendEventDeferred("toolOpened", {
		method = 1, --studio tab
		uid = userId,
		gameId = gameId,
	})
end

function Analytics.onCloseEvent(buttonSelected, timeOpen)
	Analytics.sendEventDeferred("gameSettingsClose", {
		["buttonSelected"] = buttonSelected,
		["timeOpen"] = string.format("%f", timeOpen),
	})
end

function Analytics.onTabChangeEvent(oldTab, newTab)
	if oldTab and newTab then
		Analytics.sendEventDeferred("gameSettingsTabChange", {
			["oldTab"] = oldTab,
			["newTab"] = newTab,
		})
	end
end

function Analytics.numberOfUsers(id, permission)
	Analytics.sendEventDeferred(string.format("GameSettings_%s_UserCount", permission), {
		uid = id,
		gameId = game.GameId,
	})
end

function Analytics.onPermissionGiven(id, type, permission)
	Analytics.sendEventDeferred(string.format("GameSettings_%s%sGiven", type, permission), {
		uid = id,
		gameId = game.GameId,
	})
end

function Analytics.onPermissionRemoved(id, type, permission)
	Analytics.sendEventDeferred(string.format("GameSettings_%s%sRemoved", type, permission), {
		uid = id,
		gameId = game.GameId,
	})
end

function Analytics.onUserAdded()
	Analytics.reportCounter("GameSettings_AccessPermissions_UserAdded")
end

function Analytics.onUserRemoved()
	Analytics.reportCounter("GameSettings_AccessPermissions_UserRemoved")
end

function Analytics.onGroupAdded()
	Analytics.reportCounter("GameSettings_AccessPermissions_GroupAdded")
end

function Analytics.onGroupRemoved()
	Analytics.reportCounter("GameSettings_AccessPermissions_GroupRemoved")
end

function Analytics.onPermissionFailed()
	Analytics.reportCounter("GameSettings_AccessPermissions_Failed")
end

function Analytics.onNumCollaboratorsChanged(numCollaborators)
	-- Averages can be misleading (e.g. 95% of games have < 10 collaborators, but 5% have 150 - avg is ~17)
	-- So track how many games are getting closer to the max for the charts instead
	local thresholds = {1.0, 0.75, 0.5, 0.25}
	for _,threshold in pairs(thresholds) do
		if numCollaborators >= threshold*FIntMaxAccessPermissionsCollaborators then
			Analytics.reportCounter("GameSettings_AccessPermissions_NumCollaboratorThreshold_"..math.floor(threshold*100))
			break
		end
	end

	-- Send detailed information to GA if we want to do a more detailed analysis
	Analytics.sendEventDeferred("GameSettings_AccessPermissions_NumCollaborators", {
		gameId = game.GameId,
		numCollaborators = numCollaborators,
	})
end

function Analytics.onSecuritySettingChange(settingName, settingValue)
	Analytics.sendEventDeferred("GameSettings_SecuritySettingChange", {
		settingName = settingName,
		settingValue = settingValue,
	})
end

return Analytics
