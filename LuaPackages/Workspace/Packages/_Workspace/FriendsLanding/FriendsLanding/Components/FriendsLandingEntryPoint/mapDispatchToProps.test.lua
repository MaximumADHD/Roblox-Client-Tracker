local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
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
	local getFriendsByIdMockResponse
	local getFriendRequestsCountMockResponse
	local onResolve
	local onError
	local returnValue

	beforeEach(function()
		getFriendsByIdMockResponse = jest.fn().mockName("getFriendsByIdMockResponse")
		getFriendRequestsCountMockResponse = jest.fn().mockName("getFriendRequestsCountMockResponse")
		onResolve = jest.fn().mockName("onResolve")
		onError = jest.fn().mockName("onError")

		FriendsNetworking.GetFriendsFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
		FriendsNetworking.GetFriendsFromUserId.Mock.reply(function()
			getFriendsByIdMockResponse()
			return {
				responseBody = { data = {} },
			}
		end)

		FriendsNetworking.GetFriendRequestsCount.Mock.reply(function()
			getFriendRequestsCountMockResponse()
			return {
				responseBody = { data = {} },
			}
		end)

		local store = Rodux.Store.new(function(state)
			return state
		end, {
			FriendsLanding = {
				NetworkStatus = {},
			},
		}, {
			Rodux.thunkMiddleware,
		})

		returnValue = mapDispatchToProps(function(...): any
			return store:dispatch(...)
		end)
	end)

	it("SHOULD return a table", function()
		expect(returnValue).toEqual(expect.any("table"))
	end)

	it("SHOULD have the expected fields", function()
		expect(returnValue.refreshPageData).toEqual(expect.any("function"))
	end)

	it("SHOULD execute and call the onResolve when refreshPageData is run successfully", function()
		local promise = returnValue.refreshPageData
		promise({
			localUserId = "a",
			onResolve = function()
				onResolve()
			end,
			onError = function()
				onError()
			end,
		})

		expect(getFriendsByIdMockResponse).toHaveBeenCalledTimes(1)
		expect(getFriendRequestsCountMockResponse).toHaveBeenCalledTimes(1)
		expect(onResolve).toHaveBeenCalledTimes(1)

		expect(onError).never.toHaveBeenCalled()
	end)

	it("SHOULD execute and call the onError function when run is not successful", function()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
		FriendsNetworking.GetFriendRequestsCount.Mock.replyWithError(function()
			getFriendRequestsCountMockResponse()
			return "Something went wrong"
		end)
		local promise = returnValue.refreshPageData
		promise({
			localUserId = "a",
			onResolve = function()
				onResolve()
			end,
			onError = function()
				onError()
			end,
		})
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()

		expect(getFriendsByIdMockResponse).toHaveBeenCalledTimes(1)
		expect(getFriendRequestsCountMockResponse).toHaveBeenCalledTimes(1)
		expect(onError).toHaveBeenCalledTimes(1)

		expect(onResolve).never.toHaveBeenCalled()
	end)

	afterEach(function()
		FriendsNetworking.GetFriendsFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
	end)
end)
