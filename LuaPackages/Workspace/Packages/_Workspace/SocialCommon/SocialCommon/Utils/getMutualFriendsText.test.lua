local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local getMutualFriendsText = require(script.Parent.getMutualFriendsText)

local MOCK_LOCALIZED = {
	mutualFriends = "Mutual Friends",
	singularMutualFriend = "mutual friend",
}

describe("getMutualFriendsText", function()
	it("SHOULD return '1 mutual friend' for singular mutual friend", function()
		local mutualFriendsText = getMutualFriendsText({ mutualFriendsCount = 1, localized = MOCK_LOCALIZED })
		expect(mutualFriendsText).toEqual("1 mutual friend")
	end)

	it("SHOULD return 'x mutual friends' for multiple mutual friends", function()
		local mutualFriendsText = getMutualFriendsText({ mutualFriendsCount = 10, localized = MOCK_LOCALIZED })
		expect(mutualFriendsText).toEqual("10 mutual friends")
	end)
end)
