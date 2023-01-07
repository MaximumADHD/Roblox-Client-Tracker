local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ImpressionEvents = require(script.Parent.ImpressionEvents)
local ButtonClickEvents = require(script.Parent.ButtonClickEvents)

describe("FriendsLandingAnalytics", function()
	local analytics
	local myFriendsLandingAnalytics

	local localUserId = "localUserId"
	local isFriendsLanding = "friendsLanding"
	local isButtonClick = "buttonClick"

	beforeEach(function()
		analytics = {
			EventStream = {
				setRBXEventStream = jest.fn(),
			},
			Diag = {
				reportCounter = jest.fn(),
				reportStats = jest.fn(),
			},
		}

		myFriendsLandingAnalytics = FriendsLandingAnalytics.Class.new(analytics, localUserId)
	end)

	it("SHOULD return a valid object", function()
		expect(myFriendsLandingAnalytics).toEqual(expect.any("table"))
	end)

	describe("WITH FStringFriendsLandingUserLoadedPageCounter set", function()
		local diagCounter = "FriendsLandingUserLoadedPage"
		local oldFStringFriendsLandingUserLoadedPageCounter

		beforeEach(function()
			oldFStringFriendsLandingUserLoadedPageCounter =
				game:SetFastStringForTesting("FriendsLandingUserLoadedPageCounter", diagCounter)
		end)

		afterEach(function()
			game:SetFastStringForTesting(
				"FriendsLandingUserLoadedPageCounter",
				oldFStringFriendsLandingUserLoadedPageCounter
			)
		end)

		describe("WHEN pageLoaded is called", function()
			beforeEach(function()
				myFriendsLandingAnalytics:pageLoaded()
			end)

			it("SHOULD only fire diag once", function()
				expect(analytics.Diag.reportCounter).toHaveBeenCalledTimes(1)
				expect(analytics.Diag.reportCounter).toHaveBeenCalledWith(analytics.Diag, diagCounter, 1)
			end)
		end)
	end)

	describe("GIVEN buttonName as testButton", function()
		local buttonName = "friendFilterApply"

		describe("GIVEN additionalArgs as nil", function()
			beforeEach(function()
				local additionalArgs = nil

				myFriendsLandingAnalytics:buttonClick(ButtonClickEvents.FriendFilterApply, additionalArgs)
			end)

			it("SHOULD report the button click event properly", function()
				local mock = analytics.EventStream.setRBXEventStream

				expect(mock).toHaveBeenCalledTimes(1)
				expect(mock).toHaveBeenCalledWith(analytics.EventStream, isFriendsLanding, isButtonClick, {
					btn = buttonName,
					uid = localUserId,
				})
			end)
		end)

		describe("GIVEN additionalArgs as { foo = bar }", function()
			beforeEach(function()
				local additionalArgs = { foo = "bar" }
				myFriendsLandingAnalytics:buttonClick(ButtonClickEvents.FriendFilterApply, additionalArgs)
			end)

			it("SHOULD report the button click event properly", function()
				local mock = analytics.EventStream.setRBXEventStream

				expect(mock).toHaveBeenCalledTimes(1)
				expect(mock).toHaveBeenCalledWith(analytics.EventStream, isFriendsLanding, isButtonClick, {
					btn = buttonName,
					uid = localUserId,
					foo = "bar",
				})
			end)
		end)

		describe("GIVEN additionalArgs as { contextOverride = 'friendsPage' }", function()
			beforeEach(function()
				local additionalArgs = { contextOverride = "friendsPage" }
				myFriendsLandingAnalytics:buttonClick(ButtonClickEvents.FriendFilterApply, additionalArgs)
			end)

			it("SHOULD report the button click event properly", function()
				local mock = analytics.EventStream.setRBXEventStream

				expect(mock).toHaveBeenCalledTimes(1)
				expect(mock).toHaveBeenCalledWith(analytics.EventStream, "friendsPage", isButtonClick, {
					btn = buttonName,
					uid = localUserId,
				})
			end)
		end)

		describe("GIVEN an incorrect button click event", function()
			it("SHOULD report the button click event properly", function()
				expect(function()
					myFriendsLandingAnalytics:buttonClick("NotAnOption")
				end).toThrow("invalid button name used")
			end)
		end)
	end)

	describe("WHEN _pagePerformanceReport called", function()
		it("SHOULD fire reportStats and setRBXEventStream once with correct arguments", function()
			myFriendsLandingAnalytics._getLoadingTimeInfo = function()
				return {
					startPage = "Home",
					startTime = 0,
				}
			end

			local endTime = os.clock()
			myFriendsLandingAnalytics:_pagePerformanceReport("TestLoadingPageTime", "pageLoadingTime", endTime)

			expect(analytics.Diag.reportStats).toHaveBeenCalledTimes(1)
			expect(analytics.Diag.reportStats).toHaveBeenCalledWith(
				analytics.Diag,
				"TestLoadingPageTime_Home",
				endTime * 1000
			)

			expect(analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			expect(analytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
				analytics.EventStream,
				"friendsLanding",
				"pageLoadingTime",
				{
					startPage = "Home",
					uid = localUserId,
					loadingTime = endTime * 1000,
				}
			)
		end)

		it("SHOULD not fire reportStats and setRBXEventStream if _getLoadingTimeInfo is nil", function()
			myFriendsLandingAnalytics._getLoadingTimeInfo = nil
			myFriendsLandingAnalytics:_pagePerformanceReport("TestLoadingPageTime", "pageLoadingTime")

			expect(analytics.Diag.reportStats).never.toHaveBeenCalled()
			expect(analytics.EventStream.setRBXEventStream).never.toHaveBeenCalled()
		end)

		it("SHOULD not fire reportStats and setRBXEventStream if loadingTimeInfo is nil", function()
			myFriendsLandingAnalytics._getLoadingTimeInfo = function()
				return nil
			end
			myFriendsLandingAnalytics:_pagePerformanceReport("TestLoadingPageTime", "pageLoadingTime")

			expect(analytics.Diag.reportStats).never.toHaveBeenCalled()
			expect(analytics.EventStream.setRBXEventStream).never.toHaveBeenCalled()
		end)

		it("SHOULD not fire reportStats and setRBXEventStream if startPage is not from enums", function()
			myFriendsLandingAnalytics._getLoadingTimeInfo = function()
				return {
					startPage = "Test",
					startTime = 0,
				}
			end
			myFriendsLandingAnalytics:_pagePerformanceReport("TestLoadingPageTime", "pageLoadingTime")

			expect(analytics.Diag.reportStats).never.toHaveBeenCalled()
			expect(analytics.EventStream.setRBXEventStream).never.toHaveBeenCalled()
		end)

		it("SHOULD not fire reportStats and setRBXEventStream if startTime is not a number", function()
			myFriendsLandingAnalytics._getLoadingTimeInfo = function()
				return {
					startPage = "Home",
					startTime = "111",
				}
			end
			myFriendsLandingAnalytics:_pagePerformanceReport("TestLoadingPageTime", "pageLoadingTime")

			expect(analytics.Diag.reportStats).never.toHaveBeenCalled()
			expect(analytics.EventStream.setRBXEventStream).never.toHaveBeenCalled()
		end)
	end)

	describe("WHEN pageMountingTimeReport called", function()
		it("SHOULD call reportStats and setRBXEventStream once", function()
			myFriendsLandingAnalytics._getLoadingTimeInfo = function()
				return {
					startPage = "Home",
					startTime = 0,
				}
			end

			local endTime = os.clock()
			myFriendsLandingAnalytics:pageMountingTimeReport(endTime)
			myFriendsLandingAnalytics:pageMountingTimeReport(endTime)
			myFriendsLandingAnalytics:pageMountingTimeReport(endTime)

			expect(analytics.Diag.reportStats).toHaveBeenCalledTimes(1)
			expect(analytics.Diag.reportStats).toHaveBeenCalledWith(
				analytics.Diag,
				"FriendsLandingMountingPageTime_Home",
				endTime * 1000
			)

			expect(analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			expect(analytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
				analytics.EventStream,
				"friendsLanding",
				"pageMountingTime",
				{
					startPage = "Home",
					uid = localUserId,
					loadingTime = endTime * 1000,
				}
			)
		end)
	end)

	describe("WHEN pageLoadingTimeReport called", function()
		it("SHOULD call reportStats and setRBXEventStream once", function()
			myFriendsLandingAnalytics._getLoadingTimeInfo = function()
				return {
					startPage = "Home",
					startTime = 0,
				}
			end

			local endTime = os.clock()
			myFriendsLandingAnalytics:pageLoadingTimeReport(endTime)
			myFriendsLandingAnalytics:pageLoadingTimeReport(endTime)
			myFriendsLandingAnalytics:pageLoadingTimeReport(endTime)

			expect(analytics.Diag.reportStats).toHaveBeenCalledTimes(1)
			expect(analytics.Diag.reportStats).toHaveBeenCalledWith(
				analytics.Diag,
				"FriendsLandingLoadingPageTime_Home",
				endTime * 1000
			)

			expect(analytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(1)
			expect(analytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
				analytics.EventStream,
				"friendsLanding",
				"pageLoadingTime",
				{
					startPage = "Home",
					uid = localUserId,
					loadingTime = endTime * 1000,
				}
			)
		end)
	end)

	describe("WHEN reportAddFriendsEntrypoint is called", function()
		it("SHOULD correctly send a diag event", function()
			myFriendsLandingAnalytics:reportAddFriendsEntrypoint("Home")
			expect(analytics.Diag.reportCounter).toHaveBeenCalledWith(analytics.Diag, "AddFriendsHomeEntry", 1)
		end)

		it("SHOULD fire the correct event stream event for Home", function()
			myFriendsLandingAnalytics:reportAddFriendsEntrypoint("Home")
			expect(analytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
				analytics.EventStream,
				"addUniversalFriends",
				"buttonClick",
				{
					btn = "LegacyAddFriendsButton",
					absolutePosition = 1,
				}
			)
		end)

		it("SHOULD fire the correct event stream event for Other pages", function()
			myFriendsLandingAnalytics:reportAddFriendsEntrypoint("SearchFriends")

			expect(analytics.EventStream.setRBXEventStream).never.toHaveBeenCalled()
		end)

		it("SHOULD fail on an unrecognized screen", function()
			expect(function()
				myFriendsLandingAnalytics:reportAddFriendsEntrypoint("NotAnOption")
			end).toThrow("invalid screen")
		end)
	end)

	describe("impressionEvent", function()
		it("SHOULD log a valid contactWarningSeen ", function()
			myFriendsLandingAnalytics:impressionEvent(ImpressionEvents.ContactWarningSeen)

			local eventStream = analytics.EventStream.setRBXEventStream
			local diag = analytics.Diag.reportCounter

			expect(eventStream).toHaveBeenCalledTimes(1)
			expect(eventStream).toHaveBeenCalledWith(
				analytics.EventStream,
				"addUniversalFriends",
				"contactWarningSeen",
				nil
			)
			expect(diag).toHaveBeenCalledTimes(1)
			expect(diag).toHaveBeenCalledWith(analytics.Diag, "contactWarningSeen", 1)
		end)

		it("SHOULD log a valid contactImporterBannerSeen", function()
			myFriendsLandingAnalytics:impressionEvent(ImpressionEvents.ContactImporterBannerSeen)

			local eventStream = analytics.EventStream.setRBXEventStream
			local diag = analytics.Diag.reportCounter

			expect(eventStream).toHaveBeenCalledTimes(1)
			expect(eventStream).toHaveBeenCalledWith(
				analytics.EventStream,
				"addUniversalFriends",
				"contactImporterBannerSeen",
				nil
			)
			expect(diag).toHaveBeenCalledTimes(1)
			expect(diag).toHaveBeenCalledWith(analytics.Diag, "contactImporterBannerSeen", 1)
		end)

		it("SHOULD error if not given a valid value a valid event ", function()
			expect(function()
				myFriendsLandingAnalytics:impressionEvent(ButtonClickEvents.FriendFilterApply)
			end).toThrow("invalid impression name used")
		end)
	end)
end)
