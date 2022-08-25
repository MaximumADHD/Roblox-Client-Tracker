local HttpService = game:GetService("HttpService")
local Stats = game:GetService("Stats")
local FrameRateManager = if Stats
	then Stats:FindFirstChild("FrameRateManager")
	else nil
local RenderAverage = if FrameRateManager
	then FrameRateManager:FindFirstChild("RenderAverage") :: TotalCountTimeIntervalItem
	else nil
local InGameMenu = script.Parent.Parent
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

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

local function sendEvent(name, data)
	data.fps = getFps()
	if ENABLE_DEBUG_LOG then
		print("Event:", name)
		if data then
			for k, v in pairs(data) do
				print("|", k, "=", v)
			end
		end
	end
	if data.menu_session then
		SendAnalytics(Constants.AnalyticsInGameMenuName, name, data)
	end
end

local function sendMenuOpening()
	sendEvent(Constants.AnalyticsPerfMenuOpening, {
		menu_session = menuOpenToken,
		game_session = gameSession,
		count = menuOpenCount,
		interrupted_closing = transitionClosing,
	})
end

local function sendMenuStarted(totalTime, normalizedTime)
	sendEvent(Constants.AnalyticsPerfMenuStarted, {
		menu_session = menuOpenToken,
		transition_time_total = totalTime,
		transition_time_normalized = normalizedTime,
	})
end

local function sendMenuClosed(totalTime, normalizedTime)
	sendEvent(Constants.AnalyticsPerfMenuClosed, {
		menu_session = menuClosingToken,
		transition_time_total = totalTime,
		transition_time_normalized = normalizedTime,
	})
end

local function sendMenuEnding(timeSpent, leavingGame: boolean?)
	local reason = leavingGame and "leaving" or "resume"
	sendEvent(Constants.AnalyticsPerfMenuEnding, {
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
		local deltaNormalized = delta - Constants.MenuOpenTweenTime
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
		local deltaNormalized = delta - Constants.MenuOpenTweenTime
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
}
