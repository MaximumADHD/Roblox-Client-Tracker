local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")

local dependencies = require(SocialReducerAdaptors.dependencies)
local Players = dependencies.Players

local devDependencies = require(SocialReducerAdaptors.devDependencies)
local RoduxFriends = devDependencies.RoduxFriends
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local convertActions = require(script.Parent.Parent.convertActions)
local friendsActionAdaptor = require(script.Parent.Parent.friendsActionAdaptor)

local defaultState = {
	countsByUserId = {},
	byUserId = {},
	requests = {
		receivedCount = 0,
	},
	recommendations = {},
}

local reducer = convertActions(RoduxFriends.installReducer(), friendsActionAdaptor(RoduxFriends), defaultState)

local LOCAL_USER_ID = tostring((Players.LocalPlayer :: Player).UserId)

local userFriend = {
	id = "userId1",
	name = "name1",
	displayName = "displayName1",
	isFriend = true,
	hasVerifiedBadge = false,
}

local userNotFriend = {
	id = "userId2",
	name = "name2",
	displayName = "displayName2",
	isFriend = false,
	hasVerifiedBadge = false,
}

describe("GIVEN legacy AddUser action with friend", function()
	it("SHOULD add friends to the reducer", function()
		local action = {
			type = "AddUser",
			user = userFriend,
		}
		local result = reducer(nil, action)
		expect(result.byUserId[userFriend.id]).toEqual({ LOCAL_USER_ID })
		expect(result.byUserId[LOCAL_USER_ID]).toEqual({ userFriend.id })
	end)
end)

describe("GIVEN legacy AddUser action with not friend", function()
	it("SHOULD not add friends to the reducer", function()
		local action = {
			type = "AddUser",
			user = userNotFriend,
		}
		local result = reducer(nil, action)
		expect(result.byUserId[userFriend.id]).toBeNull()
		expect(result.byUserId[LOCAL_USER_ID]).toBeNull()
	end)
end)

describe("GIVEN legacy AddUsers action", function()
	it("SHOULD add correct friends to the reducer", function()
		local action = {
			type = "AddUsers",
			users = { userFriend, userNotFriend },
		}
		local result = reducer(nil, action)
		expect(result.byUserId[userFriend.id]).toEqual({ LOCAL_USER_ID })
		expect(result.byUserId[LOCAL_USER_ID]).toEqual({ userFriend.id })
		expect(result.byUserId[userNotFriend.id]).toBeNull()
	end)
end)

describe("GIVEN legacy SetFriendRequestsCount action", function()
	it("SHOULD add correct count to the reducer", function()
		local action = {
			type = "SetFriendRequestsCount",
			count = 5,
		}
		local result = reducer(nil, action)
		expect(result.requests.receivedCount).toEqual(5)
	end)
end)
