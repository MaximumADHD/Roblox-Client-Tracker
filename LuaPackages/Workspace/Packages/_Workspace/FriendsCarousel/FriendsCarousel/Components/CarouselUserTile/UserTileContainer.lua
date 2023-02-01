local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local llama = dependencies.llama

local mapStateToProps = require(script.Parent.userTileMapStateToProps)
local mapDispatchToProps = require(script.Parent.userTileMapDispatchToProps)
local CarouselUserTile = require(script.Parent.CarouselUserTile)
local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local TextKeys = require(FriendsCarousel.Common.TextKeys)
local compose = dependencies.SocialLibraries.RoduxTools.compose
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

local FriendshipOriginSourceType = dependencies.NetworkingFriendsEnums.FriendshipOriginSourceType
local getFFlagFixFriendshipOriginSourceType = dependencies.getFFlagFixFriendshipOriginSourceType
local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant

local UserTileContainer = Roact.PureComponent:extend("UserTileContainer")

export type Props = CarouselUserTile.Props
type InternalProps = Props & mapStateToProps.Props & mapDispatchToProps.Props & {
	fireEvent: (name: any, args: any?) -> (),
	userSeen: (user: LocalTypes.User, additionalData: { absolutePosition: number }) -> (),
}

function UserTileContainer:init()
	-- remove with getFFlagFriendsCarouselRemoveVariant
	self.sendFriendRequest = function(userId: string)
		local props: InternalProps = self.props
		props.fireEvent(EventNames.RequestFriendship, {
			absolutePosition = props.absoluteIndex,
			recommendationContextType = props.user.contextType,
			recommendationRank = props.user.rank,
			requestedId = props.user.id,
		})

		return props
			.sendFriendRequest({
				currentUserId = props.localUserId,
				targetUserId = userId,
				friendshipOriginSourceType = if getFFlagFixFriendshipOriginSourceType()
					then FriendshipOriginSourceType.FriendRecommendations.rawValue()
					else FriendshipOriginSourceType.FriendRecommendations,
			})
			:andThen(function()
				props.showToast(TextKeys.FriendRequestSentToast)
			end)
			:catch(function()
				props.showToast(TextKeys.SomethingIsWrongToast)
			end)
	end

	-- remove with getFFlagFriendsCarouselRemoveVariant
	self.unfriendUser = function(userId: string)
		local props: InternalProps = self.props
		props.fireEvent(EventNames.RevokeFriendRequest, {
			absolutePosition = props.absoluteIndex,
			recommendationContextType = props.user.contextType,
			recommendationRank = props.user.rank,
			requestedId = props.user.id,
		})

		return props
			.unfriendUser({
				targetUserId = userId,
				currentUserId = props.localUserId,
			})
			:andThen(function()
				props.showToast(TextKeys.FriendRequestCancelledToast)
			end)
			:catch(function()
				props.showToast(TextKeys.SomethingIsWrongToast)
			end)
	end
end

function UserTileContainer:render()
	local props: InternalProps = self.props
	return Roact.createElement(
		CarouselUserTile,
		llama.Dictionary.join(props, {
			sendFriendRequest = if getFFlagFriendsCarouselRemoveVariant() then nil else self.sendFriendRequest,
			unfriendUser = if getFFlagFriendsCarouselRemoveVariant() then nil else self.unfriendUser,
			fireEvent = llama.None,
			userSeen = llama.None,
		})
	)
end

function UserTileContainer:didMount()
	local props: InternalProps = self.props

	props.userSeen(props.user, {
		absolutePosition = props.absoluteIndex,
	})
end

return compose(
	RoactRodux.connect(mapStateToProps, mapDispatchToProps),
	Analytics.connect(function(analytics)
		return {
			fireEvent = analytics.fireEvent,
		}
	end)
)(UserTileContainer)
