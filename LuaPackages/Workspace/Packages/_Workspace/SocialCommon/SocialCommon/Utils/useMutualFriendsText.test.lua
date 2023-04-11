local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers)
local renderHookWithProviders = SocialTestHelpers.TestHelpers.renderHookWithProviders

local useMutualFriendsText = require(script.Parent.useMutualFriendsText)

describe("getMutualFriendsText", function()
	it("SHOULD return '1 mutual friend' for singular mutual friend", function()
		local helper = renderHookWithProviders(function()
			return useMutualFriendsText(1)
		end)
		expect(helper.result).toEqual("1 Feature.Friends.Label.SingularMutualFriend")
	end)

	it("SHOULD return 'x mutual friends' for multiple mutual friends", function()
		local helper = renderHookWithProviders(function()
			return useMutualFriendsText(10)
		end)
		expect(helper.result).toEqual("10 feature.friends.label.mutualfriends")
	end)
end)
