local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProviders = require(SocialTab.TestHelpers.createInstanceWithProviders)

local dependencies = require(SocialTab.dependencies)
local User = dependencies.RoduxUsers.Models.User
local PresenceModel = dependencies.RoduxPresence.Models.Presence
local Rodux = dependencies.Rodux

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local SocialPanelHeader = require(script.Parent)

describe("SocialPanelHeader", function()
	local mockStore

	beforeEach(function()
		local mockState = {
			LocalUserId = "0",
			NotificationBadgeCounts = {
				TopBarNotificationIcon = 0,
			},
			SocialTab = {
				UnreadConversationCount = 0,
				Users = {
					byUserId = {
						["0"] = User.mock({
							id = "0",
							displayName = "DisplayName",
							username = "Tucker",
						}),
					},
				},
				Presence = {
					byUserId = {
						["0"] = PresenceModel.format(PresenceModel.mock({
							userPresenceType = 1,
						})),
					},
				},
				PremiumByUserId = {
					["0"] = false,
				},
				Friends = {
					byUserId = {},
					requests = {
						receivedCount = 1,
					},
				},
			},
			ScreenSize = Vector2.new(1000, 1000),
			VerifiedBadges = {
				VerifiedUsers = {},
				VerifiedGroups = {},
			},
		}

		mockStore = Rodux.Store.new(function(state)
			return state
		end, mockState, { Rodux.thunkMiddleware })
	end)

	describe("Social Panel Header", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProviders(SocialPanelHeader, {
				store = mockStore,
			})

			cleanup()
		end)

		it("SHOULD show a badge when friend reuqests are present", function()
			local parent, cleanup = createInstanceWithProviders(SocialPanelHeader, {
				store = mockStore,
			})

			local requestBadge = RhodiumHelpers.findFirstInstance(parent, {
				Name = "FriendRequestsBadge",
			})

			expect(requestBadge).toBeDefined()

			cleanup()
		end)
	end)
end)
