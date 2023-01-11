local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Analytics = require(script.Parent)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("Analytics", function()
	it("SHOULD have expected fields", function()
		expect(Analytics).toEqual({
			Context = expect.any("table"),
			EventNames = expect.any("userdata"),
			setupFireEvent = expect.any("function"),
			useAnalytics = expect.any("function"),
		})
	end)
end)
