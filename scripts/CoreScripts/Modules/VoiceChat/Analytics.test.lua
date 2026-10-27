local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach

local Analytics = require(script.Parent.Analytics)

type AnalyticsServiceMock = {
	SetRBXEvent: any,
	SetRBXEvent_mock: any,
	SetRBXEventStream: any,
	SetRBXEventStream_mock: any,
	SendEventDeferred: any,
	SendEventDeferred_mock: any,
	ReportCounter: any,
	ReportCounter_mock: any,
	ReportStats: any,
	ReportStats_mock: any,
	ReportInfluxSeries: any,
	ReportInfluxSeries_mock: any,
}

describe("Analytics", function()
	local function mockService(): AnalyticsServiceMock
		local methods = {
			"SetRBXEvent",
			"SetRBXEventStream",
			"SendEventDeferred",
			"ReportCounter",
			"ReportStats",
			"ReportInfluxSeries",
		}
		local wrapper = {}

		for _, method in methods do
			local mock, mockFn = jest.fn()
			wrapper[method] = mockFn
			wrapper[method .. "_mock"] = mock
		end
		return wrapper
	end
	local analytics = Analytics.new(mockService())
	beforeEach(function()
		analytics = Analytics.new(mockService())
		game:SetFastFlagForTesting("LuaVoiceChatAnalyticsUsePointsV2", true)
		game:SetFastFlagForTesting("LuaVoiceChatAnalyticsUseCounterV2", true)
		game:SetFastFlagForTesting("LuaVoiceChatAnalyticsUseEventsV2", true)
	end)

	it("reportVoiceChatJoinResult should behave as expected", function()
		analytics:reportVoiceChatJoinResult(true, "test")
		expect((analytics._impl :: AnalyticsServiceMock).SendEventDeferred_mock).toHaveBeenCalled()
		expect((analytics._impl :: AnalyticsServiceMock).ReportInfluxSeries_mock).toHaveBeenCalled()
		expect((analytics._impl :: AnalyticsServiceMock).ReportCounter_mock).toHaveBeenCalled()
	end)

	it("reportBanMessageEventV2 should behave as expected", function()
		analytics:reportBanMessageEventV2("test", 3, 4, "test")
		expect((analytics._impl :: AnalyticsServiceMock).SendEventDeferred_mock).toHaveBeenCalled()
		expect((analytics._impl :: AnalyticsServiceMock).ReportInfluxSeries_mock).toHaveBeenCalled()
		expect((analytics._impl :: AnalyticsServiceMock).ReportCounter_mock).toHaveBeenCalled()
	end)

	describe("voice rewarm counters", function()
		local logCounter

		beforeEach(function()
			logCounter = jest.fn()
			analytics._telemetryService = { LogCounter = logCounter }
		end)

		it("SHOULD log VoiceRewarmShown with the rearmed label", function()
			analytics:reportVoiceRewarmShown(true)

			expect(logCounter).toHaveBeenCalledTimes(1)
			local _, config, params = table.unpack(logCounter.mock.calls[1])
			expect(config.eventName).toBe("VoiceRewarmShown")
			expect(config.backends).toEqual({ "RobloxTelemetryCounter" })
			expect(params.customFields).toEqual({ rearmed = "true" })
		end)

		it("SHOULD log VoiceRewarmClicked with the rearmed and consequence labels", function()
			analytics:reportVoiceRewarmClicked(false, "FirstJoinSession")

			local _, config, params = table.unpack(logCounter.mock.calls[1])
			expect(config.eventName).toBe("VoiceRewarmClicked")
			expect(params.customFields).toEqual({ rearmed = "false", consequence = "FirstJoinSession" })
		end)

		it("SHOULD label a click with no consequence as none", function()
			analytics:reportVoiceRewarmClicked(true, nil)

			local _, _, params = table.unpack(logCounter.mock.calls[1])
			expect(params.customFields).toEqual({ rearmed = "true", consequence = "none" })
		end)
	end)
end)
