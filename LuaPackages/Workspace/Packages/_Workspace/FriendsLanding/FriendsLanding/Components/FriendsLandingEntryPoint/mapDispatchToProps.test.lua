local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus

local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local FriendsNetworking = dependencies.FriendsNetworking

it("SHOULD return a function", function()
	expect(mapDispatchToProps).toEqual(expect.any("function"))
end)

describe("WHEN called", function()
	local getFriendsByIdMockResponse
	local getFriendRequestsCountMockResponse
	local getInactiveFriendsMockResponse
	local onResolve
	local onError
	local returnValue

	beforeEach(function()
		getFriendsByIdMockResponse = jest.fn().mockName("getFriendsByIdMockResponse")
		getFriendRequestsCountMockResponse = jest.fn().mockName("getFriendRequestsCountMockResponse")
		getInactiveFriendsMockResponse = jest.fn().mockName("getInactiveFriendsMockResponse")
		onResolve = jest.fn().mockName("onResolve")
		onError = jest.fn().mockName("onError")

		FriendsNetworking.GetFriendsFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
		FriendsNetworking.GetInactiveFriends.Mock.clear()
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

		FriendsNetworking.GetInactiveFriends.Mock.reply(function()
			getInactiveFriendsMockResponse()
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
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			promise({
				localUserId = "a",
				inactiveFriendsNetworkRequestStatus = NetworkStatus.NotStarted,
				onResolve = function()
					onResolve()
				end,
				onError = function()
					onError()
				end,
			})
		else
			promise({
				localUserId = "a",
				onResolve = function()
					onResolve()
				end,
				onError = function()
					onError()
				end,
			})
		end

		expect(getFriendsByIdMockResponse).toHaveBeenCalledTimes(1)
		expect(getFriendRequestsCountMockResponse).toHaveBeenCalledTimes(1)
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			expect(getInactiveFriendsMockResponse).toHaveBeenCalledTimes(1)
		else
			expect(getInactiveFriendsMockResponse).never.toHaveBeenCalled()
		end
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
		promise(if getFFlagFriendsLandingInactiveFriendsEnabled()
			then {
				localUserId = "a",
				inactiveFriendsNetworkRequestStatus = NetworkStatus.NotStarted,
				onResolve = function()
					onResolve()
				end,
				onError = function()
					onError()
				end,
			}
			else {
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
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			expect(getInactiveFriendsMockResponse).toHaveBeenCalledTimes(1)
		else
			expect(getInactiveFriendsMockResponse).never.toHaveBeenCalled()
		end
		expect(onError).toHaveBeenCalledTimes(1)

		expect(onResolve).never.toHaveBeenCalled()
	end)

	if getFFlagFriendsLandingInactiveFriendsEnabled() then
		it("SHOULD NOT call GetInactiveFriends when inactiveFriendsNetworkRequestStatus is Done", function()
			local promise = returnValue.refreshPageData
			promise({
				localUserId = "a",
				inactiveFriendsNetworkRequestStatus = NetworkStatus.Done,
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

			expect(getInactiveFriendsMockResponse).never.toHaveBeenCalled()
			expect(onError).never.toHaveBeenCalled()
		end)
	end

	afterEach(function()
		FriendsNetworking.GetFriendsFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
		FriendsNetworking.GetInactiveFriends.Mock.clear()
	end)
end)
