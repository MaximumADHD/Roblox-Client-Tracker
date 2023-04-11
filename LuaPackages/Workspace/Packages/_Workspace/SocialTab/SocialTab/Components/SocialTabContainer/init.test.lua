local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProviders = require(SocialTab.TestHelpers.createInstanceWithProviders)
local _getFFlagDebugSocialTabCarouselEnabled = require(SocialTab.Flags.getFFlagDebugSocialTabCarouselEnabled)

local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local UIBlox = dependencies.UIBlox
local User = dependencies.RoduxUsers.Models.User
local PresenceModel = dependencies.RoduxPresence.Models.Presence
local GetFriendRequestsCount = dependencies.NetworkingFriends.GetFriendRequestsCount
local Images = UIBlox.App.ImageSet.Images

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local SocialTabContainer = require(script.Parent)

describe("SocialTabContainer", function()
	local function findImageSet(imageSetPath)
		local imageSet = Images[imageSetPath]

		return {
			Image = imageSet.Image,
			ImageRectSize = imageSet.ImageRectSize,
			ImageRectOffset = imageSet.ImageRectOffset,
		}
	end

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
				requests = {},
			},
		},
		ScreenSize = Vector2.new(1000, 1000),
		VerifiedBadges = {
			VerifiedUsers = {},
			VerifiedGroups = {},
		},
	}

	local mockStore = Rodux.Store.new(function(state)
		return state
	end, mockState, { Rodux.thunkMiddleware })

	local function makePolicy(policies)
		return {
			function()
				return llama.Dictionary.join({
					getShowDisplayName = function()
						return false
					end,
					getFriendFinder = function()
						return true
					end,
					getAccountProviderName = function()
						return ""
					end,
					shouldInviteFromAccountProvider = function()
						return true
					end,
					getShouldShowGroupsTile = function()
						return false
					end,
					getChatHeaderNotifications = function()
						return false
					end,
					getProfileShareEnabled = function()
						return true
					end,
					getContactImporterEnabled = function()
						return true
					end,
					getWebViewSupport = function()
						return true
					end,
				}, policies)
			end,
		}
	end

	local mockData = { responseBody = { data = {} } }
	local function mockRequestWithCallback(req, callback)
		req.Mock.clear()
		req.Mock.reply(function(url, method, options)
			callback(url, method, options)
			return mockData
		end)
	end
	local getFriendRequestsCountMock = jest.fn()
	mockRequestWithCallback(GetFriendRequestsCount, getFriendRequestsCountMock)

	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
			})

			cleanup()
		end)
	end)

	describe("WHEN mounted", function()
		it("SHOULD call GetFriendRequestsCount", function()
			getFriendRequestsCountMock.mockReset()

			local _, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
			})

			expect(getFriendRequestsCountMock).toHaveBeenCalledTimes(1)

			cleanup()
		end)
	end)

	describe("ProfileTab", function()
		it("SHOULD show username if policy does not allow displayName", function()
			local parent, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
				policy = makePolicy(),
			})

			local profileEntry = RhodiumHelpers.findFirstInstance(parent, {
				Name = "profileEntry",
			})
			expect(profileEntry).toEqual(expect.any("Instance"))

			local userText = RhodiumHelpers.findFirstInstance(profileEntry, {
				Name = "userText",
			})

			expect(userText.Text).toBe("Tucker")

			cleanup()
		end)

		it("SHOULD show display name if policy allows it", function()
			local parent, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
				policy = makePolicy({
					getShowDisplayName = function()
						return true
					end,
				}),
			})

			local profileEntry = RhodiumHelpers.findFirstInstance(parent, {
				Name = "profileEntry",
			})
			expect(profileEntry).toEqual(expect.any("Instance"))

			local userText = RhodiumHelpers.findFirstInstance(profileEntry, {
				Name = "userText",
			})

			expect(userText.Text).toBe("DisplayName")

			cleanup()
		end)
	end)

	describe("Groups tile visibility policy", function()
		it("SHOULD not show groups tile if policy is enabled", function()
			local parent, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
				policy = makePolicy(),
			})

			local grid = RhodiumHelpers.findFirstInstance(parent, {
				Name = "buttonGrid",
			})

			expect(grid).toEqual(expect.any("Instance"))

			local groupsTile = RhodiumHelpers.findFirstInstance(grid, findImageSet("icons/menu/groups_large"))
			assert(groupsTile == nil, "Groups tile should not be showing due to ShouldShowGroupsTile policy")

			cleanup()
		end)

		it("SHOULD show groups tile if policy is enabled", function()
			local parent, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
				policy = makePolicy({
					getShouldShowGroupsTile = function()
						return true
					end,
				}),
			})
			-- trigger a second render cycle so that DefaultMetricsGridView can measure updated container width
			Roact.act(function()
				task.wait(0.1)
			end)

			local grid = RhodiumHelpers.findFirstInstance(parent, {
				Name = "buttonGrid",
			})

			expect(grid).toEqual(expect.any("Instance"))

			local groupsTile = RhodiumHelpers.findFirstInstance(grid, findImageSet("icons/menu/groups_large"))
			assert(groupsTile, "Groups tile does not exist")

			cleanup()
		end)
	end)

	describe("Notifications visibility policy", function()
		it("SHOULD not show notifications bell if policy is not enabled", function()
			local parent, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
				policy = makePolicy(),
			})

			local topBarNotifications =
				RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/common/notificationOn"))

			expect(topBarNotifications).toBeNil()

			cleanup()
		end)

		it("SHOULD show notifications if policy is enabled", function()
			local parent, cleanup = createInstanceWithProviders(SocialTabContainer, {
				store = mockStore,
				policy = makePolicy({
					getChatHeaderNotifications = function()
						return true
					end,
				}),
			})

			local topBarNotifications =
				RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/common/notificationOn"))

			expect(topBarNotifications).toEqual(expect.any("Instance"))

			cleanup()
		end)
	end)
end)
