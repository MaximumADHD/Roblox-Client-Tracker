local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local CarouselUserTile = require(FriendsCarousel.Components.CarouselUserTile.CarouselUserTile)
local users = require(FriendsCarousel.TestHelpers.mockedUsers)
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant

local DEFAULT_PROPS = {
	absoluteIndex = 0,
	layoutOrder = 0,
	localUserId = "0",
	setPeopleListFrozen = function() end,
	onActivated = function() end,
	sendFriendRequest = function() end,
	unfriendUser = function() end,
	showToast = function() end,
}

local setupStory = function(user)
	return function(storyProps: any)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 150, 0, 150),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement(
				CarouselUserTile,
				llama.Dictionary.join(DEFAULT_PROPS, storyProps or {}, {
					user = user,
					friendsCarouselExperimentVariant = if getFFlagFriendsCarouselRemoveVariant()
						then nil
						else UIVariants.CIRCULAR_TILES,
					tileSize = 100,
					tileInfoHeight = 50,
				})
			),
		})
	end
end

local stories = {
	friendOnline = setupStory(users.friendOnline),
	friendOffline = setupStory(users.friendOffline),
	friendInGame = setupStory(users.friendInGame),
	friendInGameWithoutLocation = setupStory(users.friendInGameWithoutLocation),
	friendInStudio = setupStory(users.friendInStudio),
	requestPending = setupStory(users.requestPending),
	recommendationMutual = setupStory(users.recommendationMutual),
	recommendationMutualSingle = setupStory(users.recommendationMutualSingle),
	recommendationMutualNone = setupStory(users.recommendationMutualNone),
	recommendationFrequent = setupStory(users.recommendationFrequent),
	recommendationNone = setupStory(users.recommendationNone),
	recommendationIncomingFriendRequest = setupStory(users.recommendationIncomingFriendRequest),
}

return {
	controls = {},
	stories = stories,
}
