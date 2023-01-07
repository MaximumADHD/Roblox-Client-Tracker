local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local Mock = devDependencies.Mock
local findImageSet = devDependencies.findImageSet

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local FriendsLandingHeaderBar = require(script.Parent)

-- FIXME: APPFDN-1925
local FriendsLandingHeaderBarStory = require((script :: any).Parent["withScreenAndBackButton.story"]) :: any

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local MockNavigation = Mock.MagicMock.new()
		MockNavigation.getChildNavigation = Mock.MagicMock.new()

		MockNavigation.state = {
			index = 1,
			routes = {
				{
					key = 1,
				},
			},
		}

		MockNavigation.router.getScreenOptions = function()
			return {
				headerText = {
					raw = "1",
				},
				renderLeft = function() end,
				renderCenter = function() end,
				renderRight = function() end,
			}
		end

		local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingHeaderBar, {
			props = {
				navigation = MockNavigation,
			},
		})

		cleanup()
	end)
end)

describe("WHEN pressing back button for root screen (shouldExitNavigation = true)", function()
	it("SHOULD call exitFriendsLanding", function()
		local exitFriendsLandingMock = jest.fn()
		local headerBar, cleanup = createInstanceWithProps(mockLocale)(FriendsLandingHeaderBarStory, {
			exitFriendsLanding = exitFriendsLandingMock,
		})

		local leftButton = RhodiumHelpers.findFirstInstance(headerBar, findImageSet("icons/navigation/pushBack"))
		expect(leftButton).toEqual(expect.any("Instance"))

		RhodiumHelpers.clickInstance(leftButton)
		expect(exitFriendsLandingMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
