local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")

local devDependencies = require(SocialReducerAdaptors.devDependencies)
local RoduxFriends = devDependencies.RoduxFriends
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local friendsActionAdaptor = require(script.Parent.friendsActionAdaptor)

local LOCAL_USER_ID = "1234"

it("SHOULD return table", function()
	expect(friendsActionAdaptor({})).toEqual(expect.any("table"))
end)

it("SHOULD have AddUser, AddUsers, SetFriendRequestsCount properties", function()
	local adaptor = friendsActionAdaptor({})
	expect(adaptor).toEqual({
		AddUser = expect.any("function"),
		AddUsers = expect.any("function"),
		SetFriendRequestsCount = expect.any("function"),
	})
end)

it("SHOULD return correct actions for AddUser if user isFriend", function()
	local adaptor = friendsActionAdaptor(RoduxFriends, LOCAL_USER_ID)
	local addUserAdaptor = adaptor["AddUser"]
	local actionFriend = {
		type = "AddUser",
		user = {
			id = "id",
			name = "name",
			displayName = "displayName",
			isFriend = true,
		},
	}
	local adaptedAction = addUserAdaptor(actionFriend)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(1)
	expect(adaptedAction).toEqual({
		{
			type = RoduxFriends.Actions.FriendshipCreated.name,
			payload = {
				userId1 = "id",
				userId2 = LOCAL_USER_ID,
			},
		},
	})
end)

it("SHOULD return { AddUser } for AddUser if user not isFriend", function()
	local adaptor = friendsActionAdaptor(RoduxFriends, LOCAL_USER_ID)
	local addUserAdaptor = adaptor["AddUser"]
	local actionNotFriend = {
		type = "AddUser",
		user = {
			id = "id",
			name = "name",
			displayName = "displayName",
		},
	}
	local adaptedAction = addUserAdaptor(actionNotFriend)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(1)
	expect(adaptedAction).toEqual({ actionNotFriend })
end)

it("SHOULD return corect actions for AddUsers depending if user isFriend", function()
	local adaptor = friendsActionAdaptor(RoduxFriends, LOCAL_USER_ID)
	local addUsersAdaptor = adaptor["AddUsers"]
	local action = {
		type = "AddUsers",
		users = {
			{
				id = "id1",
				name = "name1",
				displayName = "displayName1",
				isFriend = true :: boolean?,
			},
			{
				id = "id2",
				name = "name2",
				displayName = "displayName2",
			},
			{
				id = "id3",
				name = "name3",
				displayName = "displayName3",
				isFriend = true,
			},
		},
	}
	local adaptedAction = addUsersAdaptor(action)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(2)
	expect(adaptedAction).toEqual({
		{
			type = RoduxFriends.Actions.FriendshipCreated.name,
			payload = {
				userId1 = "id1",
				userId2 = LOCAL_USER_ID,
			},
		},
		{
			type = RoduxFriends.Actions.FriendshipCreated.name,
			payload = {
				userId1 = "id3",
				userId2 = LOCAL_USER_ID,
			},
		},
	})
end)

it("SHOULD return correct actions for SetFriendRequestsCount", function()
	local adaptor = friendsActionAdaptor(RoduxFriends, LOCAL_USER_ID)
	local setFriendRequestsCountAdaptor = adaptor["SetFriendRequestsCount"]
	local action = {
		type = "SetFriendRequestsCount",
		count = 5,
	}
	local adaptedAction = setFriendRequestsCountAdaptor(action)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(1)
	expect(adaptedAction).toEqual({
		{
			type = RoduxFriends.Actions.RequestReceivedCountUpdated.name,
			payload = {
				count = 5,
			},
		},
	})
end)
