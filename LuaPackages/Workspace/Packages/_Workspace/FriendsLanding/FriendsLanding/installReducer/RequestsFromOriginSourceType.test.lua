local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local FriendsNetworking = dependencies.FriendsNetworking
local Rodux = dependencies.Rodux

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local RequestsFromOriginSourceType = require(script.Parent.RequestsFromOriginSourceType)

describe("RequestsFromOriginSourceType", function()
	local store, friendsNetworking

	beforeAll(function()
		friendsNetworking = FriendsNetworking
		friendsNetworking.GetFriendRequests.Mock.clear()
	end)

	beforeEach(function()
		store = Rodux.Store.new(RequestsFromOriginSourceType, false, { Rodux.thunkMiddleware })
	end)

	afterEach(function()
		friendsNetworking.GetFriendRequests.Mock.clear()
	end)

	it("SHOULD add and update users and originSourceType from friend requests to state", function()
		friendsNetworking.GetFriendRequests.Mock.reply({
			responseBody = {
				data = {
					{
						id = "123",
						friendRequest = { originSourceType = "FromContacts" },
					},
					{
						id = "1234",
						friendRequest = { originSourceType = "FromContacts" },
					},
					{
						id = "12344",
						friendRequest = { originSourceType = "" },
					},
				},
			},
		})

		store:dispatch(friendsNetworking.GetFriendRequests.API({ currentUserId = "123" }))

		expect(store:getState()).toEqual({
			["123"] = "FromContacts",
			["1234"] = "FromContacts",
			["12344"] = "",
		})

		friendsNetworking.GetFriendRequests.Mock.clear()
		friendsNetworking.GetFriendRequests.Mock.reply({
			responseBody = {
				data = {
					{
						id = "123",
						friendRequest = { originSourceType = "" },
					},
					{
						id = "1234",
						friendRequest = { originSourceType = "FromContacts" },
					},
					{
						id = "12344",
						friendRequest = { originSourceType = "FromContacts" },
					},
					{
						id = "12355",
						friendRequest = { originSourceType = "FromContacts" },
					},
				},
			},
		})

		store:dispatch(friendsNetworking.GetFriendRequests.API({ currentUserId = "123" }))

		expect(store:getState()).toEqual({
			["123"] = "",
			["1234"] = "FromContacts",
			["12344"] = "FromContacts",
			["12355"] = "FromContacts",
		})
	end)
end)
