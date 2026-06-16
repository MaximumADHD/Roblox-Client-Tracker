--[[
	Imperative screenshot capture sequence for the V2 abuse report menu.

	Extracted and refactored from the inline capture logic in
	Components/AbuseReportMenuNew.lua (the legacy menu) and the old
	Hooks/useCaptureScreenshot.lua hook. The frame/time waits and hide/show
	timing are intended to match AbuseReportMenuNew; see the inline comments.
]]
local root = script:FindFirstAncestor("AbuseReportMenu")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")

local Types = require(root.Components.Types)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMTabFocusNav = SharedFlags.FFlagIEMTabFocusNav

local AvatarIdentificationPkg = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
local AdIdentificationPkg = require(CorePackages.Workspace.Packages.TnSAdIdentification)
local ScreenshotManager = require(CorePackages.Workspace.Packages.TnSScreenshot).ScreenshotManager

local AvatarIdentification = AvatarIdentificationPkg.AvatarIdentification
local AdIdentification = AdIdentificationPkg.AdIdentification

local FIntAbuseReportMenuScreenshotReduceMotionWaitFrames =
	game:DefineFastInt("AbuseReportMenuScreenshotReduceMotionWaitFrames", 20)
local FIntAbuseReportMenuScreenshotWaitFrames = game:DefineFastInt("AbuseReportMenuScreenshotWaitFrames", 10)

local UserGameSettings = UserSettings():GetService("UserGameSettings")

-- Take the screenshot one frame after hiding so the remaining menu UI has gone
-- away (matches AbuseReportMenuNew, which captured on the second Heartbeat).
local SCREENSHOT_WAIT_FRAMES = 1

-- Per-capture callbacks: what to do as the capture progresses.
export type CaptureSequenceCallbacks = {
	-- hides the IGM so it is not in the screenshot
	hide: () -> (),
	-- re-shows the IGM after the capture window
	show: () -> (),
	-- fired synchronously when the screenshot is taken (capture initiated)
	onScreenshotTaken: () -> (),
	-- fired with the durable screenshotId once the upload completes
	onScreenshotUploaded: (screenshotId: string) -> (),
	onIdentificationCompleted: (identificationResults: Types.IdentificationResults) -> (),
	-- fired after the IGM has been re-shown and the capture window is closed
	onCaptureEnd: () -> (),
}

-- Environment seam, defaulted to the real engine integrations. Tests inject fakes.
export type CaptureSequenceDeps = {
	takeScreenshot: (onScreenshotUploaded: (string) -> ()) -> boolean,
	getVisibleAvatars: () -> (any, any),
	getVisibleAds: () -> (any, any),
	runService: RunService,
	getWaitFrames: () -> number,
	getWaitTime: () -> number,
}

local function defaultGetWaitFrames(): number
	if UserGameSettings.ReducedMotion then
		return FIntAbuseReportMenuScreenshotReduceMotionWaitFrames
	end
	return FIntAbuseReportMenuScreenshotWaitFrames
end

local function defaultGetWaitTime(): number
	return defaultGetWaitFrames() / 60
end

local function defaultDeps(): CaptureSequenceDeps
	return {
		takeScreenshot = function(onScreenshotUploaded)
			return ScreenshotManager:TakeScreenshotWithCallback(onScreenshotUploaded)
		end,
		getVisibleAvatars = function()
			return AvatarIdentification.getVisibleAvatars()
		end,
		getVisibleAds = function()
			return AdIdentification.getVisibleAds()
		end,
		runService = RunService,
		getWaitFrames = defaultGetWaitFrames,
		getWaitTime = defaultGetWaitTime,
	}
end

local function runIdentification(deps: CaptureSequenceDeps): Types.IdentificationResults
	local identifiedAvatars, avatarIDStats = deps.getVisibleAvatars()
	local identifiedAds, adIDStats = deps.getVisibleAds()
	return {
		identifiedAvatars = identifiedAvatars,
		identifiedAds = identifiedAds,
		avatarIDStats = avatarIDStats,
		adIDStats = adIDStats,
	}
end

local function runScreenshotCaptureSequence(callbacks: CaptureSequenceCallbacks, deps: CaptureSequenceDeps?)
	local resolvedDeps = deps or defaultDeps()

	local lastSelected: GuiObject? = nil
	if FFlagIEMTabFocusNav then
		lastSelected = GuiService.SelectedCoreObject
	end

	callbacks.hide()

	local framesSinceHide = 0
	local startClock = os.clock()
	local screenshotTaken = false

	local connection: RBXScriptConnection
	connection = resolvedDeps.runService.Heartbeat:Connect(function()
		-- Capture one frame after hide, so the menu UI is no longer on screen.
		if not screenshotTaken and framesSinceHide >= SCREENSHOT_WAIT_FRAMES then
			screenshotTaken = true
			resolvedDeps.takeScreenshot(callbacks.onScreenshotUploaded)
			callbacks.onScreenshotTaken()
			callbacks.onIdentificationCompleted(runIdentification(resolvedDeps))
		end

		-- Re-show once enough frames AND time have elapsed since hide (counted
		-- concurrently with the screenshot wait, matching AbuseReportMenuNew).
		-- Re-showing too soon can leave the menu stuck.
		local enoughFrames = framesSinceHide >= resolvedDeps.getWaitFrames()
		local enoughTime = (os.clock() - startClock) >= resolvedDeps.getWaitTime()
		if screenshotTaken and enoughFrames and enoughTime then
			connection:Disconnect()
			callbacks.show()
			if FFlagIEMTabFocusNav and lastSelected and lastSelected:IsDescendantOf(game) then
				GuiService.SelectedCoreObject = lastSelected
			end
			callbacks.onCaptureEnd()
			return
		end

		framesSinceHide += 1
	end)
end

return runScreenshotCaptureSequence
