local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local Otter = require(CorePackages.Packages.Otter)
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local capturedSnackbarProps: any

jest.mock(CorePackages.Packages.Foundation, function()
	local actual = jest.requireActual(CorePackages.Packages.Foundation)
	local mocked = table.clone(actual)
	mocked.Snackbar = function(props)
		capturedSnackbarProps = props
		return React.createElement("TextLabel", {
			Name = "MockSnackbar",
			Text = props.title,
			AnchorPoint = props.AnchorPoint,
			Position = props.Position,
		})
	end
	return mocked
end)

-- The real hook parents its measuring ScreenGuis to CoreGui for the rest of the run.
jest.mock(CorePackages.Workspace.Packages.Responsive, function()
	local actual = jest.requireActual(CorePackages.Workspace.Packages.Responsive)
	local mocked = table.clone(actual)
	mocked.useDeviceInsets = function()
		return { left = 0, top = 0, right = 0, bottom = 0 }
	end
	return mocked
end)

-- The real provider picks Console from the ten-foot check once, at require time.
local mockRootDeviceType: string? = nil
jest.mock(CorePackages.Workspace.Packages.CoreScriptsRoactCommon, function()
	local actual = jest.requireActual(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
	local mocked = table.clone(actual)
	mocked.CoreScriptsRootProvider = function(props)
		return React.createElement(actual.CoreScriptsRootProvider, {
			styleOverride = if mockRootDeviceType then { deviceType = mockRootDeviceType } else nil,
		}, props.children)
	end
	return mocked
end)

local Foundation = require(CorePackages.Packages.Foundation)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local showVoiceRestrictionEndedSnackbar = require(script.Parent.showVoiceRestrictionEndedSnackbar)
local DISMISS_MS = game:GetFastInt("VoiceRestrictionEndedSnackbarDismissSeconds") * 1000
-- At 60 FPS, comfortably longer than the 200ms enter and 150ms exit.
local ANIMATION_FRAMES = 30

local HIDDEN_ANCHOR = Vector2.new(0.5, 0)
local HIDDEN_POSITION = UDim2.fromScale(0.5, 1)
local REST_ANCHOR = Vector2.new(0.5, 1)
-- Foundation's 20px snackbar margin, with no safe-area inset.
local REST_POSITION = UDim2.new(0.5, 0, 1, -20)

local function getHost(): ScreenGui?
	return CoreGui:FindFirstChild("VoiceRestrictionEndedSnackbar") :: ScreenGui?
end

local function getSnackbar(): TextLabel
	local host = getHost()
	assert(host, "snackbar host should be mounted")
	local snackbar = host:FindFirstChild("MockSnackbar", true)
	assert(snackbar, "snackbar should be rendered")
	return snackbar :: TextLabel
end

local function show()
	ReactRoblox.act(function()
		showVoiceRestrictionEndedSnackbar()
	end)
end

local function advanceBy(ms: number)
	ReactRoblox.act(function()
		jest.advanceTimersByTime(ms)
	end)
end

local function stepAnimation(frames: number?)
	ReactRoblox.act(function()
		for _ = 1, frames or ANIMATION_FRAMES do
			Otter.__devAnimationStepSignal:Fire()
		end
	end)
end

local function expectAtRest(snackbar: TextLabel)
	expect(snackbar.AnchorPoint).toEqual(REST_ANCHOR)
	expect(snackbar.Position).toEqual(REST_POSITION)
end

describe("showVoiceRestrictionEndedSnackbar", function()
	local originalReducedMotion: boolean

	beforeEach(function()
		jest.useFakeTimers()
		_G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ = true
		originalReducedMotion = UserGameSettings.ReducedMotion
		UserGameSettings.ReducedMotion = false
		capturedSnackbarProps = nil
		mockRootDeviceType = nil
	end)

	afterEach(function()
		advanceBy(DISMISS_MS)
		stepAnimation()
		local host = getHost()
		if host then
			host:Destroy()
		end
		UserGameSettings.ReducedMotion = originalReducedMotion
		_G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ = nil
		jest.useRealTimers()
	end)

	it("mounts a Foundation snackbar with the localized new-game copy and no action", function()
		show()

		expect(capturedSnackbarProps.title).toBe("Start a new game to turn on voice chat.")
		expect(capturedSnackbarProps.action).toBeNil()
		expect(getSnackbar()).toBeTruthy()
	end)

	it("hosts the snackbar in a ScreenGui that spans the full screen, unclipped by the safe area", function()
		show()

		local host = getHost()
		assert(host, "snackbar host should be mounted")
		expect(host.ScreenInsets).toBe(Enum.ScreenInsets.None)
		expect(host.ClipToDeviceSafeArea).toBe(false)
	end)

	it("positions the snackbar itself, not a wrapper", function()
		show()

		expect(getSnackbar().Parent).toBe(getHost())
	end)

	it("starts below the bottom edge and comes to rest 20px above it, centered", function()
		show()

		local snackbar = getSnackbar()
		expect(snackbar.AnchorPoint).toEqual(HIDDEN_ANCHOR)
		expect(snackbar.Position).toEqual(HIDDEN_POSITION)

		stepAnimation()
		expectAtRest(snackbar)
	end)

	it("sizes the snackbar with the CoreScripts root provider's Console tokens", function()
		mockRootDeviceType = RobloxAppEnums.DeviceType.Console
		local consoleTokens =
			Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark, Foundation.Enums.Device.Console)

		show()
		stepAnimation()

		expect(getSnackbar().Position).toEqual(UDim2.new(0.5, 0, 1, -consoleTokens.Padding.XLarge))
	end)

	it("stays up until the dismiss delay, then slides out and unmounts once off-screen", function()
		show()
		stepAnimation()

		advanceBy(DISMISS_MS - 1)
		stepAnimation()
		expectAtRest(getSnackbar())

		advanceBy(1)
		expect(getHost()).toBeTruthy()

		stepAnimation()
		expect(getHost()).toBeNil()
	end)

	it("keeps a shown snackbar up for the full dismiss delay when shown again", function()
		show()
		stepAnimation()
		local snackbar = getSnackbar()

		advanceBy(DISMISS_MS - 1)
		show()
		advanceBy(DISMISS_MS - 1)
		stepAnimation()

		expect(getSnackbar()).toBe(snackbar)
		expectAtRest(snackbar)

		advanceBy(1)
		stepAnimation()
		expect(getHost()).toBeNil()
	end)

	it("keeps an entering snackbar sliding in when shown again", function()
		show()
		stepAnimation(3)
		local snackbar = getSnackbar()
		local offsetBefore = snackbar.Position.Y.Offset

		show()
		stepAnimation(1)

		expect(getSnackbar()).toBe(snackbar)
		expect(snackbar.Position.Y.Offset < offsetBefore).toBe(true)

		stepAnimation()
		expectAtRest(snackbar)
	end)

	it("slides back in and stays up when shown again while sliding out", function()
		show()
		stepAnimation()
		local snackbar = getSnackbar()

		advanceBy(DISMISS_MS)
		stepAnimation(3)
		show()
		stepAnimation()

		expect(getSnackbar()).toBe(snackbar)
		expectAtRest(snackbar)

		advanceBy(DISMISS_MS - 1)
		stepAnimation()
		expectAtRest(snackbar)
	end)

	it("comes back when shown again as its slide-out finishes, before React re-renders", function()
		show()
		stepAnimation()

		advanceBy(DISMISS_MS)
		stepAnimation(3)
		-- One act defers React's update while the remaining exit frames run now.
		ReactRoblox.act(function()
			showVoiceRestrictionEndedSnackbar()
			for _ = 1, ANIMATION_FRAMES do
				Otter.__devAnimationStepSignal:Fire()
			end
		end)
		stepAnimation()

		expectAtRest(getSnackbar())

		advanceBy(DISMISS_MS - 1)
		stepAnimation()
		expectAtRest(getSnackbar())
	end)
end)
