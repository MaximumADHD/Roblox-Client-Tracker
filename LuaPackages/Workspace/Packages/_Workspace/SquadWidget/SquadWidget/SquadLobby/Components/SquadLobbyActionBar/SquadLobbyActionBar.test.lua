local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)
local dependencies = require(SquadWidget.dependencies)
local Constants = require(SquadWidget.SquadLobby.Common.Constants)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local findImageSet = devDependencies.findImageSet
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local SquadLobbyActionBar = require(SquadWidget.SquadLobby.Components.SquadLobbyActionBar.SquadLobbyActionBar)
local UIBlox = dependencies.UIBlox
local RetrievalStatus = UIBlox.App.Loading.Enum.RetrievalStatus

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(SquadLobbyActionBar, {
		props = {
			actionBarLoadingStatus = RetrievalStatus.Done.rawValue(),
			numUsers = 2,
		},
	})
	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

describe("SquadLobbyActionBar isLoaded", function()
	describe("More than 1 user", function()
		it("SHOULD show a primary cta button", function()
			local element = createTreeWithProviders(SquadLobbyActionBar, {
				props = {
					actionBarLoadingStatus = RetrievalStatus.Done.rawValue(),
					numUsers = 2,
				},
			})

			runWhileMounted(element, function(parent)
				local pickAnExperienceButton =
					RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.PICK_AN_EXPERIENCE_ICON))
				local inviteFriendsButton =
					RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.INVITE_FRIENDS_ICON))

				local chatButton = RhodiumHelpers.findFirstInstance(parent, {
					Name = "ChatButton",
				})

				jestExpect(pickAnExperienceButton).toEqual(jestExpect.any("Instance"))
				jestExpect(chatButton).toEqual(jestExpect.any("Instance"))
				jestExpect(inviteFriendsButton).toBeNil()
			end)
		end)
	end)

	describe("1 user", function()
		it("SHOULD show an InviteFriends cta button", function()
			local element = createTreeWithProviders(SquadLobbyActionBar, {
				props = {
					actionBarLoadingStatus = RetrievalStatus.Done.rawValue(),
					numUsers = 1,
				},
			})

			runWhileMounted(element, function(parent)
				local pickAnExperienceButton =
					RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.PICK_AN_EXPERIENCE_ICON))
				local inviteFriendsButton =
					RhodiumHelpers.findFirstInstance(parent, findImageSet(Constants.INVITE_FRIENDS_ICON))

				local chatButton = RhodiumHelpers.findFirstInstance(parent, {
					Name = "ChatButton",
				})

				jestExpect(inviteFriendsButton).toEqual(jestExpect.any("Instance"))
				jestExpect(chatButton).toEqual(jestExpect.any("Instance"))
				jestExpect(pickAnExperienceButton).toBeNil()
			end)
		end)
	end)
end)

describe("SquadLobbyActionBar isLoading", function()
	it("SHOULD show a shimmering container and loading button", function()
		local element = createTreeWithProviders(SquadLobbyActionBar, {
			props = {
				actionBarLoadingStatus = RetrievalStatus.Fetching.rawValue(),
				numUsers = 2,
			},
		})

		runWhileMounted(element, function(parent)
			local loadingCtaButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "LoadingCTAButton",
			})
			local primaryCTAButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PrimaryCTAButton",
			})
			local loadingChatButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "LoadingChatButton",
			})
			local chatButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ChatButton",
			})

			jestExpect(loadingChatButton).toEqual(jestExpect.any("Instance"))
			jestExpect(loadingCtaButton).toEqual(jestExpect.any("Instance"))
			jestExpect(primaryCTAButton).toBeNil()
			jestExpect(chatButton).toBeNil()
		end)
	end)
end)

describe("SquadLobbyActionBar failed", function()
	it("SHOULD show a shimmering container and loading button", function()
		local element = createTreeWithProviders(SquadLobbyActionBar, {
			props = {
				actionBarLoadingStatus = RetrievalStatus.Failed.rawValue(),
				numUsers = 2,
			},
		})

		runWhileMounted(element, function(parent)
			local loadingCtaButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "LoadingCTAButton",
			})
			local primaryCTAButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "PrimaryCTAButton",
			})
			local loadingChatButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "LoadingChatButton",
			})
			local chatButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ChatButton",
			})

			jestExpect(loadingChatButton).toEqual(jestExpect.any("Instance"))
			jestExpect(loadingCtaButton).toEqual(jestExpect.any("Instance"))
			jestExpect(primaryCTAButton).toBeNil()
			jestExpect(chatButton).toBeNil()
		end)
	end)
end)
