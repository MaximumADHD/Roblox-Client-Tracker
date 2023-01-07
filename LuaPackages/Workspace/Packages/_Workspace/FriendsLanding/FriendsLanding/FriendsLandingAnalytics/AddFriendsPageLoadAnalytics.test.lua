local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local AddFriendsPageLoadAnalytics = require(script.Parent.AddFriendsPageLoadAnalytics)

describe("AddFriendsPageLoadAnalytics", function()
	local results

	beforeEach(function()
		results = {
			responseBody = {
				data = {
					{
						friendRequest = {
							sourceUniverseId = 12345 :: number?,
							senderId = 1,
						},
						mutualFriendsList = { "Nexx", "Roblox", "Hello" },
					},
					{
						friendRequest = {
							sourceUniverseId = 67890,
							senderId = 2,
						},
						mutualFriendsList = {},
					},
					{
						friendRequest = {
							sourceUniverseId = nil,
							senderId = 3,
						},
						mutualFriendsList = { "Portyspice", "Nexx" },
					},
				},
			},
		}
	end)

	it("SHOULD return formatted analytics from friendRequests and results", function()
		expect(AddFriendsPageLoadAnalytics(results)).toEqual({
			absPosition = "1,2,3",
			gamesContext = "12345,67890,0",
			mutualFriendsContext = "Nexx,Roblox,Hello;;Portyspice,Nexx",
			page = "friendRequests",
			requestingUserId = "1,2,3",
		})
	end)
end)
