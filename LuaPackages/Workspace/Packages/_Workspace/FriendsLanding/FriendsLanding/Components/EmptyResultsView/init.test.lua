local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local EmptyResultsView = require(script.Parent)

describe("EmptyResultsView", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(EmptyResultsView)

		cleanup()
	end)

	it("SHOULD call pageLoadingTimeReportMock on mount", function()
		local pageLoadingTimeReportMock = jest.fn()

		local _, cleanup = createInstanceWithProps(mockLocale)(EmptyResultsView, {
			pageLoadingTimeReport = pageLoadingTimeReportMock,
		})

		expect(pageLoadingTimeReportMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
