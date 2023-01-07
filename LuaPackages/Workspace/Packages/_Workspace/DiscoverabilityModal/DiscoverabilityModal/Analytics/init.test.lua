local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")

local devDependencies = require(DiscoverabilityModal.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Analytics = require(script.Parent)

describe("Analytics", function()
	it("SHOULD have expected fields", function()
		expect(Analytics).toEqual({
			setupFireAnalyticsEvents = expect.any("function"),
			EntryPoints = expect.any("userdata"),
			Context = expect.any("table"),
			connect = expect.any("function"),
			EventNames = expect.any("userdata"),
			useAnalytics = expect.any("function"),
		})
	end)
end)
