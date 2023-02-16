local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local t = dependencies.t

local Carousel = require(script.Parent.Carousel)
local mapStateToProps = require(script.Parent.carouselMapStateToProps)
local mapDispatchToProps = require(script.Parent.carouselMapDispatchToProps)
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)
local Constants = require(FriendsCarousel.Common.Constants)

local llama = dependencies.llama
local AnalyticsService = dependencies.AnalyticsService
local Analytics = require(FriendsCarousel.Analytics)
local setupFireEvent = Analytics.setupFireEvent
local EventNames = Analytics.EventNames

local UserModel = dependencies.RoduxUsers.Models.User
local PresenceModel = dependencies.RoduxPresence.Models.Presence
local RecommendationModel = dependencies.RoduxFriends.Models.Recommendation
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local getFFlagFriendsCarouselDontUseIngestService = dependencies.getFFlagFriendsCarouselDontUseIngestService
local getFFlagFriendsCarouselAddUniverseIdToEvents =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddUniverseIdToEvents)
local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant
local getFFlagSocialAddGameJoinSource = dependencies.getFFlagSocialAddGameJoinSource
local getFFlagFriendsCarouselPassCIBadge = require(FriendsCarousel.Flags.getFFlagFriendsCarouselPassCIBadge)

local CarouselContainer = Roact.PureComponent:extend("CarouselContainer")

type State = {
	seenUsers: { [string]: true },
}

type Props = {
	carousel: {
		render: () -> Instance,
		[string]: any?,
	},
	carouselProps: any,
	onSuccessfulRender: () -> ()?,

	--* Wrapper
	openProfilePeekView: (userId: string, extraProps: any?) -> (),
	openContextualMenu: (user: LocalTypes.User, additionalData: LocalTypes.ContextualMenuData) -> (),
	showToast: (toastMessage: string) -> (),

	-- remove with getFFlagFriendsCarouselRemoveVariant
	friendsCarouselExperimentVariant: string?,

	showContactImporter: boolean?,
	navigateFromAddFriends: () -> (),

	navigation: any,
	analyticsService: any,
	diagService: any,
	eventIngestService: any,
	eventStreamService: any,
}

type InternalProps = Props & mapStateToProps.Props & mapDispatchToProps.Props

CarouselContainer.validateProps = t.strictInterface({
	carousel = t.interface({
		render = t.callback,
	}),
	carouselProps = t.table,
	onSuccessfulRender = t.optional(t.callback),

	--* map state
	localUserId = t.string,
	friendsAndRecList = t.array(
		t.union(
			RecommendationModel.isValid,
			PresenceModel.isValid,
			UserModel.isValid,
			t.interface({
				isLoading = t.boolean,
			})
		)
	),
	friendCount = t.number,
	recommendationCount = t.number,
	friendRequestCount = t.number,
	fetchingStatus = t.string,

	--* Wrapper
	friendsCarouselExperimentVariant = if getFFlagFriendsCarouselRemoveVariant() then nil else t.optional(t.string),
	openProfilePeekView = t.callback,
	openContextualMenu = t.callback,
	showToast = t.callback,
	showContactImporter = t.optional(t.boolean),
	navigateFromAddFriends = t.callback,

	navigation = t.table,
	diagService = t.table,
	eventIngestService = t.optional(t.table),
	eventStreamService = t.table,

	--* default prop
	analyticsService = t.optional(t.any),
})

CarouselContainer.defaultProps = {
	analyticsService = AnalyticsService,
	friendsCarouselExperimentVariant = if getFFlagFriendsCarouselRemoveVariant()
		then nil
		else UIVariants.CIRCULAR_TILES,
}

function CarouselContainer:init()
	self.state = {
		seenUsers = {},
	} :: State

	self.analyticsService = {
		Diag = self.props.diagService,
		EventStream = if getFFlagFriendsCarouselDontUseIngestService()
			then self.props.eventStreamService
			else self.props.eventIngestService,
	}

	self.fireAnalyticsEvent = setupFireEvent({
		infoForAllEvents = {
			uid = self.props.localUserId,
			recommendationSessionId = self.props.recommendationSessionId,
		},
		analytics = self.analyticsService,
	})

	--TODO https://jira.rbx.com/browse/SOCCONN-1566 tests for seeing and unseeing a user
	self.userSeen = function(user: LocalTypes.User, additionalData: LocalTypes.ContextualMenuData)
		local state: State = self.state

		if not state.seenUsers[user.id] then
			self.fireAnalyticsEvent(EventNames.UserSeen, {
				presence = user.userPresenceType,
				absolutePosition = additionalData.absolutePosition,
				friendId = user.id,
				friendStatus = user,
				recommendationContextType = user.contextType,
				recommendationRank = user.rank,
				isRecommendation = if user.contextType then true else false,
				userId = user.id,
				universeId = if getFFlagFriendsCarouselAddUniverseIdToEvents() then user else nil,
			})

			self:setState(function(state: State)
				return {
					seenUsers = llama.Dictionary.join(state.seenUsers, { [user.id] = true }),
				}
			end)
		end
	end

	self.onFindFriendsTileActivated = function()
		local props: InternalProps = self.props

		props.navigateFromAddFriends()

		self.fireAnalyticsEvent(EventNames.ViewAddFriends, {
			friendCount = props.friendCount,
			recommendationLimit = true,
			recommendationCount = props.recommendationCount,
			requestCount = props.friendRequestCount,
			showContactImporterModal = if props.showContactImporter then true else false,
		})
	end

	self.onUserTileActivated = function(user: LocalTypes.User, additionalData: LocalTypes.ContextualMenuData)
		local props: InternalProps = self.props

		self.fireAnalyticsEvent(EventNames.UserPressed, {
			absolutePosition = additionalData.absolutePosition,
			friendId = user.id,
			friendStatus = user,
			recommendationContextType = user.contextType,
			recommendationRank = user.rank,
			isRecommendation = if user.contextType then true else false,
			universeId = if getFFlagFriendsCarouselAddUniverseIdToEvents() then user else nil,
		})

		props.openProfilePeekView(user.id, {
			openJoinable = true,
			profilePeekViewProps = {
				resetPeekView = true,
				absolutePosition = additionalData.absolutePosition,
				isHomePageCarousel = true,
				source = Constants.HomepageFriendsCarouselSourceName,
				recommendationRank = user.rank,
				recommendationContextType = if user.contextType then user.contextType.rawValue() else nil,
				isRecommendation = if user.contextType then true else false,
				mutualFriendsCount = user.mutualFriendsList and #user.mutualFriendsList or 0,
				recommendationSessionId = props.recommendationSessionId,
			},
			contextualMenuProps = {
				user = user,
				absolutePosition = additionalData.absolutePosition,
				positionIndex = additionalData.positionIndex,
				anchorSpaceSize = additionalData.anchorSpaceSize,
				anchorSpacePosition = additionalData.anchorSpacePosition,
				onOpen = additionalData.onOpen,
				onClose = additionalData.onClose,
				source = if getFFlagSocialAddGameJoinSource() then Constants.HomepageFriendsCarouselSourceName else nil,
			},
		})
	end
end

function CarouselContainer:didMount()
	local props: InternalProps = self.props
	self.fireAnalyticsEvent = setupFireEvent({
		infoForAllEvents = {
			uid = props.localUserId,
			recommendationSessionId = props.recommendationSessionId,
		},
		analytics = self.analyticsService,
	})
end

function CarouselContainer:didUpdate(previousProps, _)
	local props: InternalProps = self.props

	if previousProps.recommendationSessionId ~= props.recommendationSessionId then
		self.fireAnalyticsEvent = setupFireEvent({
			infoForAllEvents = {
				uid = props.localUserId,
				recommendationSessionId = props.recommendationSessionId,
			},
			analytics = self.analyticsService,
		})
	end
end

function CarouselContainer:render()
	local props: InternalProps = self.props

	return Roact.createElement(Analytics.Context.Provider, {
		value = {
			fireEvent = self.fireAnalyticsEvent,
		},
	}, {
		Roact.createElement(Carousel, {
			carousel = props.carousel,
			carouselProps = props.carouselProps,
			friendsCarouselExperimentVariant = if getFFlagFriendsCarouselRemoveVariant()
				then nil
				else props.friendsCarouselExperimentVariant,
			showToast = props.showToast,
			onSuccessfulRender = props.onSuccessfulRender,

			friendsAndRecList = props.friendsAndRecList,
			friendCount = props.friendCount,
			friendRequestCount = props.friendRequestCount,
			fetchingStatus = props.fetchingStatus,

			userSeen = self.userSeen,
			onFindFriendsTileActivated = self.onFindFriendsTileActivated,
			onUserTileActivated = self.onUserTileActivated,

			--* add experiment check here
			showNewBadge = if getFFlagFriendsCarouselPassCIBadge() then props.showContactImporter else nil,
		}),
	})
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CarouselContainer)
