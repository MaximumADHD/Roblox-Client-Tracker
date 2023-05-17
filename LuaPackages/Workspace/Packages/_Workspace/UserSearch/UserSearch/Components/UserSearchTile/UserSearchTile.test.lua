local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers
local createTreeWithProviders = SocialTestHelpers.createTreeWithProviders
local runWhileMounted = SocialTestHelpers.runWhileMounted
local findImageSet = SocialTestHelpers.findImageSet
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

			it("SHOULD call navigateToUserInfo on tile click " .. UserType, function()
				local navigateToUserInfoSpy = jest.fn()
				local UserTileComponent = createTreeWithProviders(UserSearchTileStories[UserType], {
					state = mockedUsersInfo.state,
					props = {
						luaAppNavigation = {
							navigateToUserInfo = navigateToUserInfoSpy,
						},
					},
				})

				runWhileMounted(UserTileComponent, function(parent)
					expect(#parent:GetChildren()).toBe(1)

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Thumbnail",
					})

					expect(PlayerAvatar).never.toBeNil()
					RhodiumHelpers.clickInstance(PlayerAvatar)
					expect(navigateToUserInfoSpy).toHaveBeenCalledTimes(1)
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
		runForAnyUserStory("previousUserName", "Feature.PlayerSearchResults.Label.Previously @searchKeyword")

		runForAnyUserStory("incomingFriendship", false)
		runForAnyUserStory("outgoingFriendship", false)
		runForAnyUserStory("random", false)
		runForAnyUserStory("notFriend", false)
		runForAnyUserStory("mutualFriends", "1 Feature.Friends.Label.SingularMutualFriend")
		runForAnyUserStory("frequents", "Feature.Friends.Label.Frequent")
	end)

	describe("Button", function()
		local runForAnyUserStory = function(UserType, buttonIcon, onActivated)
			it("SHOULD render correct button for " .. UserType, function()
				local luaAppNetworkingRequests = {
					acceptFriendRequest = jest.fn(),
					requestFriendship = jest.fn(),
				}

				local UserTileComponent = createTreeWithProviders(UserSearchTileStories[UserType], {
					state = mockedUsersInfo.state,
					props = {
						luaAppNetworkingRequests = luaAppNetworkingRequests,
					},
				})

				runWhileMounted(UserTileComponent, function(parent)
					expect(#parent:GetChildren()).toBe(1)

					local PlayerAvatar = RhodiumHelpers.findFirstInstance(parent, {
						Name = "Thumbnail",
					})
					expect(PlayerAvatar).never.toBeNil()

					local Button

					if buttonIcon then
						Button = RhodiumHelpers.findFirstInstance(parent, findImageSet(buttonIcon))
					end

					if buttonIcon then
						expect(Button).never.toBeNil()
						expect(Button).toBeInsideRightOf(PlayerAvatar)

						if onActivated then
							RhodiumHelpers.clickInstance(Button)
							expect(luaAppNetworkingRequests[onActivated]).toHaveBeenCalledTimes(1)
						end
					else
						expect(Button).toBeNil()
					end
				end)
			end)
		end

		local addFriendButtonIcon = "icons/actions/friends/friendAdd"
		local pendingButtonIcon = "icons/actions/friends/friendpending"

		runForAnyUserStory("yourself", nil, nil)
		runForAnyUserStory("friend", nil, nil)

		runForAnyUserStory("following", addFriendButtonIcon, "requestFriendship")
		runForAnyUserStory("incomingFriendship", addFriendButtonIcon, "acceptFriendRequest")
		runForAnyUserStory("outgoingFriendship", pendingButtonIcon, nil)
		runForAnyUserStory("random", addFriendButtonIcon, "requestFriendship")
		runForAnyUserStory("notFriend", addFriendButtonIcon, "requestFriendship")

		runForAnyUserStory("mutualFriends", addFriendButtonIcon, "requestFriendship")
		runForAnyUserStory("frequents", addFriendButtonIcon, "requestFriendship")
	end)
end)
