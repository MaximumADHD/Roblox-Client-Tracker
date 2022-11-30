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

local SocialPanelUserProfile = require(script.Parent)

describe("SocialPaneluserProfile", function()
	local mockStoreOnline

	beforeEach(function()
		local mockStateOnline = {
			LocalUserId = "0",
			UniversePlaceInfos = {},
			FriendPresenceCounts = {},
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
		}

		mockStoreOnline = Rodux.Store.new(function(state)
			return state
		end, mockStateOnline, { Rodux.thunkMiddleware })
	end)

	describe("Social Panel User Profile", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProviders(SocialPanelUserProfile, {
				store = mockStoreOnline,
			})

			cleanup()
		end)

		it("SHOULD show the name", function()
			local parent, cleanup = createInstanceWithProviders(SocialPanelUserProfile, {
				store = mockStoreOnline,
				props = {
					displayName = "username",
					userPresenceType = 2,
				},
			})

			local displayName = RhodiumHelpers.findFirstInstance(parent, {
				Name = "displayNameLabel",
			})

			expect(displayName).toBeDefined()
			expect(displayName.Text).toBe("username")

			cleanup()
		end)

		it("SHOULD show contextual info for online users", function()
			local parent, cleanup = createInstanceWithProviders(SocialPanelUserProfile, {
				store = mockStoreOnline,
				props = {
					userPresenceType = 2,
				},
			})

			local onlineStatus = RhodiumHelpers.findFirstInstance(parent, {
				Name = "contactContextual",
			})

			expect(onlineStatus).toBeDefined()
			expect(onlineStatus.Text).toBe("Common.Presence.Label.Online")

			cleanup()
		end)
	end)
end)
