local root = script:FindFirstAncestor("AbuseReportMenu")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMSettingsPageDisplaying = SharedFlags.FFlagIEMSettingsPageDisplaying

local Constants = require(root.Components.Constants)

local capturedContainerProps: any = nil
local mockCaptureIfApplicable = jest.fn()
local mockReset = jest.fn()

-- Mutable so a test can simulate the screenshot hide/show window. Read through a
-- stable function so the hook's getIsCapturing identity does not churn between renders.
local mockIsCapturing = false
local function mockGetIsCapturing()
	return mockIsCapturing
end

-- Mutable so individual tests can simulate "no screenshot will be taken" and
-- "screenshot becomes ready" without re-mocking the module.
local mockCaptureState = {
	isScreenshotTaken = true,
	isCaptureApplicable = true,
}
local mockSnapshotRef = {
	current = {
		screenshotId = "test-shot",
		identificationResults = Constants.InitialIdentificationResults,
	},
}

local mockSignalEnabled = false
local mockInExperiment = false

local mockReportMenuTabOpen = jest.fn()
local mockReportMenuTabClose = jest.fn()

-- Captures the screenshotTaken setter from the most recent render so a test can
-- simulate the screenshot being taken (which, in production, re-renders).
local setMockScreenshotTaken: any = nil

jest.mock(root.Hooks.useCaptureScreenshotV2, function()
	return jest.fn(function()
		local screenshotTaken, setScreenshotTaken = React.useState(function()
			return mockCaptureState.isScreenshotTaken
		end)
		setMockScreenshotTaken = setScreenshotTaken
		return {
			captureIfApplicable = mockCaptureIfApplicable,
			reset = mockReset,
			getIsCapturing = mockGetIsCapturing,
			isCaptureApplicable = mockCaptureState.isCaptureApplicable,
			isScreenshotTaken = screenshotTaken,
			snapshotRef = mockSnapshotRef,
		}
	end)
end)

jest.mock(root.Flags.isAbuseReportMenuOpenCloseSignalEnabled, function()
	return function()
		return mockSignalEnabled
	end
end)

jest.mock(script.Parent.isInWHAM1707Experiment, function()
	return function()
		return mockInExperiment
	end
end)

jest.mock(script.Parent.safetyServiceSignals, function()
	return {
		reportMenuTabOpen = mockReportMenuTabOpen,
		reportMenuTabClose = mockReportMenuTabClose,
	}
end)

jest.mock(CorePackages.Workspace.Packages.GenericAbuseReporting.DynamicReportInExpContainer, function()
	return function(props: any)
		capturedContainerProps = props
		return React.createElement("Frame", { Name = "MockDynamicReportInExpContainer" })
	end
end)

local AbuseReportMenu = require(script.Parent.AbuseReportMenu)

local onReportTabHidden = function() end
local onReportTabDisplayed = function() end
local onReportTabDisplaying = function() end

local defaultProps = {
	hideReportTab = function() end,
	showReportTab = function() end,
	showReportSentPage = function() end,
	registerOnReportTabHidden = function(callback)
		onReportTabHidden = callback
	end,
	registerOnReportTabDisplayed = function(callback)
		onReportTabDisplayed = callback
	end,
	registerOnReportTabDisplaying = function(callback)
		onReportTabDisplaying = callback
	end,
	registerOnSettingsHidden = function() end,
	registerSetNextPlayerToReport = function() end,
	registerOnMenuWidthChange = function() end,
	onReportComplete = function() end,
}

local mountedInstance: any = nil

local function fireOpen()
	Roact.act(function()
		if FFlagIEMSettingsPageDisplaying then
			onReportTabDisplaying()
		else
			onReportTabDisplayed()
		end
	end)
end

local function fireHidden()
	Roact.act(function()
		onReportTabHidden()
	end)
end

describe("AbuseReportMenu V2", function()
	beforeEach(function()
		capturedContainerProps = nil
		mockCaptureIfApplicable.mockClear()
		mockReset.mockClear()
		mockIsCapturing = false
		mockCaptureState.isScreenshotTaken = true
		mockCaptureState.isCaptureApplicable = true
		mockSignalEnabled = false
		mockInExperiment = false
		mockReportMenuTabOpen.mockClear()
		mockReportMenuTabClose.mockClear()
	end)

	afterEach(function()
		if mountedInstance then
			Roact.unmount(mountedInstance)
			mountedInstance = nil
		end
	end)

	local function mount(name: string)
		local element = React.createElement(AbuseReportMenu, defaultProps)
		mountedInstance = Roact.mount(element, CoreGui, name)
	end

	it("mounts without errors", function()
		mount("AbuseReportMenuV2Test")
		expect(mountedInstance).never.toBeNil()
	end)

	it("opens report tab and captures screenshot when eligible", function()
		mount("AbuseReportMenuV2GateTest")

		fireOpen()

		expect(capturedContainerProps.isReportTabVisible).toBe(true)
		expect(mockCaptureIfApplicable).toHaveBeenCalledTimes(1)
		expect(capturedContainerProps.reportAnythingSnapshotRef).toBe(mockSnapshotRef)
		expect(capturedContainerProps.reportAnythingSnapshotRef.current.screenshotId).toBe("test-shot")
	end)

	it("keeps the tab open through the screenshot hide/show", function()
		mount("AbuseReportMenuV2CaptureWindowTest")

		fireOpen()
		expect(capturedContainerProps.isReportTabVisible).toBe(true)
		expect(mockCaptureIfApplicable).toHaveBeenCalledTimes(1)

		-- Screenshot hides the IGM: this is self-induced, not a user close.
		mockIsCapturing = true
		fireHidden()
		expect(capturedContainerProps.isReportTabVisible).toBe(true)

		-- Screenshot shows the IGM again: re-show, not a new user open, so no new capture.
		mockIsCapturing = false
		fireOpen()
		expect(capturedContainerProps.isReportTabVisible).toBe(true)
		expect(mockCaptureIfApplicable).toHaveBeenCalledTimes(1)
	end)

	it("closes the tab and clears the preselected player on a real close", function()
		mount("AbuseReportMenuV2CloseTest")

		fireOpen()
		expect(capturedContainerProps.isReportTabVisible).toBe(true)

		mockIsCapturing = false
		fireHidden()

		expect(capturedContainerProps.isReportTabVisible).toBe(false)
		expect(capturedContainerProps.preselectedPlayer).toBeNil()
	end)

	it("emits the open signal immediately when capture is not applicable", function()
		mockSignalEnabled = true
		mockInExperiment = true
		mockCaptureState.isCaptureApplicable = false
		mockCaptureState.isScreenshotTaken = false

		mount("AbuseReportMenuV2OpenSignalImmediateTest")
		fireOpen()

		expect(mockReportMenuTabOpen).toHaveBeenCalledTimes(1)
	end)

	it("delays the open signal until the screenshot is taken when capture applies", function()
		mockSignalEnabled = true
		mockInExperiment = true
		mockCaptureState.isCaptureApplicable = true
		mockCaptureState.isScreenshotTaken = false

		mount("AbuseReportMenuV2OpenSignalAfterShotTest")

		fireOpen()
		expect(mockReportMenuTabOpen).never.toHaveBeenCalled()

		-- Screenshot is taken -> the hook re-renders with isScreenshotTaken true and
		-- the open signal emits once.
		Roact.act(function()
			setMockScreenshotTaken(true)
		end)
		expect(mockReportMenuTabOpen).toHaveBeenCalledTimes(1)
	end)

	it("emits the close signal on a real close when enabled", function()
		mockSignalEnabled = true
		mockInExperiment = true

		mount("AbuseReportMenuV2CloseSignalTest")

		fireOpen()
		mockIsCapturing = false
		fireHidden()

		expect(mockReportMenuTabClose).toHaveBeenCalledTimes(1)
	end)

	it("does not emit open/close signals when disabled", function()
		mockSignalEnabled = false
		mockInExperiment = false

		mount("AbuseReportMenuV2SignalDisabledTest")

		fireOpen()
		mockIsCapturing = false
		fireHidden()

		expect(mockReportMenuTabOpen).never.toHaveBeenCalled()
		expect(mockReportMenuTabClose).never.toHaveBeenCalled()
	end)
end)
