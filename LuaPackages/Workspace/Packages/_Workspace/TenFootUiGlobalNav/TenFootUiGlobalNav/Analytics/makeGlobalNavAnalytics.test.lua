local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local afterEach = JestGlobals.afterEach

local makeGlobalNavAnalytics = require(script.Parent.makeGlobalNavAnalytics)

local mockAnalytics = {
	EventStream = jest.fn(),
}

local mockButtonClick = jest.fn()

describe("makeGlobalNavAnalytics", function()
	afterEach(function()
		mockButtonClick.mockClear()
	end)

	it("should return a service table with a ButtonActivated method", function()
		local result = makeGlobalNavAnalytics(mockAnalytics, mockButtonClick)

		expect(type(result.ButtonActivated)).toBe("function")
	end)

	it("should call the buttonClick handler when ButtonActivated method is invoked", function()
		local globalNavAnatlyics = makeGlobalNavAnalytics(mockAnalytics, mockButtonClick)

		globalNavAnatlyics.ButtonActivated("page", "currentPage")

		expect(mockButtonClick).toHaveBeenCalledWith(
			mockAnalytics.EventStream,
			"TenFootUiGlobalNav",
			"page",
			"currentPage"
		)
	end)
end)
