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
end)
