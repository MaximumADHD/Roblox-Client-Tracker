local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local getFFlagShowContactImporterTooltipOnce = require(FriendsLanding.Flags.getFFlagShowContactImporterTooltipOnce)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local AcceptFriendRequestFromUserId = dependencies.FriendsNetworking.AcceptFriendRequestFromUserId
local DeclineFriendRequestFromUserId = dependencies.FriendsNetworking.DeclineFriendRequestFromUserId
local DeclineAllFriendRequests = dependencies.FriendsNetworking.DeclineAllFriendRequests
local RequestFriendshipFromUserId = dependencies.FriendsNetworking.RequestFriendshipFromUserId
local GetFriendRequestsCount = dependencies.FriendsNetworking.GetFriendRequestsCount
local GetFriendRequests = dependencies.FriendsNetworking.GetFriendRequests
local GetFollowingExists = dependencies.FriendsNetworking.GetFollowingExists
local GetFriendRecommendationsFromUserId = dependencies.FriendsNetworking.GetFriendRecommendationsFromUserId
local GetExperiencesDetails = dependencies.GamesNetworking.GetExperiencesDetails
local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterAll = JestGlobals.afterAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local getTestStore = require(script.Parent.getTestStore)
local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

local RESPONSE_WITHOUT_ANY_CONTEXT = { responseBody = { data = {} } }

local RESPONSE_WITH_FULL_CONTEXT = {
	responseBody = { data = {
		{ id = 36, friendRequest = { sourceUniverseId = "game_universe_id_36" } },
	} },
}

describe("mapDispatchToProps", function()
	local addFriendsNetworkingRequests = {
		AcceptFriendRequestFromUserId,
		DeclineFriendRequestFromUserId,
		DeclineAllFriendRequests,
		RequestFriendshipFromUserId,
		GetFriendRequestsCount,
		GetFriendRequests,
		GetFollowingExists,
		GetExperiencesDetails,
		GetFriendRecommendationsFromUserId,
	}

	local function mockRequestSuccWithCallback(req, callback, mockResponse: any)
		req.Mock.clear()
		req.Mock.reply(function()
			callback()
			if mockResponse == nil then
				return RESPONSE_WITHOUT_ANY_CONTEXT
			else
				return mockResponse
			end
		end)
	end

	local function mockRequestFailWithCallback(req, callback)
		req.Mock.clear()
		req.Mock.replyWithError(function()
			callback()
			return "Something went wrong"
		end)
	end

	local store = getTestStore(true)

	local returnValue = mapDispatchToProps(function(...)
		return store:dispatch(...)
	end)

	local function testRequestSucc(req, promise, args, response)
		local callback = jest.fn()
		local onResolve = jest.fn()
		local onError = jest.fn()

		mockRequestSuccWithCallback(req, callback, response)

		promise(args)
			:andThen(function()
				onResolve()
			end)
			:catch(function()
				onError()
			end)

		expect(callback).toHaveBeenCalledTimes(1)
		expect(onResolve).toHaveBeenCalledTimes(1)
		expect(onError).never.toHaveBeenCalled()
	end

	local function testRequestFail(req, promise, args)
		local callback = jest.fn()
		local onResolve = jest.fn()
		local onError = jest.fn()

		mockRequestFailWithCallback(req, callback)

		promise(args)
			:andThen(function()
				onResolve()
			end)
			:catch(function()
				onError()
			end)

		expect(callback).toHaveBeenCalledTimes(1)
		expect(onResolve).never.toHaveBeenCalled()
		expect(onError).toHaveBeenCalledTimes(1)
	end

	afterAll(function()
		llama.List.map(addFriendsNetworkingRequests, function(req)
			req.Mock.clear()
		end)
	end)

	it("SHOULD return a function", function()
		expect(mapDispatchToProps).toEqual(expect.any("function"))
	end)

	describe("WHEN called", function()
		it("SHOULD return a table", function()
			expect(returnValue).toEqual(expect.any("table"))
		end)

		it("SHOULD have the expected fields", function()
			expect(returnValue).toEqual({
				acceptFriendRequest = expect.any("function"),
				declineFriendRequest = expect.any("function"),
				ignoreAllFriendsRequests = expect.any("function"),
				requestFriendship = expect.any("function"),
				getFriendRequestsCount = expect.any("function"),
				getFriendRequests = expect.any("function"),
				getFriendRecommendations = expect.any("function"),
				getPhoneInformation = expect.any("function"),
				contactImporterWarningSeen = if getFFlagShowContactImporterTooltipOnce()
					then nil
					else expect.any("function"),
				getUserSettingsMetadata = if getFFlagEnableContactInvitesForNonPhoneVerified()
					then expect.any("function")
					else nil,
			})
		end)

		it("SHOULD execute and resolve when acceptFriendRequest is run successfully", function()
			testRequestSucc(AcceptFriendRequestFromUserId, returnValue.acceptFriendRequest, {
				currentUserId = "localUserId",
				targetUserId = "playerId",
			})
		end)

		it("SHOULD execute with error when acceptFriendRequest is run failed", function()
			testRequestFail(AcceptFriendRequestFromUserId, returnValue.acceptFriendRequest, {
				currentUserId = "localUserId",
				targetUserId = "playerId",
			})
		end)

		it("SHOULD execute and resolve when declineFriendRequest is run successfully", function()
			testRequestSucc(DeclineFriendRequestFromUserId, returnValue.declineFriendRequest, {
				currentUserId = "localUserId",
				targetUserId = "playerId",
			})
		end)

		it("SHOULD execute with error when declineFriendRequest is run failed", function()
			testRequestFail(DeclineFriendRequestFromUserId, returnValue.declineFriendRequest, {
				currentUserId = "localUserId",
				targetUserId = "playerId",
			})
		end)

		it("SHOULD execute and resolve when ignoreAllFriendsRequests is run successfully", function()
			testRequestSucc(DeclineAllFriendRequests, returnValue.ignoreAllFriendsRequests, {
				currentUserId = "localUserId",
			})
		end)

		it("SHOULD execute with error when ignoreAllFriendsRequests is run failed", function()
			testRequestFail(DeclineAllFriendRequests, returnValue.ignoreAllFriendsRequests, {
				currentUserId = "localUserId",
			})
		end)

		it("SHOULD execute and resolve when requestFriendship is run successfully", function()
			testRequestSucc(RequestFriendshipFromUserId, returnValue.requestFriendship, {
				currentUserId = "localUserId",
				targetUserId = "playerId",
				friendshipOriginSourceType = "sourceType",
			})
		end)

		it("SHOULD execute with error when requestFriendship is run failed", function()
			testRequestFail(RequestFriendshipFromUserId, returnValue.requestFriendship, {
				currentUserId = "localUserId",
				targetUserId = "playerId",
				friendshipOriginSourceType = "sourceType",
			})
		end)

		it("SHOULD execute and resolve when getFriendRequestsCount is run successfully", function()
			testRequestSucc(GetFriendRequestsCount, returnValue.getFriendRequestsCount, "localUserId")
		end)

		it("SHOULD execute with error when getFriendRequestsCount is run failed", function()
			testRequestFail(GetFriendRequestsCount, returnValue.getFriendRequestsCount, "localUserId")
		end)

		it("SHOULD execute and resolve when getFriendRequests is run successfully", function()
			testRequestSucc(GetFriendRequests, returnValue.getFriendRequests, {
				limit = 25,
			})
		end)

		it("SHOULD execute with error when getFriendRequests is run failed", function()
			testRequestFail(GetFriendRequests, returnValue.getFriendRequests, {
				limit = 25,
			})
		end)
	end)

	describe("GetFriendRequests", function()
		local checkNetworkRequestWhenInvokeGetFriendRequest

		beforeEach(function()
			mockRequestSuccWithCallback(GetFollowingExists, jest.fn(), nil)
			mockRequestSuccWithCallback(GetExperiencesDetails, jest.fn(), nil)

			checkNetworkRequestWhenInvokeGetFriendRequest =
				function(requestToCheck, shouldRequestBeInvoked, getFriendRequestsArg, response)
					local callback = jest.fn()
					mockRequestSuccWithCallback(requestToCheck, callback, nil)
					expect(callback).toHaveBeenCalledTimes(0)
					testRequestSucc(
						GetFriendRequests,
						returnValue.getFriendRequests,
						llama.Dictionary.join({
							limit = 25,
							localUserId = "0",
							isRefresh = false,
						}, getFriendRequestsArg),
						response
					)
					if shouldRequestBeInvoked then
						expect(callback).toHaveBeenCalledTimes(1)
					else
						expect(callback).toHaveBeenCalledTimes(0)
					end
				end
		end)

		it("SHOULD fetch user followings when getFriendRequest return non-empty user ids", function()
			checkNetworkRequestWhenInvokeGetFriendRequest(GetFollowingExists, true, {}, RESPONSE_WITH_FULL_CONTEXT)
		end)

		it("SHOULD not fetch user followings when getFriendRequest return empty user ids", function()
			checkNetworkRequestWhenInvokeGetFriendRequest(GetFollowingExists, false, {}, RESPONSE_WITHOUT_ANY_CONTEXT)
		end)

		it("SHOULD fetch game details when getFriendRequest return user requests with sourceUniverseIds", function()
			checkNetworkRequestWhenInvokeGetFriendRequest(GetExperiencesDetails, true, {}, RESPONSE_WITH_FULL_CONTEXT)
		end)

		it(
			"SHOULD not fetch game details when getFriendRequest return user requests without sourceUniverseIds",
			function()
				checkNetworkRequestWhenInvokeGetFriendRequest(
					GetExperiencesDetails,
					false,
					{},
					RESPONSE_WITHOUT_ANY_CONTEXT
				)
			end
		)
	end)
end)
