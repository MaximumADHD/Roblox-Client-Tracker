--!nonstrict
--[[
	// FileName: NetworkPause.lua
	// Written by: woot3
	// Description: Code for network pausing during streaming enabled.
]]

-- SERVICES
local PlayerService = game:GetService("Players")
local CoreGuiService = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local TelemetryService = game:GetService("TelemetryService")

local RobloxGui = CoreGuiService.RobloxGui
local CoreGuiModules = RobloxGui.Modules

local Player = PlayerService.LocalPlayer

while not Player do
	wait()
	Player = PlayerService.LocalPlayer
end

-- MODULES
local NetworkPauseNotification = require(CoreGuiModules.NetworkPauseNotification)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create

-- FLAGS
-- Gates the anti-flicker state machine - show-delay on pause and dismissal debounce on rapid unpause.
local FFlagGameplayPauseFlickerMitigation = game:DefineFastFlag("GameplayPauseFlickerMitigation", false)
local FIntRapidGameplayPauseIntervalMs = game:DefineFastInt("RapidGameplayPauseIntervalMs", 1000) -- If we repause within this time since the last unpause, debounce the next dismissal to prevent oscillation.
local FIntRapidGameplayPauseMinNotificationDurationMs = game:DefineFastInt("RapidGameplayPauseMinNotificationDurationMs", 500) -- Min time to keep notification visible after a rapid unpause.
local FIntGameplayPauseShowDelayMs = game:DefineFastInt("GameplayPauseShowDelayMs", 300) -- Min time in pause state before pause UI is shown

-- ANALYTICS
local FFlagStreamingPauseUIAnalyticsEnabled = game:DefineFastFlag("StreamingPauseUIAnalyticsEnabled", false)
local FIntStreamingPauseUIAnalyticsThrottleHundredthsPercent = game:DefineFastInt("StreamingPauseUIAnalyticsThrottleHP", 0)

local StreamingPauseUISessionEvent = {
	eventName = "StreamingPauseUISessionStats",
	backends = { "EventIngest" },
	throttlingPercentage = FIntStreamingPauseUIAnalyticsThrottleHundredthsPercent,
	lastUpdated = { 2026, 6, 2 },
	description = "Session stats for streaming pause UI visibility",
}

local sessionStartClock = os.clock()
local pauseCount = 0
local visibleDurationMs = 0
local visibilityStartClock = nil -- nil while notification is hidden; set when shown.

-- STATE MACHINE
-- Transitions only flow through enterStage(). Each stage's entry function owns its timers and
-- the notification UI; leaving the stage always cancels them, so timers can never leak.
local STAGE = table.freeze({
	UNPAUSED = "unpaused", -- GameplayPaused is false; notification hidden.
	PENDING_SHOW = "pendingShow", -- Paused, within the show-delay grace window; notification still hidden.
	PAUSED = "paused", -- Notification is visible.
	RAPID_PAUSE_PENDING_DISMISS = "rapidPausePendingDismiss", -- Notification still visible after a rapid unpause; debouncing the hide.
})

-- VARIABLES
local isFirstPauseChange = true -- Skip the first signal so UI does not flash during loading. Read by both the legacy and state-machine paths.
local stage = STAGE.UNPAUSED
local lastUnpauseTime = -math.huge -- Sentinel so the first pause is never considered rapid.
local inRapidPause = false -- Set on entry to PAUSED; read on exit to decide between UNPAUSED and RAPID_PAUSE_PENDING_DISMISS.
local showTimer = nil
local dismissTimer = nil

-- UI SURFACE
local Notification = NetworkPauseNotification.new()

local NetworkPauseGui = Create "ScreenGui" {

	Name = "RobloxNetworkPauseNotification",
	OnTopOfCoreBlur = true,
	DisplayOrder = 8,
	Parent = CoreGuiService,
	IgnoreGuiInset = false,
	AutoLocalize = false,
}

local function reportPauseSessionAnalytics()
	-- Add in-flight visible interval to the total before reporting
	local totalVisibleDurationMs = visibleDurationMs
	if visibilityStartClock ~= nil then
		totalVisibleDurationMs += (os.clock() - visibilityStartClock) * 1000
	end
	TelemetryService:LogEvent(StreamingPauseUISessionEvent, {
		customFields = {
			sessionDurationMs = (os.clock() - sessionStartClock) * 1000,
			pauseCount = pauseCount,
			totalPauseDurationMs = totalVisibleDurationMs,
			pauseEnabled = NetworkPauseGui.Enabled,
		},
	})
end

local function setNotificationVisible(visible)
	if visible then
		Notification:Show()
	else
		Notification:Hide()
	end
	RunService:SetRobloxGuiFocused(visible)

	-- Analytics - track pause count and visible duration
	if FFlagStreamingPauseUIAnalyticsEnabled then
		if visible then
			if visibilityStartClock == nil then
				visibilityStartClock = os.clock()
				pauseCount += 1
			end
		else
			if visibilityStartClock ~= nil then
				visibleDurationMs += (os.clock() - visibilityStartClock) * 1000
				visibilityStartClock = nil
			end
		end
	end
end

local function cancelTimers()
	if showTimer ~= nil then
		task.cancel(showTimer)
		showTimer = nil
	end
	if dismissTimer ~= nil then
		task.cancel(dismissTimer)
		dismissTimer = nil
	end
end

local function isRapidRepause()
	return (os.clock() - lastUnpauseTime) * 1000 < FIntRapidGameplayPauseIntervalMs
end

local function enterStage(nextStage)
	stage = nextStage
	cancelTimers()

	if nextStage == STAGE.UNPAUSED then
		inRapidPause = false
		setNotificationVisible(false)
	elseif nextStage == STAGE.PENDING_SHOW then
		-- We paused but are waiting a short time before showing the UI to prevent flickers from brief pauses
		showTimer = task.delay(FIntGameplayPauseShowDelayMs / 1000, function()
			showTimer = nil
			-- Guard against races: only promote if we are still in PENDING_SHOW and the
			-- conditions to show are still true.
			if stage == STAGE.PENDING_SHOW and Player.GameplayPaused and NetworkPauseGui.Enabled then
				enterStage(STAGE.PAUSED)
			end
		end)
	elseif nextStage == STAGE.PAUSED then
		inRapidPause = isRapidRepause()
		setNotificationVisible(true)
	elseif nextStage == STAGE.RAPID_PAUSE_PENDING_DISMISS then
		-- We're in a rapid pause flicker state, wait a short time to see if we pause again before dismissing the UI
		dismissTimer = task.delay(FIntRapidGameplayPauseMinNotificationDurationMs / 1000, function()
			dismissTimer = nil
			if stage == STAGE.RAPID_PAUSE_PENDING_DISMISS and not Player.GameplayPaused then
				enterStage(STAGE.UNPAUSED)
			end
		end)
	end
end

-- EVENT HANDLERS
local function onGameplayPausedChanged()
	local paused = Player.GameplayPaused and NetworkPauseGui.Enabled and not isFirstPauseChange
	isFirstPauseChange = false

	if paused then
		-- Skip the show delay if the UI is still visible inside the dismiss debounce, or if
		-- we are repausing right after an unpause - rapid oscillations of sub-threshold pauses
		-- should still surface the UI instead of being hidden forever.
		if stage == STAGE.RAPID_PAUSE_PENDING_DISMISS or isRapidRepause() then
			enterStage(STAGE.PAUSED)
		else
			enterStage(STAGE.PENDING_SHOW)
		end
	else
		if stage ~= STAGE.UNPAUSED then
			lastUnpauseTime = os.clock()
		end
		if stage == STAGE.PENDING_SHOW then
			-- UI was never shown, so there is nothing to debounce.
			enterStage(STAGE.UNPAUSED)
		elseif inRapidPause then
			enterStage(STAGE.RAPID_PAUSE_PENDING_DISMISS)
		else
			enterStage(STAGE.UNPAUSED)
		end
	end
end

-- Remove with FFlagGameplayPauseFlickerMitigation
local function togglePauseState()
	local paused = Player.GameplayPaused and NetworkPauseGui.Enabled and not isFirstPauseChange
	isFirstPauseChange = false
	if paused then
		Notification:Show()
	else
		Notification:Hide()
	end
	RunService:SetRobloxGuiFocused(paused)
end

if FFlagGameplayPauseFlickerMitigation then
	Player:GetPropertyChangedSignal("GameplayPaused"):Connect(onGameplayPausedChanged)
else
	Player:GetPropertyChangedSignal("GameplayPaused"):Connect(togglePauseState)
end

local function enableNotification(enabled)
	assert(type(enabled) == "boolean", "Specified argument 'enabled' must be of type boolean")
	if enabled == NetworkPauseGui.Enabled then return end
	NetworkPauseGui.Enabled = enabled
	if FFlagGameplayPauseFlickerMitigation then
		if enabled then
			-- Re-evaluate from the current GameplayPaused state so the UI can show if we are paused.
			onGameplayPausedChanged()
		else
			-- Force immediate reset; any pending show or dismiss debounce is moot when the GUI is off.
			enterStage(STAGE.UNPAUSED)
		end
	else
		togglePauseState()
	end
end

Notification:SetParent(NetworkPauseGui)

GuiService.NetworkPausedEnabledChanged:Connect(enableNotification)

if FFlagGameplayPauseFlickerMitigation and FFlagStreamingPauseUIAnalyticsEnabled then
	game.Close:Connect(reportPauseSessionAnalytics)
end