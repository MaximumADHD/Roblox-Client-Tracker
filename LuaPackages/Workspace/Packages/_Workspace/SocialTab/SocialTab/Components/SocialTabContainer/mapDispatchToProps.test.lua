local SocialTab = script:FindFirstAncestor("SocialTab")
local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)

local dependencies = require(SocialTab.dependencies)
local Rodux = dependencies.Rodux
local GetPresencesFromUserIds = dependencies.NetworkingPresence.GetPresencesFromUserIds
local GetFriendRequestsCount = dependencies.NetworkingFriends.GetFriendRequestsCount
local GetUserV2FromUserId = dependencies.NetworkingUsers.GetUserV2FromUserId

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

it("SHOULD return a function", function()
	expect(mapDispatchToProps).toEqual(expect.any("function"))
end)

describe("WHEN called", function()
	local GetUserV2FromUserIdMockResponse
	local GetPresencesFromUserIdsMockResponse

	local store = Rodux.Store.new(function(state)
		return state
	end, {
		SocialTab = { Friends = { byUserId = { localUserId = {} } }, NetworkStatus = {} },
		LocalUserId = 123,
	}, {
		Rodux.thunkMiddleware,
	})

	local returnValue = mapDispatchToProps(function(...)
		return store:dispatch(...)
	end)

	beforeAll(function()
		GetFriendRequestsCount.Mock.clear()

		GetUnreadConversationCount.Mock.reply({
			responseBody = {
				count = 0,
			},
		})

		GetFriendRequestsCount.Mock.reply({
			responseBody = {
				count = 0,
			},
		})

		GetPresencesFromUserIds.Mock.reply({
			responseBody = {
				userPresences = {},
			},
		})
	end)

	beforeEach(function()
		GetUserV2FromUserIdMockResponse = jest.fn()
		GetPresencesFromUserIdsMockResponse = jest.fn()

		GetUserV2FromUserId.Mock.clear()
		GetPresencesFromUserIds.Mock.clear()

		GetUserV2FromUserId.Mock.reply(function()
			GetUserV2FromUserIdMockResponse()
			return {}
		end)
		GetPresencesFromUserIds.Mock.reply(function()
			GetPresencesFromUserIdsMockResponse()
			return {
				responseBody = {
					userPresences = {},
				},
			}
		end)
	end)

	it("SHOULD return a table", function()
		expect(returnValue).toEqual({
			refreshPageData = expect.any("function"),
			fetchFriendsRequestsCount = expect.any("function"),
		})
	end)

	it("SHOULD execute and call the success function when refreshPageData is run", function()
		local promise = returnValue.refreshPageData()
		local successMock = jest.fn()
		local failureMock = jest.fn()

		promise
			:andThen(function()
				successMock()
			end)
			:catch(function()
				failureMock()
			end)

		expect(GetUserV2FromUserIdMockResponse).toHaveBeenCalledTimes(1)
		expect(successMock).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD execute and call getPresenceRequestMockResponse function when refreshPageData is run", function()
		local promise = returnValue.refreshPageData()
		local successMock = jest.fn()
		local failureMock = jest.fn()

		promise
			:andThen(function()
				successMock()
			end)
			:catch(function()
				failureMock()
			end)

		expect(GetPresencesFromUserIdsMockResponse).toHaveBeenCalledTimes(1)
		expect(successMock).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD not execute and call getPresenceRequestMockResponse function when there is no friends list", function()
		local store = Rodux.Store.new(function(state)
			return state
		end, {
			SocialTab = { Friends = { byUserId = {} }, NetworkStatus = {} },
			LocalUserId = 123,
		}, {
			Rodux.thunkMiddleware,
		})

		local returnValue = mapDispatchToProps(function(...)
			return store:dispatch(...)
		end)
		local promise = returnValue.refreshPageData()
		local successMock = jest.fn()
		local failureMock = jest.fn()

		promise
			:andThen(function()
				successMock()
			end)
			:catch(function()
				failureMock()
			end)

		expect(GetPresencesFromUserIdsMockResponse).never.toHaveBeenCalled()
		expect(successMock).toHaveBeenCalledTimes(1)
	end)

	afterEach(function()
		GetUserV2FromUserId.Mock.clear()
	end)

	afterAll(function()
		GetUnreadConversationCount.Mock.clear()
		GetPresencesFromUserIds.Mock.clear()
		GetFriendRequestsCount.Mock.clear()
	end)
end)
