local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local devDependencies = require(FriendsCarousel.devDependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local formatFriendStatus = require(script.Parent.formatFriendStatus)
local Enums = SocialLuaAnalytics.Analytics.Enums
local FriendStatuses = Enums.FriendStatuses

local getFFlagFriendsCarouselIncomingFriendRequestAnalytics =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselIncomingFriendRequestAnalytics)

describe("formatFriendStatus", function()
	it("SHOULD return nonfriend by default", function()
		jestExpect(formatFriendStatus({})).toBe(FriendStatuses.NotFriends.rawValue())
	end)

	it("SHOULD return Friend if user is friends", function()
		jestExpect(formatFriendStatus({
			isFriendWithUser = true,
			hasPendingFriendRequest = true,
		})).toBe(FriendStatuses.Friends.rawValue())
	end)

	it("SHOULD return RequestSent if user is not friends and has request sent", function()
		jestExpect(formatFriendStatus({
			isFriendWithUser = false,
			hasPendingFriendRequest = true,
		})).toBe(FriendStatuses.RequestSent.rawValue())
	end)

	it("SHOULD return RequestSent if user is not friends and has no request sent", function()
		jestExpect(formatFriendStatus({
			isFriendWithUser = false,
			hasPendingFriendRequest = false,
		})).toBe(FriendStatuses.NotFriends.rawValue())
	end)

	if getFFlagFriendsCarouselIncomingFriendRequestAnalytics() then
		it("SHOULD return RequestReceived if user has incoming friendship request", function()
			jestExpect(formatFriendStatus({
				isFriendWithUser = false,
				hasIncomingFriendRequest = true,
			})).toBe(FriendStatuses.RequestReceived.rawValue())
		end)
	end
end)
