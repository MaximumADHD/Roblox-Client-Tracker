local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local User = dependencies.RoduxUsers.Models.User
local Mock = dependencies.Mock
local SelfViewProfileDiscoverabilityUpsellIXP = dependencies.SelfViewProfileDiscoverabilityUpsellIXP

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local mapStateToProps = require(script.Parent.mapStateToProps)

describe("SocialTabContainer/mapStateToProps", function()
	local state = Mock.MagicMock.new()
	local props = Mock.MagicMock.new()
	state.LocalUserId = "0"

	it("SHOULD return a function", function()
		expect(mapStateToProps).toEqual(expect.any("function"))
	end)

	describe("WHEN called", function()
		local returnValue = mapStateToProps(state, props)

		it("SHOULD return default values", function()
			expect(returnValue).toEqual({
				isDiscoverabilityUnset = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
					then expect.any("table")
					else nil,
				isPhoneVerified = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
					then expect.any("table")
					else nil,
				unreadConversationCount = expect.any("table"),
				numberOfNotifications = expect.any("table"),
				localUser = expect.any("table"),
				localUserId = "0",
			})
		end)
	end)

	describe("GIVEN LocalUserId", function()
		local mockState = {
			SocialTab = {
				Users = {
					byUserId = {
						localUser = User.mock({ id = "localUser", displayName = "aaa" }),
						otherUser1 = User.mock({ id = "otherUser1", displayName = "zzz" }),
						otherUser2 = User.mock({ id = "otherUser2" }),
					},
				},
				Presence = {
					byUserId = {
						localUser = {},
					},
				},
				PremiumByUserId = {},
				UnreadConversationCount = 5,
			},
			LocalUserId = "localUser",
			NotificationBadgeCounts = {
				TopBarNotificationIcon = 2,
			},
			VerifiedBadges = {
				VerifiedUsers = {},
				VerifiedGroups = {},
			},
		}

		it("SHOULD return formated data correctly", function()
			local mappedState = mapStateToProps(mockState, nil)

			expect(mappedState).toEqual({
				localUser = {
					displayName = "aaa",
					id = "localUser",
					isPremium = false,
					hasVerifiedBadge = false,
					thumbnail = expect.any("string"),
					username = expect.any("string"),
				},
				localUserId = "localUser",
				numberOfNotifications = 2,
				unreadConversationCount = 5,
			})
		end)
	end)
end)
