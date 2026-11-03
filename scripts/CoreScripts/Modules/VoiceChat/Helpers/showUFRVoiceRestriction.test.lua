local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local displaySignal =
	require(CorePackages.Workspace.Packages.UniversalFeatureRestrictions.featureRestrictionDisplayDirectSignal)
local fetchSignal =
	require(CorePackages.Workspace.Packages.UniversalFeatureRestrictions.featureRestrictionDisplaySignal)
local showUFRVoiceRestriction = require(script.Parent.showUFRVoiceRestriction)

local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local LocalPlayer = Players.LocalPlayer :: Player

local manager
local display
local fetch
local displayConnection
local fetchConnection
local settings = { isBanned = true, banReason = 8, bannedUntil = { Seconds = 2000000000 } }

beforeEach(function()
	manager = {
		service = {},
		previousSessionId = "previous-session",
		PostRequest = jest.fn(),
		Analytics = {
			reportBanMessageEvent = jest.fn(),
			reportBanMessageEventV2 = jest.fn(),
		},
	}
	display = jest.fn()
	fetch = jest.fn()
	displayConnection = displaySignal:connect(display)
	fetchConnection = fetchSignal:connect(fetch)
end)

afterEach(function()
	displayConnection:disconnect()
	fetchConnection:disconnect()
end)

local function show(onAcknowledgementSuccess: (() -> ())?)
	showUFRVoiceRestriction({
		manager = manager,
		settings = settings,
		onAcknowledgementSuccess = onAcknowledgementSuccess,
	})
	return fetch.mock.calls[1][1]
end

describe("showUFRVoiceRestriction", function()
	it("fetches the voice restriction so UFR owns acknowledgement", function()
		local onAcknowledgementSuccess = jest.fn()
		local payload = show(onAcknowledgementSuccess)
		expect(payload.abuseVector).toBe("voice")
		expect(payload.options.onAcknowledgementSuccess).toBe(onAcknowledgementSuccess)
		expect(display).never.toHaveBeenCalled()
	end)

	it("reports one impression and one acknowledgement without legacy informed-of-ban writes", function()
		local payload = show()
		payload.options.onShown()
		payload.options.onShown()
		payload.options.onDismiss()
		payload.options.onDismiss()
		expect(manager.Analytics.reportBanMessageEventV2).toHaveBeenCalledWith(
			manager.Analytics,
			"Shown",
			8,
			LocalPlayer.UserId,
			"previous-session"
		)
		expect(manager.Analytics.reportBanMessageEventV2).toHaveBeenCalledWith(
			manager.Analytics,
			"Acknowledged",
			8,
			LocalPlayer.UserId,
			"previous-session"
		)
		expect(manager.Analytics.reportBanMessageEventV2).toHaveBeenCalledTimes(2)
		expect(manager.PostRequest).never.toHaveBeenCalled()
	end)

	it("reports an appeal without also reporting acknowledgement on dismissal", function()
		local payload = show()
		payload.options.onAppeal()
		payload.options.onDismiss()
		expect(manager.Analytics.reportBanMessageEvent).toHaveBeenCalledTimes(1)
		expect(manager.Analytics.reportBanMessageEvent).toHaveBeenCalledWith(manager.Analytics, "Denied")
	end)
end)
