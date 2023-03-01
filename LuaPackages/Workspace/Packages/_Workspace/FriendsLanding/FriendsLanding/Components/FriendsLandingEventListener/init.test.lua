local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local getFFlagSocialAddFriendshipRequestEvent = dependencies.getFFlagSocialAddFriendshipRequestEvent

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local FriendsLandingEventListener = require(script.Parent)

type Events = {
	onDidFocus: () -> (),
	onDidBlur: () -> (),
}

describe("FriendsLandingEventListener", function()
	local mockRefreshPage, mockSetFilterKeys, mockAnalytics

	beforeEach(function()
		mockRefreshPage = jest.fn().mockName("refreshPage")
		mockSetFilterKeys = jest.fn().mockName("filterKeys")
		mockAnalytics = {
			pageLoaded = jest.fn(),
			pageLoadedWithArgs = jest.fn(),
		}
	end)

	describe("lifecycle events", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEventListener, {})

			cleanup()
		end)

		it("SHOULD call refreshPage when mounted", function()
			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEventListener, {
				context = {
					refreshPage = mockRefreshPage,
					setFilterKeys = mockSetFilterKeys,
				},
				analytics = mockAnalytics,
			})

			expect(mockRefreshPage).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoaded).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoaded).toHaveBeenCalledWith(mockAnalytics)
			expect(mockAnalytics.pageLoadedWithArgs).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoadedWithArgs).toHaveBeenCalledWith(mockAnalytics, "friendsLanding", {})
			expect(mockSetFilterKeys).toHaveBeenCalledTimes(1)
			expect(mockSetFilterKeys).toHaveBeenCalledWith(filterStates.All)
			cleanup()
		end)

		it("SHOULD call refreshPage ONCE when mounted and onDidBlur called", function()
			local fireEvents = {} :: Events
			local navigationEvents = function(props)
				fireEvents.onDidFocus = props.onDidFocus
				fireEvents.onDidBlur = props.onDidBlur
				return
			end

			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEventListener, {
				props = {
					navigationEvents = navigationEvents,
				},
				context = {
					refreshPage = mockRefreshPage,
					setFilterKeys = mockSetFilterKeys,
				},
				analytics = mockAnalytics,
			})

			fireEvents.onDidFocus()

			expect(mockRefreshPage).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoaded).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoaded).toHaveBeenCalledWith(mockAnalytics)
			expect(mockAnalytics.pageLoadedWithArgs).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoadedWithArgs).toHaveBeenCalledWith(mockAnalytics, "friendsLanding", {})
			expect(mockSetFilterKeys).toHaveBeenCalledTimes(1)
			expect(mockSetFilterKeys).toHaveBeenCalledWith(filterStates.All)
			cleanup()
		end)
	end)

	if not getFFlagSocialAddFriendshipRequestEvent() then
		it("SHOULD subscribe on onDidFocus and disconnect on onDidBlur", function()
			local fireEvents = {} :: Events
			local navigationEvents = function(props)
				fireEvents.onDidFocus = props.onDidFocus
				fireEvents.onDidBlur = props.onDidBlur
				return
			end

			local disconnectFriendsRequest = jest.fn()
			local friendsRequestEventListener = jest.fn().mockReturnValue({
				disconnect = disconnectFriendsRequest,
			})

			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEventListener, {
				props = {
					navigationEvents = navigationEvents,
					debug_skipDidMount = true,
				},
				context = {
					friendsRequestEventListener = if not getFFlagSocialAddFriendshipRequestEvent()
						then friendsRequestEventListener
						else nil,
				},
			})

			fireEvents.onDidFocus()
			expect(friendsRequestEventListener).toHaveBeenCalledTimes(1)
			expect(friendsRequestEventListener).toHaveBeenCalledWith(expect.any("function"))

			disconnectFriendsRequest.mockReset()
			fireEvents.onDidBlur()
			expect(disconnectFriendsRequest).toHaveBeenCalledTimes(1)

			cleanup()
		end)

		it("SHOULD connect onDidMount and disconnect on willUnmount", function()
			local disconnectFriendsRequest = jest.fn()
			local friendsRequestEventListenerSpy = jest.fn().mockReturnValue({
				disconnect = disconnectFriendsRequest,
			})

			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEventListener, {
				props = {},
				context = {
					friendsRequestEventListener = friendsRequestEventListenerSpy,
				},
			})

			expect(friendsRequestEventListenerSpy).toHaveBeenCalledTimes(1)
			expect(friendsRequestEventListenerSpy.mock.calls[1]).toEqual({
				expect.any("function"),
			})

			cleanup()
			expect(disconnectFriendsRequest).toHaveBeenCalledTimes(1)
		end)
	end

	describe("navigation events", function()
		it("SHOULD refreshPage data onDidFocus", function()
			local fireEvents = {} :: Events
			local navigationEvents = function(props)
				fireEvents.onDidFocus = props.onDidFocus
				fireEvents.onDidBlur = props.onDidBlur
				return
			end

			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEventListener, {
				props = {
					navigationEvents = navigationEvents,
					debug_skipDidMount = true,
				},
				context = {
					refreshPage = mockRefreshPage,
					setFilterKeys = mockSetFilterKeys,
				},
				analytics = mockAnalytics,
			})

			mockRefreshPage.mockReset()
			mockSetFilterKeys.mockReset()
			mockAnalytics.pageLoaded.mockReset()
			mockAnalytics.pageLoadedWithArgs.mockReset()

			fireEvents.onDidFocus()

			expect(mockRefreshPage).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoaded).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoaded).toHaveBeenCalledWith(mockAnalytics)
			expect(mockAnalytics.pageLoadedWithArgs).toHaveBeenCalledTimes(1)
			expect(mockAnalytics.pageLoadedWithArgs).toHaveBeenCalledWith(mockAnalytics, "friendsLanding", {})
			expect(mockSetFilterKeys).toHaveBeenCalledTimes(1)
			expect(mockSetFilterKeys).toHaveBeenCalledWith(filterStates.All)

			cleanup()
		end)

		it("SHOULD reset filterFriends data onDidBlur", function()
			local fireEvents = {} :: Events
			local navigationEvents = function(props)
				fireEvents.onDidFocus = props.onDidFocus
				fireEvents.onDidBlur = props.onDidBlur
				return
			end

			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEventListener, {
				props = {
					navigationEvents = navigationEvents,
				},
				context = {
					refreshPage = mockRefreshPage,
					setFilterKeys = mockSetFilterKeys,
				},
				analytics = mockAnalytics,
			})

			mockRefreshPage.mockReset()
			mockSetFilterKeys.mockReset()
			mockAnalytics.pageLoaded.mockReset()
			mockAnalytics.pageLoadedWithArgs.mockReset()
			fireEvents.onDidBlur()

			expect(mockSetFilterKeys).toHaveBeenCalledTimes(1)
			expect(mockSetFilterKeys).toHaveBeenCalledWith(filterStates.All)

			expect(mockRefreshPage).never.toHaveBeenCalled()
			expect(mockAnalytics.pageLoaded).never.toHaveBeenCalled()
			expect(mockAnalytics.pageLoadedWithArgs).never.toHaveBeenCalled()
			cleanup()
		end)
	end)
end)
