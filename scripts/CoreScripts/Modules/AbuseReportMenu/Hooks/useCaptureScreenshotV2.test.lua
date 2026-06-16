local root = script:FindFirstAncestor("AbuseReportMenu")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local Constants = require(root.Components.Constants)

local mockRunSequence = jest.fn()
jest.mock(script.Parent.runScreenshotCaptureSequence, function()
	return mockRunSequence
end)

local mockGetReportAnythingAvatarEnabled = jest.fn().mockReturnValue(true)
local mockGetReportAnythingExperienceEnabled = jest.fn().mockReturnValue(false)
jest.mock(root.IXP.TnSIXPWrapper, function()
	return {
		getReportAnythingAvatarEnabled = mockGetReportAnythingAvatarEnabled,
		getReportAnythingExperienceEnabled = mockGetReportAnythingExperienceEnabled,
	}
end)

local useCaptureScreenshotV2 = require(script.Parent.useCaptureScreenshotV2)

local captured: any = nil

local function TestHarness()
	captured = useCaptureScreenshotV2()
	return React.createElement("Frame", { Name = "Harness" })
end

-- The callbacks the hook handed to the (mocked) capture sequence on the most recent
-- captureIfApplicable call.
local function lastSequenceCallbacks(): any
	local calls = mockRunSequence.mock.calls
	return calls[#calls][1]
end

describe("useCaptureScreenshotV2", function()
	beforeEach(function()
		captured = nil
		mockRunSequence.mockClear()
		mockGetReportAnythingAvatarEnabled.mockReturnValue(true)
		mockGetReportAnythingExperienceEnabled.mockReturnValue(false)
	end)

	it("exposes an empty snapshot initially", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2Test")
		expect(captured).never.toBeNil()
		expect(captured.snapshotRef.current.screenshotId).toBe("")
		expect(captured.snapshotRef.current.identificationResults).toEqual(Constants.InitialIdentificationResults)
		expect(captured.isScreenshotTaken).toBe(false)
		expect(captured.getIsCapturing()).toBe(false)
		Roact.unmount(instance)
	end)

	it("captureIfApplicable runs the sequence when eligible", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2CaptureTest")
		local hide = jest.fn()
		local show = jest.fn()

		Roact.act(function()
			captured.captureIfApplicable({ hide = hide, show = show })
		end)

		expect(mockRunSequence).toHaveBeenCalledTimes(1)
		expect(lastSequenceCallbacks().hide).toBe(hide)
		expect(lastSequenceCallbacks().show).toBe(show)
		Roact.unmount(instance)
	end)

	it("captureIfApplicable skips when capture is not enabled", function()
		mockGetReportAnythingAvatarEnabled.mockReturnValue(false)
		mockGetReportAnythingExperienceEnabled.mockReturnValue(false)

		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2SkipTest")

		Roact.act(function()
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
		end)

		expect(mockRunSequence).never.toHaveBeenCalled()
		Roact.unmount(instance)
	end)

	it("captureIfApplicable dedupes repeated calls", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2DedupTest")

		Roact.act(function()
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
		end)

		expect(mockRunSequence).toHaveBeenCalledTimes(1)
		Roact.unmount(instance)
	end)

	it("exposes isCaptureApplicable when Report Anything is enabled", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2ApplicableTest")
		expect(captured.isCaptureApplicable).toBe(true)
		Roact.unmount(instance)
	end)

	it("exposes isCaptureApplicable as false when Report Anything is disabled", function()
		mockGetReportAnythingAvatarEnabled.mockReturnValue(false)
		mockGetReportAnythingExperienceEnabled.mockReturnValue(false)

		local instance =
			Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2NotApplicableTest")
		expect(captured.isCaptureApplicable).toBe(false)
		Roact.unmount(instance)
	end)

	it("getIsCapturing is true only during the capture window", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2CapturingTest")

		expect(captured.getIsCapturing()).toBe(false)

		Roact.act(function()
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
		end)
		expect(captured.getIsCapturing()).toBe(true)

		Roact.act(function()
			lastSequenceCallbacks().onCaptureEnd()
		end)
		expect(captured.getIsCapturing()).toBe(false)

		Roact.unmount(instance)
	end)

	it("isScreenshotTaken flips when the sequence reports the shot", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2TakenTest")

		Roact.act(function()
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
		end)
		expect(captured.isScreenshotTaken).toBe(false)

		Roact.act(function()
			lastSequenceCallbacks().onScreenshotTaken()
		end)
		expect(captured.isScreenshotTaken).toBe(true)

		Roact.unmount(instance)
	end)

	it("updates snapshotRef on upload and identification", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2SnapshotTest")

		local identification = {
			identifiedAvatars = { ["1"] = true },
			identifiedAds = {},
			avatarIDStats = { totalPlayers = 1, checkedPlayers = 1, duration = 0 },
			adIDStats = { totalPlayers = 0, checkedPlayers = 0, duration = 0 },
		}

		Roact.act(function()
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
		end)

		local callbacks = lastSequenceCallbacks()
		Roact.act(function()
			callbacks.onScreenshotUploaded("shot-1")
			callbacks.onIdentificationCompleted(identification)
		end)

		expect(captured.snapshotRef.current.screenshotId).toBe("shot-1")
		expect(captured.snapshotRef.current.identificationResults).toBe(identification)

		Roact.unmount(instance)
	end)

	it("reset re-enables capture and clears the snapshot", function()
		local instance = Roact.mount(React.createElement(TestHarness), CoreGui, "UseCaptureScreenshotV2ResetTest")

		Roact.act(function()
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
		end)
		Roact.act(function()
			local callbacks = lastSequenceCallbacks()
			callbacks.onScreenshotTaken()
			callbacks.onScreenshotUploaded("shot-1")
		end)

		Roact.act(function()
			captured.reset()
		end)
		expect(captured.snapshotRef.current.screenshotId).toBe("")
		expect(captured.isScreenshotTaken).toBe(false)

		Roact.act(function()
			captured.captureIfApplicable({ hide = jest.fn(), show = jest.fn() })
		end)
		expect(mockRunSequence).toHaveBeenCalledTimes(2)

		Roact.unmount(instance)
	end)
end)
