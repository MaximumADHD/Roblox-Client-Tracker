local PYMKCarousel = script.Parent.Parent
local devDependencies = require(PYMKCarousel.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local getFriendStatus = require(script.Parent.getFriendStatus)

describe("getFriendStatus", function()
	it("SHOULD return NotFriend by default", function()
		jestExpect(getFriendStatus()).toBe(Enum.FriendStatus.NotFriend)
	end)

	it("SHOULD return NotFriend if user is nonfriend status without incoming friendship", function()
		jestExpect(getFriendStatus(Enum.FriendStatus.NotFriend)).toBe(Enum.FriendStatus.NotFriend)
	end)

	it("SHOULD return RequestReceived if user has incoming friendship", function()
		jestExpect(getFriendStatus(nil, true)).toBe(Enum.FriendStatus.FriendRequestReceived)
		jestExpect(getFriendStatus(Enum.FriendStatus.NotFriend, true)).toBe(Enum.FriendStatus.FriendRequestReceived)
		jestExpect(getFriendStatus(Enum.FriendStatus.Friend, true)).toBe(Enum.FriendStatus.FriendRequestReceived)
	end)

	it("SHOULD return RequestSent if user has pending friendship", function()
		jestExpect(getFriendStatus(Enum.FriendStatus.FriendRequestSent, nil)).toBe(Enum.FriendStatus.FriendRequestSent)
	end)

	it("SHOULD return Friend if user is Friend", function()
		jestExpect(getFriendStatus(Enum.FriendStatus.Friend, nil)).toBe(Enum.FriendStatus.Friend)
	end)
end)
