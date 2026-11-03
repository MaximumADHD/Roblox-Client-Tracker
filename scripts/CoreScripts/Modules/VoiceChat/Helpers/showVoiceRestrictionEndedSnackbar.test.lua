local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
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
		})
	end
	return mocked
end)

local showVoiceRestrictionEndedSnackbar = require(script.Parent.showVoiceRestrictionEndedSnackbar)
local DISMISS_MS = game:GetFastInt("VoiceRestrictionEndedSnackbarDismissSeconds") * 1000

local function getHost(): ScreenGui?
	return CoreGui:FindFirstChild("VoiceRestrictionEndedSnackbar") :: ScreenGui?
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

describe("showVoiceRestrictionEndedSnackbar", function()
	beforeEach(function()
		jest.useFakeTimers()
		capturedSnackbarProps = nil
	end)

	afterEach(function()
		advanceBy(DISMISS_MS)
		local host = getHost()
		if host then
			host:Destroy()
		end
		jest.useRealTimers()
	end)

	it("mounts a Foundation snackbar with the localized new-game copy and no action", function()
		show()

		local host = getHost()
		assert(host, "snackbar host should be mounted")
		expect(capturedSnackbarProps.title).toBe("Start a new game to turn on voice chat.")
		expect(capturedSnackbarProps.action).toBeNil()
		expect(host:FindFirstChild("MockSnackbar", true)).toBeTruthy()
	end)

	it("anchors the snackbar at the bottom center, inset from the bottom edge", function()
		show()

		local position: UDim2 = capturedSnackbarProps.Position
		expect(capturedSnackbarProps.AnchorPoint).toEqual(Vector2.new(0.5, 1))
		expect(position.X).toEqual(UDim.new(0.5, 0))
		expect(position.Y.Scale).toBe(1)
		expect(position.Y.Offset < 0).toBe(true)
	end)

	it("dismisses itself after the configured delay", function()
		show()

		advanceBy(DISMISS_MS - 1)
		expect(getHost()).toBeTruthy()

		advanceBy(1)
		expect(getHost()).toBeNil()
	end)

	it("replaces an existing snackbar when shown again", function()
		show()
		local firstHost = getHost()
		assert(firstHost, "first snackbar host should be mounted")

		show()
		local secondHost = getHost()
		expect(secondHost).toBeTruthy()
		expect(secondHost).never.toBe(firstHost)
		expect(firstHost.Parent).toBeNil()
	end)
end)
