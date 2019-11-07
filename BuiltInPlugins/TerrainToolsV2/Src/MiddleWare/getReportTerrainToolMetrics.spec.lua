local getReportTerrainToolMetrics = require(script.Parent.getReportTerrainToolMetrics)

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Rodux = require(Packages.Rodux)

local TestHelpers = Plugin.Src.TestHelpers
local MockStudioService = require(TestHelpers.MockStudioService)
local MockAnalyticsService = require(TestHelpers.MockAnalyticsService)
local testImmutability = require(TestHelpers.testImmutability)

local Actions = Plugin.Src.Actions


local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)

local Actions = Plugin.Src.Actions
local Action = require(Actions.Action)
local ChangeTool = require(Actions.ChangeTool)

local FFlagTerrainToolMetrics = settings():GetFFlag("TerrainToolMetrics")

return function()
	it("should report ChangeTool when ChangeTool is called", function()

		-- no need to run this test if the flag is off
		if not FFlagTerrainToolMetrics then
			return
		end

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