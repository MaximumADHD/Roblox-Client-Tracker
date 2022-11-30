local SocialTab = script:FindFirstAncestor("SocialTab")
local _getFFlagDebugSocialTabCarouselEnabled = require(SocialTab.Flags.getFFlagDebugSocialTabCarouselEnabled)

local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama
local User = dependencies.RoduxUsers.Models.User
local RoduxPresence = dependencies.RoduxPresence
local PresenceType = RoduxPresence.Enums.PresenceType

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local mapStateToProps = require(script.Parent.mapStateToProps)

describe("mapStateToProps", function()
	local prevDebugSocialTabCarouselEnabled

	beforeAll(function()
		prevDebugSocialTabCarouselEnabled = game:SetFastFlagForTesting("DebugSocialTabCarouselEnabled", false)
	end)

	afterAll(function()
		game:SetFastFlagForTesting("DebugSocialTabCarouselEnabled", prevDebugSocialTabCarouselEnabled)
	end)

	local state = jest.fn()
	local props = jest.fn()
	state.SocialTab = {
		Friends = {
			countsByUserId = {},
			byUserId = {},
			requests = {
				receivedCount = 0,
			},
		},
	}

	it("SHOULD return a function", function()
		expect(mapStateToProps).toEqual(expect.any("function"))
	end)

	describe("WHEN called", function()
		local returnValue = mapStateToProps(state, props)

		it("SHOULD return a table", function()
			expect(returnValue).toEqual(expect.any("table"))
		end)
	end)

	describe("GIVEN a list of no friends", function()
		local stateWithFriends = {
			SocialTab = {
				Friends = {
					LocalUserId = "0",
					countsByUserId = {},
					byUserId = {
						localUserId = nil,
					},
					requests = {
						receivedCount = 0,
					},
				},
			},
		}
		local props = jest.fn()
		local friends = mapStateToProps(stateWithFriends :: any, props).friends

		it("SHOULD return an empty array", function()
			expect(friends).toEqual(expect.any("table"))

			expect(friends).toEqual({})
		end)
	end)

	describe("GIVEN a list of friends", function()
		local friends

		beforeAll(function()
			local offlineMock =
				RoduxPresence.Models.Presence.mock({ userPresenceType = PresenceType.Offline:rawValue() }):format()
			local onlineMock =
				RoduxPresence.Models.Presence.mock({ userPresenceType = PresenceType.Online:rawValue() }):format()

			local stateWithFriends = {
				LocalUserId = "0",
				SocialTab = {
					Friends = {
						countsByUserId = {},
						byUserId = {
							localUserId = {
								"offlineFriend1",
								"offlineFriend2",
								"onlineFriend3",
							},
						},
						requests = {
							receivedCount = 0,
						},
					},
					Users = {
						byUserId = {
							offlineFriend1 = User.mock({ id = "offlineFriend1", displayName = "aaa" }),
							offlineFriend2 = User.mock({ id = "offlineFriend2", displayName = "zzz" }),
							onlineFriend3 = User.mock({ id = "onlineFriend3" }),
							notFriend = User.mock({ id = "notFriend" }),
						},
					},
					PremiumByUserId = {},
					Presence = {
						byUserId = {
							offlineFriend1 = offlineMock,
							offlineFriend2 = offlineMock,
							onlineFriend3 = onlineMock,
						},
					},
				},
				VerifiedBadges = {
					VerifiedUsers = { offlineFriend1 = true },
				},
			}
			local props = jest.fn()
			friends = mapStateToProps(stateWithFriends :: any, props).friends
		end)

		it("SHOULD return the list of friends", function()
			expect(#friends).toBe(3)
		end)

		it("SHOULD sort the list by presence first", function()
			expect(friends[1].id).toBe("onlineFriend3")
		end)

		it("SHOULD sort the list by displayName second", function()
			expect(friends[#friends].id).toBe("offlineFriend2")
		end)

		it("SHOULD have thumbnails for all friends", function()
			expect(llama.List.every(friends, function(user)
				return user.thumbnail ~= nil
			end)).toBe(true)
		end)

		it("SHOULD mark the right user(s) as verified", function()
			expect(llama.List.every(friends, function(user)
				local shouldHaveVerifiedBadge = user.id == "offlineFriend1"
				return user.hasVerifiedBadge == shouldHaveVerifiedBadge
			end)).toBe(true)
		end)
	end)

	describe("WHEN there are notifications for friends requests", function()
		local stateWithFriendRequests = jest.fn()
		stateWithFriendRequests.SocialTab = {
			Friends = {
				countsByUserId = {},
				byUserId = {},
				requests = {
					receivedCount = 5,
				},
			},
		}

		local hasFriendRequests = mapStateToProps(stateWithFriendRequests, nil).hasFriendRequests

		it("SHOULD return hasFriendRequests as true", function()
			expect(hasFriendRequests).toBe(true)
		end)
	end)

	describe("WHEN there are no notifications for friends requests", function()
		local stateWithFriendRequests = jest.fn()
		stateWithFriendRequests.SocialTab = {
			Friends = {
				countsByUserId = {},
				byUserId = {},
				requests = {
					receivedCount = 0,
				},
			},
		}

		local hasFriendRequests = mapStateToProps(stateWithFriendRequests, nil).hasFriendRequests

		it("SHOULD return hasFriendRequests as false", function()
			expect(hasFriendRequests).toBe(false)
		end)
	end)
end)
