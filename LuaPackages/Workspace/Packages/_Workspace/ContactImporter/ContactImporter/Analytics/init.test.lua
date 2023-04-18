local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local Analytics = require(script.Parent)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("Analytics", function()
	it("SHOULD have expected fields", function()
		jestExpect(Analytics).toEqual({
			AnalyticsService = jestExpect.any("table"),
			setupFireAnalyticsEvents = jestExpect.any("function"),
			Context = jestExpect.any("table"),
			connect = jestExpect.any("function"),
			EventNames = jestExpect.any("userdata"),
			EntryPoints = jestExpect.any("userdata"),
			FieldNames = jestExpect.any("table"),
			useAnalytics = jestExpect.any("function"),
		})
	end)
end)
