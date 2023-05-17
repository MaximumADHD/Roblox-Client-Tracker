local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local RhodiumHelpers = devDependencies.RhodiumHelpers

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local getFFlagFriendsLandingNewEmptyPage = require(FriendsLanding.Flags.getFFlagFriendsLandingNewEmptyPage)

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

	it("SHOULD call openAddFriendsPage on button click when FFlagFriendsLandingNewEmptyPage is true", function()
		local openAddFriendsPageSpy = jest.fn()

		local parent, cleanup = createInstanceWithProps(mockLocale)(EmptyResultsView, {
			openAddFriendsPage = function()
				return openAddFriendsPageSpy()
			end,
		})

		local AddFriendsButton = RhodiumHelpers.findFirstInstance(parent, {
			Name = "AddFriendsButton",
		})

		if getFFlagFriendsLandingNewEmptyPage() then
			expect(AddFriendsButton).toEqual(expect.any("Instance"))

			RhodiumHelpers.clickInstance(AddFriendsButton)
			expect(openAddFriendsPageSpy).toHaveBeenCalledTimes(1)
		else
			expect(AddFriendsButton).toBeNil()
		end

		cleanup()
	end)
end)
