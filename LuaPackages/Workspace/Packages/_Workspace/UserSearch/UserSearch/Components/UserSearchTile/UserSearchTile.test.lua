local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local createTreeWithProviders = SocialTestHelpers.createTreeWithProviders
local runWhileMounted = SocialTestHelpers.runWhileMounted
local mockedUsersInfo = require(UserSearch.TestHelpers.mockedUsersInfo)

local UserSearchTileStories = require(UserSearch.Stories.UserSearchTileStories)

describe("UserSearchTile", function()
	describe("WHEN any type of user is passed", function()
		local runForAnyUserStory = function(UserType)
			it("SHOULD mount and unmount " .. UserType, function()
				local UserTileComponent = createTreeWithProviders(UserSearchTileStories[UserType], {
					state = mockedUsersInfo.state,
				})

				runWhileMounted(UserTileComponent, function(parent)
					expect(#parent:GetChildren()).toBe(1)
				end)
			end)

			it("SHOULD render Avatar, Name, DisplayName " .. UserType, function()
				local UserTileComponent = createTreeWithProviders(UserSearchTileStories[UserType], {
					state = mockedUsersInfo.state,
				})

				runWhileMounted(UserTileComponent, function(parent)
					expect(#parent:GetChildren()).toBe(1)

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Thumbnail",
					})
					local Subtitle = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Subtitle",
					})

					expect(PlayerAvatar).never.toBeNil()
					expect(Subtitle).never.toBeNil()
					expect(PlayerAvatar).toBeAbove(Subtitle)
				end)
			end)
		end

		for userType, _userId in pairs(mockedUsersInfo.ids) do
			runForAnyUserStory(userType)
			break
		end
	end)

	describe("Contextual information", function()
		local runForAnyUserStory = function(UserType, contextualInfo)
			it("SHOULD (not) render contextual information for " .. UserType, function()
				local UserTileComponent = createTreeWithProviders(UserSearchTileStories[UserType], {
					state = mockedUsersInfo.state,
				})

				runWhileMounted(UserTileComponent, function(parent)
					expect(#parent:GetChildren()).toBe(1)

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Thumbnail",
					})
					local PlayerContext = RhodiumHelpers.findFirstInstance(parent, {
						Text = contextualInfo,
					})

					expect(PlayerAvatar).never.toBeNil()
					if contextualInfo then
						expect(PlayerContext).never.toBeNil()
						expect(PlayerAvatar).toBeAbove(PlayerContext)
					else
						expect(PlayerContext).toBeNil()
					end
				end)
			end)
		end

		runForAnyUserStory("yourself", "Feature.PlayerSearchResults.Label.ThisIsYou")
		runForAnyUserStory("following", "Feature.PlayerSearchResults.Label.YouAreFollowing")
		runForAnyUserStory("friend", "Feature.PlayerSearchResults.Label.YouAreFriends")
		runForAnyUserStory(
			"previousUserName",
			"Feature.PlayerSearchResults.Label.AlsoKnownAsAbbreviation searchKeyword"
		)

		runForAnyUserStory("incomingFriendship", false)
		runForAnyUserStory("outgoingFriendship", false)
		runForAnyUserStory("random", false)
		runForAnyUserStory("notFriend", false)
	end)

	describe("Button", function()
		local runForAnyUserStory = function(UserType, button)
			it("SHOULD (not) render buttons for " .. UserType, function()
				local UserTileComponent = createTreeWithProviders(UserSearchTileStories[UserType], {
					state = mockedUsersInfo.state,
				})

				runWhileMounted(UserTileComponent, function(parent)
					expect(#parent:GetChildren()).toBe(1)

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Thumbnail",
					})
					local PlayerTileButtons = RhodiumHelpers.findFirstInstance(parent, {
						Name = "PlayerTileButtons",
					})

					expect(PlayerAvatar).never.toBeNil()
					if button then
						expect(#PlayerTileButtons:GetChildren()).toBe(2)
						expect(PlayerTileButtons[2]).never.toBeNil()
						expect(PlayerTileButtons).toBeInsideRightOf(PlayerAvatar)
					else
						expect(#PlayerTileButtons:GetChildren()).toBe(1)
					end
				end)
			end)
		end

		runForAnyUserStory("yourself", false)
		runForAnyUserStory("friend", false)

		runForAnyUserStory("following", true)
		runForAnyUserStory("incomingFriendship", true)
		runForAnyUserStory("outgoingFriendship", true)
		runForAnyUserStory("random", true)
		runForAnyUserStory("notFriend", true)
	end)
end)
