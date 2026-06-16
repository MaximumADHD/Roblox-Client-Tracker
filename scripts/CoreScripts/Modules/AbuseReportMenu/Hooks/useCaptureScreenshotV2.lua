--[[
	Screenshot capture hook for the V2 abuse report menu.

	Rewrite of Hooks/useCaptureScreenshot.lua: the engine integration and
	frame/time sequencing now live in runScreenshotCaptureSequence, while this
	hook owns the React-facing state (capture-phase dedupe, snapshotRef, and the
	isScreenshotTaken signal that drives the menu-open timing).
]]
local root = script:FindFirstAncestor("AbuseReportMenu")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local Constants = require(root.Components.Constants)
local Types = require(root.Components.Types)
local TnSIXPWrapper = require(root.IXP.TnSIXPWrapper)
local runScreenshotCaptureSequence = require(script.Parent.runScreenshotCaptureSequence)

export type CaptureScreenshotOptions = {
	hide: () -> (),
	show: () -> (),
}

export type ScreenshotSnapshot = {
	screenshotId: string,
	identificationResults: Types.IdentificationResults,
}

local function emptySnapshot(): ScreenshotSnapshot
	return {
		screenshotId = "",
		identificationResults = Constants.InitialIdentificationResults,
	}
end

export type UseCaptureScreenshotV2Result = {
	captureIfApplicable: (options: CaptureScreenshotOptions) -> (),
	reset: () -> (),
	-- True only while the hide/screenshot/show window is in flight. Lets the host
	-- bridge tell a screenshot-driven IGM hide from a genuine user close.
	getIsCapturing: () -> boolean,
	-- True when a screenshot will actually be taken on capture (Report Anything is
	-- enabled). Lets callers know whether to expect a screenshot at all.
	isCaptureApplicable: boolean,
	-- Flips true once the screenshot has been initiated (the capture sequence has
	-- taken the shot). Drives the "menu open" signal timing.
	isScreenshotTaken: boolean,
	-- Latest captured snapshot, read imperatively at submit time.
	snapshotRef: { current: ScreenshotSnapshot },
}

type CapturePhase = "idle" | "capturing" | "done"

local function useCaptureScreenshotV2(): UseCaptureScreenshotV2Result
	-- Held in a ref (not state): nothing renders from the snapshot contents; the
	-- submit flow reads snapshotRef.current when the report is sent.
	local snapshotRef = React.useRef(emptySnapshot())
	-- The one reactive bit: drives the menu-open signal once the shot is taken.
	local screenshotTaken, setScreenshotTaken = React.useState(false)

	-- "idle" -> "capturing" (hide/screenshot/show window) -> "done" (captured this
	-- open; deduped until reset re-arms it).
	local capturePhaseRef = React.useRef("idle" :: CapturePhase)

	local canCapture = TnSIXPWrapper.getReportAnythingAvatarEnabled()
		or TnSIXPWrapper.getReportAnythingExperienceEnabled()
	-- Mirror for the stable callbacks below, which must read the latest value.
	local canCaptureRef = React.useRef(canCapture)
	canCaptureRef.current = canCapture

	local reset = React.useCallback(function()
		snapshotRef.current = emptySnapshot()
		capturePhaseRef.current = "idle"
		setScreenshotTaken(false)
	end, {})

	local getIsCapturing = React.useCallback(function()
		return capturePhaseRef.current == "capturing"
	end, {})

	local captureIfApplicable = React.useCallback(function(options: CaptureScreenshotOptions)
		if not canCaptureRef.current or capturePhaseRef.current ~= "idle" then
			return
		end

		capturePhaseRef.current = "capturing"

		runScreenshotCaptureSequence({
			hide = options.hide,
			show = options.show,
			onScreenshotTaken = function()
				setScreenshotTaken(true)
			end,
			onScreenshotUploaded = function(screenshotId: string)
				snapshotRef.current = {
					screenshotId = screenshotId,
					identificationResults = snapshotRef.current.identificationResults,
				}
			end,
			onIdentificationCompleted = function(identificationResults: Types.IdentificationResults)
				snapshotRef.current = {
					screenshotId = snapshotRef.current.screenshotId,
					identificationResults = identificationResults,
				}
			end,
			onCaptureEnd = function()
				capturePhaseRef.current = "done"
			end,
		})
	end, {})

	return {
		captureIfApplicable = captureIfApplicable,
		reset = reset,
		getIsCapturing = getIsCapturing,
		isCaptureApplicable = canCapture,
		isScreenshotTaken = screenshotTaken,
		snapshotRef = snapshotRef,
	}
end

return useCaptureScreenshotV2
