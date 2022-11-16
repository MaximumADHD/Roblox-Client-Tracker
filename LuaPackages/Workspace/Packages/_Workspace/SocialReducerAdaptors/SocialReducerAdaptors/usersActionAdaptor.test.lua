local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")

local devDependencies = require(SocialReducerAdaptors.devDependencies)
local RoduxUsers = devDependencies.RoduxUsers
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local usersActionAdaptor = require(script.Parent.usersActionAdaptor)

it("SHOULD return table", function()
	expect(usersActionAdaptor({} :: any)).toEqual(expect.any("table"))
end)

it("SHOULD have AddUser and AddUsers properties", function()
	local adaptor = usersActionAdaptor({} :: any)
	expect(adaptor).toEqual({
		AddUser = expect.any("function"),
		AddUsers = expect.any("function"),
	})
end)

it("SHOULD return corect actions for AddUser", function()
	local adaptor = usersActionAdaptor(RoduxUsers)
	local addUserAdaptor = adaptor["AddUser"]
	local action = {
		type = "AddUser",
		user = {
			id = "id",
			name = "name",
			displayName = "displayName",
		},
	}
	local adaptedAction = addUserAdaptor(action)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(1)
	expect(adaptedAction).toEqual({
		{
			type = RoduxUsers.Actions.UserUpdated.name,
			payload = {
				id = "id",
				username = "name",
				displayName = "displayName",
			},
		},
	})
end)

it("SHOULD return corect actions for AddUsers", function()
	local adaptor = usersActionAdaptor(RoduxUsers)
	local addUsersAdaptor = adaptor["AddUsers"]
	local action = {
		type = "AddUsers",
		users = {
			{
				id = "id1",
				name = "name1",
				displayName = "displayName1",
			},
			{
				id = "id2",
				name = "name2",
				displayName = "displayName2",
			},
		},
	}
	local adaptedAction = addUsersAdaptor(action)
	expect(adaptedAction).toEqual(expect.any("table"))
	expect(#adaptedAction).toEqual(2)
	expect(adaptedAction).toEqual({
		{
			type = RoduxUsers.Actions.UserUpdated.name,
			payload = {
				id = "id1",
				username = "name1",
				displayName = "displayName1",
			},
		},
		{
			type = RoduxUsers.Actions.UserUpdated.name,
			payload = {
				id = "id2",
				username = "name2",
				displayName = "displayName2",
			},
		},
	})
end)
