local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local getFFlagContactImporterUseNewTooltip = require(FriendsLanding.Flags.getFFlagContactImporterUseNewTooltip)

local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local t = dependencies.t

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local getTestStore = require(script.Parent.getTestStore)
local mapStateToProps = require(script.Parent.mapStateToProps)

local DEFAULT_USER_WITH_FULL_CONTEXT = { id = "36" }
local DEFAULT_ANY_OTHER_USER = { id = "40" }

it("SHOULD return a function", function()
	expect(mapStateToProps).toEqual(expect.any("function"))
end)

describe("WHEN called with requests", function()
	local returnValue

	beforeEach(function()
		returnValue = mapStateToProps(getTestStore(true):getState())
	end)

	it("SHOULD return a table", function()
		expect(returnValue).toEqual(expect.any("table"))
	end)

	it("SHOULD return screenSize with correct value", function()
		expect(returnValue.screenSize).toBe(Vector2.new(540, 960))
	end)

	it("SHOULD return localUser with correct id", function()
		expect(returnValue.localUserId).toBe("test")
	end)

	it("SHOULD return friendRequests correct value", function()
		expect(returnValue.friendRequests).toEqual(expect.any("table"))
		expect(#returnValue.friendRequests).toBe(40)
		llama.List.map(returnValue.friendRequests, function(user)
			expect(user).toEqual(expect.any("table"))
			expect(user.id).toEqual(expect.any("string"))
		end)
	end)

	it("SHOULD return receivedCount with correct value", function()
		expect(returnValue.receivedCount).toBe(40)
	end)

	it("SHOULD return nextPageCursor with correct value", function()
		expect(returnValue.nextPageCursor).toBe("next")
	end)

	it("SHOULD return amIFollowingUser function with correct value", function()
		local amIFollowingUser = returnValue.amIFollowingUser
		expect(t.callback(amIFollowingUser)).toBe(true)
		expect(amIFollowingUser(DEFAULT_USER_WITH_FULL_CONTEXT)).toBe(true)
		expect(amIFollowingUser(DEFAULT_ANY_OTHER_USER)).toBe(false)
	end)

	it("SHOULD return isUserFollowingMe function with correct value", function()
		local isUserFollowingMe = returnValue.isUserFollowingMe
		expect(t.callback(isUserFollowingMe)).toBe(true)
		expect(isUserFollowingMe(DEFAULT_USER_WITH_FULL_CONTEXT)).toBe(true)
		expect(isUserFollowingMe(DEFAULT_ANY_OTHER_USER)).toBe(false)
	end)

	it("SHOULD return getFriendshipRequestSentFromExperience function with correct value", function()
		local getFriendshipRequestSentFromExperience = returnValue.getFriendshipRequestSentFromExperience
		expect(t.callback(getFriendshipRequestSentFromExperience)).toBe(true)
		expect(getFriendshipRequestSentFromExperience(DEFAULT_USER_WITH_FULL_CONTEXT)).toBe("test game")
		expect(getFriendshipRequestSentFromExperience(DEFAULT_ANY_OTHER_USER)).toBe(nil)
	end)

	it("SHOULD return shouldShowContactImporter fields with correct values", function()
		local shouldShowContactImporterFeature = returnValue.shouldShowContactImporterFeature
		local shouldShowContactImporterUpsellModal = returnValue.shouldShowContactImporterUpsellModal

		expect(shouldShowContactImporterFeature).toBe(true)
		expect(shouldShowContactImporterUpsellModal).toBe(true)
	end)
end)

describe("WHEN called with no requests", function()
	local returnValue

	beforeEach(function()
		returnValue = mapStateToProps(getTestStore(false):getState())
	end)

	it("SHOULD return a table", function()
		expect(returnValue).toEqual(expect.any("table"))
	end)

	it("SHOULD return screenSize with correct value", function()
		expect(returnValue.screenSize).toBe(Vector2.new(540, 960))
	end)

	it("SHOULD return localUser with correct id", function()
		expect(returnValue.localUserId).toBe("test")
	end)

	it("SHOULD return friendRequests as empty table by default", function()
		expect(returnValue.friendRequests).toEqual(expect.any("table"))
		expect(#returnValue.friendRequests).toBe(0)
	end)

	it("SHOULD return receivedCount as 0 by default", function()
		expect(returnValue.receivedCount).toBe(0)
	end)

	it("SHOULD return nextPageCursor as nil by default", function()
		expect(returnValue.nextPageCursor).toBeNil()
	end)

	it("SHOULD return amIFollowingUser function with false returned by default", function()
		local amIFollowingUser = returnValue.amIFollowingUser
		expect(t.callback(amIFollowingUser)).toBe(true)
		expect(amIFollowingUser(DEFAULT_USER_WITH_FULL_CONTEXT)).toBe(false)
		expect(amIFollowingUser(DEFAULT_ANY_OTHER_USER)).toBe(false)
	end)

	it("SHOULD return isUserFollowingMe function with false returned by default", function()
		local isUserFollowingMe = returnValue.isUserFollowingMe
		expect(t.callback(isUserFollowingMe)).toBe(true)
		expect(isUserFollowingMe(DEFAULT_USER_WITH_FULL_CONTEXT)).toBe(false)
		expect(isUserFollowingMe(DEFAULT_ANY_OTHER_USER)).toBe(false)
	end)

	it("SHOULD return getFriendshipRequestSentFromExperience function with nil returned by default", function()
		local getFriendshipRequestSentFromExperience = returnValue.getFriendshipRequestSentFromExperience
		expect(t.callback(getFriendshipRequestSentFromExperience)).toBe(true)
		expect(getFriendshipRequestSentFromExperience(DEFAULT_USER_WITH_FULL_CONTEXT)).toBe(nil)
		expect(getFriendshipRequestSentFromExperience(DEFAULT_ANY_OTHER_USER)).toBe(nil)
	end)

	it("SHOULD return shouldShowContactImporter fields with nil values by default", function()
		local shouldShowContactImporterFeature = returnValue.shouldShowContactImporterFeature
		local shouldShowContactImporterUpsellModal = returnValue.shouldShowContactImporterUpsellModal
		expect(shouldShowContactImporterFeature).toBe(nil)
		expect(shouldShowContactImporterUpsellModal).toBe(nil)
	end)

	if getFFlagContactImporterUseNewTooltip() then
		it("SHOULD return showTooltip field with false value by default", function()
			local showTooltip = returnValue.showTooltip
			expect(showTooltip).toBe(false)
		end)
	end
end)
