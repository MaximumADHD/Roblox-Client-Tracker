--!nonstrict
local HttpService = game:GetService("HttpService")
local CorePackages = game:GetService("CorePackages")
local Stats = game:GetService("Stats")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenu = RobloxGui.Modules.InGameMenu

local loggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol).default

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(script.Parent.Constants)
local ConstantsV1 = require(InGameMenu.Resources.Constants)

local FFlagEnableInGameMenuDurationLogger = require(script.Parent.Flags.GetFFlagEnableInGameMenuDurationLogger)()

local FrameRateManager = if Stats
	then Stats:FindFirstChild("FrameRateManager")
	else nil
local RenderAverage = if FrameRateManager
	then FrameRateManager:FindFirstChild("RenderAverage") :: TotalCountTimeIntervalItem
	else nil

local function getCurrentMenuVersion()
	if isNewInGameMenuEnabled() then
		return 2
	end
	return 1
end

local function getMenuAnimationTime(isOpening)
	if isOpening then
		return ConstantsV1.ShieldOpenAnimationTweenTime
	end
	return ConstantsV1.ShieldCloseAnimationTweenTime
end

local function getMonoTimeSec()
	return os.clock()
end

local function getFps(): number?
	if RenderAverage then
		-- 1000ms / frameRenderTimeMs = FPS
		return 1000 / RenderAverage:GetValue()
	else
		return nil
	end
end

local gameSession = HttpService:GenerateGUID()
local menuOpenTime = getMonoTimeSec()
local menuCloseTime = getMonoTimeSec()
local menuOpenToken = nil
local menuClosingToken = nil
local transitionClosing = false
local transitionOpening = false
local menuOpenCount = 0
local ENABLE_DEBUG_LOG = false

local function sendEvent(name, data: {[string]: any})
	data.fps = getFps()
	data.menu_version = getCurrentMenuVersion()

	if FFlagEnableInGameMenuDurationLogger then
		name = name .. '_v' .. data.menu_version
	end

	if ENABLE_DEBUG_LOG then
		print("Event:", name)
		if data then
			for k, v in pairs(data) do
				print("|", k, "=", v)
			end
		end
	end

	if data.menu_session then
		if FFlagEnableInGameMenuDurationLogger then
			loggingProtocol:logEvent(name, data)
		else
			SendAnalytics(Constants.AnalyticsInGameMenuName, name, data)
		end
	end
end

local function sendMenuOpening()
	local eventName = if FFlagEnableInGameMenuDurationLogger then Constants.AnalyticsGameMenuOpenStart else Constants.AnalyticsPerfMenuOpening
	local eventData = {
		menu_session = menuOpenToken,
		game_session = gameSession,
		count = menuOpenCount,
		interrupted_closing = transitionClosing,
	}

	if FFlagEnableInGameMenuDurationLogger then
		sendEvent(Constants.AnalyticsGameMenuFlowStart, eventData)
	end

	sendEvent(eventName, eventData)
end

local function sendMenuStarted(totalTime, normalizedTime)
	local eventName = if FFlagEnableInGameMenuDurationLogger then Constants.AnalyticsGameMenuOpenEnd else Constants.AnalyticsPerfMenuStarted
	sendEvent(eventName, {
		menu_session = menuOpenToken,
		transition_time_total = totalTime,
		transition_time_normalized = normalizedTime,
	})
end

local function sendMenuClosed(totalTime, normalizedTime)
	local eventName = if FFlagEnableInGameMenuDurationLogger then Constants.AnalyticsGameMenuCloseEnd else Constants.AnalyticsPerfMenuClosed
	local eventData = {
		menu_session = menuClosingToken,
		transition_time_total = totalTime,
		transition_time_normalized = normalizedTime,
	}
	sendEvent(eventName, eventData)

	if FFlagEnableInGameMenuDurationLogger then
		sendEvent(Constants.AnalyticsGameMenuFlowEnd, eventData)
	end
end

local function sendMenuEnding(timeSpent, leavingGame: boolean?)
	local reason = leavingGame and "leaving" or "resume"
	local eventName = if FFlagEnableInGameMenuDurationLogger then Constants.AnalyticsGameMenuCloseStart else Constants.AnalyticsPerfMenuEnding
	sendEvent(eventName, {
		menu_session = menuOpenToken,
		session_time = timeSpent,
		reason = reason,
		interrupted_opening = transitionOpening,
	})
end

return {
	menuOpenBegin = function()
		if menuOpenToken then
			-- token must be nil to start a new cycle
			return
		end
		menuOpenCount = menuOpenCount + 1
		menuOpenTime = getMonoTimeSec()
		menuOpenToken = HttpService:GenerateGUID()
		sendMenuOpening()
		transitionOpening = true
		transitionClosing = false
	end,
	menuOpenComplete = function()
		local now = getMonoTimeSec()
		local delta = now - menuOpenTime
		local deltaNormalized = delta - getMenuAnimationTime(--[[isOpening=]]true)
		sendMenuStarted(delta, deltaNormalized)
		transitionOpening = false
	end,
	menuClose = function()
		menuCloseTime = getMonoTimeSec()
		local delta = menuCloseTime - menuOpenTime
		sendMenuEnding(delta)
		menuClosingToken = menuOpenToken
		menuOpenToken = nil
		transitionOpening = false
		transitionClosing = true
	end,
	menuCloseComplete = function()
		local now = getMonoTimeSec()
		local delta = now - menuCloseTime
		local deltaNormalized = delta - getMenuAnimationTime(--[[isOpening=]]false)
		sendMenuClosed(delta, deltaNormalized)
		menuClosingToken = nil
		transitionClosing = false
	end,
	leavingGame = function()
		local now = getMonoTimeSec()
		local delta = now - menuOpenTime
		sendMenuEnding(delta, true)
		menuOpenToken = nil
	end,
	getFps = getFps,
}
