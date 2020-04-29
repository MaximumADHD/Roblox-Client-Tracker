local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Rodux = require(Packages.Rodux)

local TestHelpers = Plugin.Src.TestHelpers
local MockAnalyticsService = require(TestHelpers.MockAnalyticsService)
local MockStudioService = require(TestHelpers.MockStudioService)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)

local Actions = Plugin.Src.Actions
local Action = require(Actions.Action)
local ChangeTool = require(Actions.ChangeTool)

local getReportTerrainToolMetrics = require(script.Parent.getReportTerrainToolMetrics)

return function()
	it("should report ChangeTool when ChangeTool is called", function()
		local mockAnalyticsService = MockAnalyticsService.new()
		local mockStudioService = MockStudioService.new()

		local store = Rodux.Store.new(MainReducer, nil, {
			getReportTerrainToolMetrics({
				AnalyticsService = mockAnalyticsService,
				StudioService = mockStudioService
			})
		})
		expect(mockAnalyticsService.eventCount).to.equal(0)
		store:dispatch(ChangeTool("test"))
		expect(mockAnalyticsService.eventCount).to.equal(1)
	end)

	it("should do nothing if unmonitored actions are called", function()
		local mockAnalyticsService = MockAnalyticsService.new()
		local mockStudioService = MockStudioService.new()

		local store = Rodux.Store.new(MainReducer, nil, {
			getReportTerrainToolMetrics({
				AnalyticsService = mockAnalyticsService,
				StudioService = mockStudioService
			})
		})

		local fakeAction = Action("fakeAction", function()
			return {}
		end)

		expect(mockAnalyticsService.eventCount).to.equal(0)
		store:dispatch(fakeAction())
		expect(mockAnalyticsService.eventCount).to.equal(0)
	end)
end
