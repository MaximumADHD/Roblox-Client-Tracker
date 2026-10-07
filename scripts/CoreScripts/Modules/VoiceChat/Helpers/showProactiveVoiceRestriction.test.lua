local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local displaySignal =
	require(CorePackages.Workspace.Packages.UniversalFeatureRestrictions.featureRestrictionDisplayDirectSignal)
local fetchSignal =
	require(CorePackages.Workspace.Packages.UniversalFeatureRestrictions.featureRestrictionDisplaySignal)

local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local LocalPlayer = Players.LocalPlayer :: Player

type MockManager = {
	service: {}?,
	previousSessionId: string,
	GetNudgeAnalyticsData: any,
	PostRequest: any,
	Analytics: any,
}

local format = jest.fn(function(_, key)
	return `translated:{key}`
end)
local localization = {
	Format = format,
}

jest.mock(CorePackages.Workspace.Packages.InExperienceLocales, function()
	return {
		Localization = {
			new = function()
				return localization
			end,
		},
	}
end)

local showProactiveVoiceRestriction = require(script.Parent.showProactiveVoiceRestriction)

local manager: MockManager
local display
local fetch
local displayConnection
local fetchConnection
local nudgeDataRequested
local settings = { isBanned = true, banReason = 7, bannedUntil = { Seconds = 2000000000 } }

beforeEach(function()
	nudgeDataRequested = jest.fn()
	manager = {
		service = {},
		previousSessionId = "previous-session",
		GetNudgeAnalyticsData = function()
			nudgeDataRequested()
			return 321, "nudge-session"
		end,
		PostRequest = jest.fn(),
		Analytics = {
			reportBanMessageEvent = jest.fn(),
			reportBanMessageEventV2 = jest.fn(),
			reportClosedNudge = jest.fn(),
			reportAcknowledgedNudge = jest.fn(),
			reportDeniedNudge = jest.fn(),
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

local function show(value, current: boolean?, origin: "gameJoin" | "realtime" | "mic"?)
	showProactiveVoiceRestriction({
		manager = manager,
		settings = value,
		origin = origin or "gameJoin",
		isCurrent = function()
			return current ~= false
		end,
	})
	return display.mock.calls[1][1]
end

describe("showProactiveVoiceRestriction", function()
	it("uses direct UFR without a reactive fetch or requiring an initialized voice session", function()
		manager.service = nil
		local payload = show(settings)
		expect(payload.abuseVector).toBe("voice")
		expect(payload.moderationDetail.acknowledgeable).toBe(false)
		expect(payload.options.onAcknowledgementSuccess).toBeNil()
		expect(fetch).never.toHaveBeenCalled()
		expect(nudgeDataRequested).never.toHaveBeenCalled()
	end)

	it("formats restriction content with in-experience localization before dispatch", function()
		local payload = show(settings)
		expect(payload.moderationDetail.title).toBe(
			"translated:Feature.UniversalFeatureRestrictions.Generic.DialogTitleV2.Suspended.Minutes"
		)
		expect(payload.moderationDetail.body).toBe(
			"translated:Feature.UniversalFeatureRestrictions.Generic.DialogBody.Suspended"
		)
	end)

	it("reports one impression and one acknowledgement using captured ban context", function()
		local payload = show(settings)
		manager.previousSessionId = "changed-session"
		payload.options.onShown()
		payload.options.onShown()
		payload.options.onDismiss()
		payload.options.onDismiss()
		expect(manager.Analytics.reportBanMessageEventV2).toHaveBeenCalledWith(
			manager.Analytics,
			"Shown",
			7,
			LocalPlayer.UserId,
			"previous-session"
		)
		expect(manager.Analytics.reportBanMessageEventV2).toHaveBeenCalledWith(
			manager.Analytics,
			"Understood",
			7,
			LocalPlayer.UserId,
			"previous-session"
		)
		expect(manager.Analytics.reportBanMessageEventV2).toHaveBeenCalledTimes(2)
		expect(manager.PostRequest).toHaveBeenCalledTimes(1)
		local request = manager.PostRequest.mock.calls[1]
		expect(request[2]).toContain("v1/moderation/informed-of-ban")
		expect(request[3]).toBe("POST")
		expect(request[4]).toBe('{"informedOfBan":true}')
	end)

	it("reports a ban appeal without also reporting Understood on dismissal", function()
		local payload = show(settings)
		payload.options.onAppeal()
		payload.options.onDismiss()
		expect(manager.Analytics.reportBanMessageEvent).toHaveBeenCalledTimes(1)
		expect(manager.Analytics.reportBanMessageEvent).toHaveBeenCalledWith(manager.Analytics, "Denied")
		expect(manager.PostRequest).toHaveBeenCalledTimes(1)
	end)

	it("does not acknowledge a superseded ban through the legacy endpoint", function()
		local payload = show(settings, false)
		payload.options.onDismiss()
		expect(manager.PostRequest).never.toHaveBeenCalled()
	end)

	it("does not acknowledge a temporary ban again when resurfaced from the mic", function()
		local payload = show(settings, true, "mic")
		payload.options.onDismiss()
		expect(manager.PostRequest).never.toHaveBeenCalled()
	end)

	it("acknowledges a temporary non-nudge ban without offering an appeal", function()
		local payload = show({ isBanned = true, banReason = 6, bannedUntil = { Seconds = 2000000000 } })
		expect(payload.options.onAppeal).toBeNil()
		payload.options.onDismiss()
		expect(manager.Analytics.reportBanMessageEventV2).toHaveBeenCalledWith(
			manager.Analytics,
			"Acknowledged",
			6,
			LocalPlayer.UserId,
			"previous-session"
		)
		expect(manager.PostRequest).toHaveBeenCalledTimes(1)
		expect(manager.PostRequest.mock.calls[1][2]).toContain("v1/moderation/informed-of-ban")
	end)

	it("keeps permanent-ban acknowledgement free of informed-of-ban writes", function()
		local payload = show({ isBanned = true, banReason = 1 })
		payload.options.onShown()
		payload.options.onDismiss()
		expect(manager.Analytics.reportBanMessageEvent).toHaveBeenCalledWith(manager.Analytics, "Acknowledged")
		expect(manager.PostRequest).never.toHaveBeenCalled()
	end)

	it("preserves nudge acknowledgement and close analytics without writing ban acknowledgement", function()
		local payload = show(nil)
		payload.options.onDismiss()
		expect(manager.Analytics.reportClosedNudge).toHaveBeenCalledWith(manager.Analytics, 321, "nudge-session")
		expect(manager.Analytics.reportAcknowledgedNudge).toHaveBeenCalledWith(manager.Analytics, 321, "nudge-session")
		expect(manager.Analytics.reportDeniedNudge).never.toHaveBeenCalled()
		expect(manager.PostRequest).never.toHaveBeenCalled()
	end)

	it("preserves nudge appeal and close analytics without reporting acknowledgement", function()
		local payload = show(nil)
		payload.options.onAppeal()
		payload.options.onDismiss()
		expect(manager.Analytics.reportDeniedNudge).toHaveBeenCalledWith(manager.Analytics, 321, "nudge-session")
		expect(manager.Analytics.reportClosedNudge).toHaveBeenCalledWith(manager.Analytics, 321, "nudge-session")
		expect(manager.Analytics.reportAcknowledgedNudge).never.toHaveBeenCalled()
		expect(manager.PostRequest).never.toHaveBeenCalled()
	end)
end)
