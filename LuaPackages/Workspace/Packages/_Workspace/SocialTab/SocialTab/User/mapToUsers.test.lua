local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local User = dependencies.RoduxUsers.Models.User
local Mock = dependencies.Mock

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local mapToUsers = require(script.Parent.mapToUsers)

it("SHOULD return a function", function()
	expect(mapToUsers).toEqual(expect.any("function"))
end)

describe("GIVEN list of users including user with userId and userId", function()
	local result
	beforeAll(function()
		local stateWithUsers = Mock.MagicMock.new()
		stateWithUsers.SocialTab.Users.byUserId = {
			userId = User.mock({ id = "userId", displayName = "aaa" }),
			someOtherUserId = User.mock({ id = "someOtherUserId", displayName = "aaa" }),
		}
		stateWithUsers.SocialTab.PremiumByUserId = {
			userId = false,
		}
		result = mapToUsers(stateWithUsers)("userId")
	end)

	it("SHOULD return user with correct user id", function()
		expect(result.id).toBe("userId")
	end)

	it("SHOULD return user with thumbnail property", function()
		expect(result.thumbnail).toEqual(expect.any("string"))
	end)

	it("SHOULD return user with isPremium property", function()
		expect(result.isPremium).toEqual(expect.any("boolean"))
	end)
end)

describe("GIVEN empty list of users and userId", function()
	local result
	beforeAll(function()
		local stateWithNoUsers = Mock.MagicMock.new()
		stateWithNoUsers.SocialTab.Users.byUserId = {}
		result = mapToUsers(stateWithNoUsers)("userId")
	end)

	it("SHOULD return nil", function()
		expect(result).toBeNil()
	end)
end)

describe("GIVEN list of users excluding user with userId and userId", function()
	local result
	beforeAll(function()
		local stateWithUsers = Mock.MagicMock.new()
		stateWithUsers.SocialTab.Users.byUserId = {
			someOtherUserId1 = User.mock({ id = "someOtherUserId1", displayName = "aaa" }),
			someOtherUserId2 = User.mock({ id = "someOtherUserId2", displayName = "aaa" }),
		}
		result = mapToUsers(stateWithUsers)("userId")
	end)

	it("SHOULD return nil", function()
		expect(result).toBeNil()
	end)
end)
