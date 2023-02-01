local SocialReducerAdaptors = script:FindFirstAncestor("SocialReducerAdaptors")

local devDependencies = require(SocialReducerAdaptors.devDependencies)
local RoduxUsers = devDependencies.RoduxUsers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local convertActions = require(script.Parent.Parent.convertActions)
local usersActionAdaptor = require(script.Parent.Parent.usersActionAdaptor)

local defaultState = {
	byUserId = {},
	byUsername = {},
}

local reducer = convertActions(RoduxUsers.installReducer(), usersActionAdaptor(RoduxUsers), defaultState)

local user = {
	id = "userId",
	name = "name",
	displayName = "displayName",
}

game:SetFastFlagForTesting("EnableHasVerifiedBadgeUserModelValidation", false)

describe("GIVEN legacy AddUser action", function()
	it("SHOULD add the user to the reducer", function()
		local action = {
			type = "AddUser",
			user = user,
		}
		local result = reducer(nil, action)
		expect(result.byUserId[user.id]).never.toBeNull()
	end)
end)

describe("GIVEN legacy AddUsers action", function()
	it("SHOULD add the user to the reducer", function()
		local action = {
			type = "AddUsers",
			users = { user },
		}
		local result = reducer(nil, action)
		expect(result.byUserId[user.id]).never.toBeNull()
	end)
end)
