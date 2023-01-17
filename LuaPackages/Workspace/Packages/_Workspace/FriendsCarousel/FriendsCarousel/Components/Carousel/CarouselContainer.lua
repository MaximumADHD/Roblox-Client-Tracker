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

local CIScreens = dependencies.SocialModalsCommon.EnumScreens

local llama = dependencies.llama
local AnalyticsService = dependencies.AnalyticsService
local Analytics = require(FriendsCarousel.Analytics)
local setupFireEvent = Analytics.setupFireEvent
local EventNames = Analytics.EventNames

local UserModel = dependencies.RoduxUsers.Models.User
local PresenceModel = dependencies.RoduxPresence.Models.Presence
local RecommendationModel = dependencies.RoduxFriends.Models.Recommendation
-- TODO cleanup ContactImporterOnFriendsCarousel remove this dependency
local AppStorageService = dependencies.AppStorageService
-- TODO cleanup ContactImporterOnFriendsCarousel remove this dependency
local ContactsProtocol = dependencies.ContactsProtocol
local UIVariants = require(FriendsCarousel.Common.UIVariants)

local getFFlagFriendsCarouselDontUseIngestService = dependencies.getFFlagFriendsCarouselDontUseIngestService
local getFFlagAutoSyncForContactImporterDisabled = dependencies.getFFlagAutoSyncForContactImporterDisabled
local getFFlagFriendsCarouselAddUniverseIdToEvents =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselAddUniverseIdToEvents)
local getFFlagContactImporterOnFriendsCarousel = dependencies.getFFlagContactImporterOnFriendsCarousel
local getFFlagProfilePeekViewRecommendationAnalytics = dependencies.getFFlagProfilePeekViewRecommendationAnalytics
local getFFlagFriendsCarouselFixNullAnalyticsFields =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselFixNullAnalyticsFields)

local CarouselContainer = Roact.PureComponent:extend("CarouselContainer")

type State = {
	seenUsers: { [string]: true },
	shouldShowContactImporterModal: boolean?,
}

type Props = {
	carousel: {
		render: () -> Instance,
		[string]: any?,
	},
	carouselProps: any,
	openProfilePeekView: (userId: string, extraProps: any?) -> (),
	openContextualMenu: (user: LocalTypes.User, additionalData: LocalTypes.ContextualMenuData) -> (),
	showToast: (toastMessage: string) -> (),
	analyticsService: any,
	navigation: any,
	shouldShowContactImporterFeature: boolean?,
	shouldShowContactImporterUpsellModal: boolean?,
	userId: string,
	friendsCarouselExperimentVariant: string,
	diagService: any,
	eventIngestService: any,
	eventStreamService: any,
	onSuccessfulRender: () -> ()?,
	navigateFromAddFriends: () -> (),
	-- TODO cleanup ContactImporterOnFriendsCarousel make not optional
	showContactImporter: boolean?,

	-- TODO cleanup ContactImporterOnFriendsCarousel remove these values
	getContactImporterParams: (userid: string) -> (),
	navigateDownToAddFriendsPage: () -> (),
	contactsProtocol: any,
	shouldShowContactImporterModal: boolean,
	closeModal: () -> (),

	isDiscoverabilityUnset: boolean?,

	sendContacts: (
		userid: string,
		contactsProtocol: any,
		appStorageService: any,
		shouldBypassSyncCheck: boolean?
	) -> (),
	openFindFriendsModal: (
		{
			closeModal: () -> (),
			navigateDownToAddFriendsPage: () -> (),
			openContactsList: (any) -> (),
			[string]: any?,
		}
	) -> (),
	openContactsList: (
		{
			screenSize: Vector2,
			closeModal: () -> (),
			sendContactFriendRequest: () -> (),
			distanceFromTop: number,
		}
	) -> (),
	contactImporterAndPYMKEnabled: boolean,
	openLearnMoreLink: () -> (),
	isContactImporterPolicyEnabled: boolean?,
	isLocalUserSoothsayer: boolean?,
}

type InternalProps = Props & mapStateToProps.Props & mapDispatchToProps.Props

CarouselContainer.validateProps = t.strictInterface({
	analyticsService = t.optional(t.any),
	carousel = t.interface({
		render = t.callback,
	}),
	carouselProps = t.table,
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
	closeModal = if getFFlagContactImporterOnFriendsCarousel() then nil else t.callback,
	sendContacts = t.optional(t.callback),
	fetchingStatus = t.string,
	openProfilePeekView = t.callback,
	openContextualMenu = t.callback,
	showToast = t.callback,
	navigation = t.table,
	friendsCarouselExperimentVariant = t.optional(t.string),
	isDiscoverabilityUnset = t.optional(t.boolean),
	onSuccessfulRender = t.optional(t.callback),
	diagService = t.table,
	eventIngestService = t.optional(t.table),
	eventStreamService = t.table,

	navigateFromAddFriends = if getFFlagContactImporterOnFriendsCarousel() then t.callback else nil,
	showContactImporter = t.optional(t.boolean),

	-- TODO cleanup ContactImporterOnFriendsCarousel remove these values
	openFindFriendsModal = if getFFlagContactImporterOnFriendsCarousel() then nil else t.callback,
	openContactsList = if getFFlagContactImporterOnFriendsCarousel() then nil else t.callback,
	navigateDownToAddFriendsPage = if getFFlagContactImporterOnFriendsCarousel() then nil else t.callback,
	contactImporterAndPYMKEnabled = if getFFlagContactImporterOnFriendsCarousel() then nil else t.optional(t.boolean),
	openLearnMoreLink = if getFFlagContactImporterOnFriendsCarousel() then nil else t.callback,
	isContactImporterPolicyEnabled = if getFFlagContactImporterOnFriendsCarousel() then nil else t.optional(t.boolean),
	getContactImporterParams = if getFFlagContactImporterOnFriendsCarousel() then nil else t.callback,
	shouldShowContactImporterFeature = if getFFlagContactImporterOnFriendsCarousel()
		then nil
		else t.optional(t.boolean),
	shouldShowContactImporterUpsellModal = if getFFlagContactImporterOnFriendsCarousel()
		then nil
		else t.optional(t.boolean),
	isLocalUserSoothsayer = if getFFlagContactImporterOnFriendsCarousel() then nil else t.optional(t.boolean),
	contactsProtocol = if getFFlagContactImporterOnFriendsCarousel() then nil else t.optional(t.table),
	shouldShowContactImporterModal = if getFFlagContactImporterOnFriendsCarousel() then nil else t.boolean,
})

CarouselContainer.defaultProps = {
	analyticsService = AnalyticsService,
	contactsProtocol = if getFFlagContactImporterOnFriendsCarousel() then nil else ContactsProtocol.default,
	shouldShowContactImporterModal = if getFFlagContactImporterOnFriendsCarousel() then nil else false,
	friendsCarouselExperimentVariant = UIVariants.CIRCULAR_TILES,
}

function CarouselContainer:init()
	local props: InternalProps = self.props
	self.state = {
		seenUsers = {},
		syncedContacts = if not getFFlagAutoSyncForContactImporterDisabled() then false else nil,
		shouldShowContactImporterModal = props.shouldShowContactImporterModal,
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

		if getFFlagContactImporterOnFriendsCarousel() then
			props.navigateFromAddFriends()

			self.fireAnalyticsEvent(EventNames.ViewAddFriends, {
				friendCount = props.friendCount,
				recommendationLimit = true,
				recommendationCount = props.recommendationCount,
				requestCount = props.friendRequestCount,
				showContactImporterModal = if props.showContactImporter then true else false,
			})
		else
			local state: State = self.state

			local showContactImporter = props.shouldShowContactImporterFeature
				and props.shouldShowContactImporterUpsellModal

			self.fireAnalyticsEvent(EventNames.ViewAddFriends, {
				friendCount = props.friendCount,
				recommendationLimit = true,
				recommendationCount = props.recommendationCount,
				requestCount = props.friendRequestCount,
				showContactImporterModal = if showContactImporter then true else false,
			})

			if state.shouldShowContactImporterModal then
				props.navigation.navigate(CIScreens.ContactImporter, {
					showToast = props.showToast,
					openLearnMoreLink = props.openLearnMoreLink,
					isFromAddFriendsPage = false,
					closeModal = props.navigation.pop,
					diagService = props.diagService,
					eventIngestService = props.eventIngestService,
					isDiscoverabilityUnset = props.isDiscoverabilityUnset,
				})
			else
				props.navigateDownToAddFriendsPage()
			end
		end
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
				source = if getFFlagProfilePeekViewRecommendationAnalytics()
					then Constants.HomepageFriendsCarouselSourceName
					else nil,
				recommendationRank = if getFFlagProfilePeekViewRecommendationAnalytics() then user.rank else nil,
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
			},
		})
	end
end

function CarouselContainer:didMount()
	if not getFFlagContactImporterOnFriendsCarousel() then
		local props: InternalProps = self.props

		if props.contactImporterAndPYMKEnabled and props.isContactImporterPolicyEnabled then
			props.getContactImporterParams(props.localUserId)
		end
	end

	if getFFlagFriendsCarouselFixNullAnalyticsFields() then
		local props: InternalProps = self.props
		self.fireAnalyticsEvent = setupFireEvent({
			infoForAllEvents = {
				uid = props.localUserId,
				recommendationSessionId = props.recommendationSessionId,
			},
			analytics = self.analyticsService,
		})
	end
end

function CarouselContainer:didUpdate(previousProps, _)
	local props: InternalProps = self.props

	if not getFFlagContactImporterOnFriendsCarousel() then
		if props.contactImporterAndPYMKEnabled and props.isContactImporterPolicyEnabled then
			local hasChanged = previousProps.contactImporterAndPYMKEnabled ~= props.contactImporterAndPYMKEnabled
				or previousProps.isContactImporterPolicyEnabled ~= props.isContactImporterPolicyEnabled
			if hasChanged then
				props.getContactImporterParams(props.localUserId)
			end
			-- check if user has already opted into contact importer
			local hasOptedIntoContactImporter = props.shouldShowContactImporterFeature
				and not props.shouldShowContactImporterUpsellModal
			if
				not getFFlagAutoSyncForContactImporterDisabled()
				and hasOptedIntoContactImporter
				and not self.state.syncedContacts
			then
				props.sendContacts(props.localUserId, self.props.contactsProtocol, AppStorageService, false)
				self:setState({
					syncedContacts = true,
				})
			end
			self:setState({
				shouldShowContactImporterModal = props.contactImporterAndPYMKEnabled
					and props.shouldShowContactImporterFeature
					and props.shouldShowContactImporterUpsellModal,
			})
		end
	end

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
	local state: State = self.state

	return Roact.createElement(Analytics.Context.Provider, {
		value = {
			fireEvent = self.fireAnalyticsEvent,
		},
	}, {
		Roact.createElement(Carousel, {
			carousel = props.carousel,
			carouselProps = props.carouselProps,

			friendsAndRecList = props.friendsAndRecList,
			friendCount = props.friendCount,
			friendRequestCount = props.friendRequestCount,

			fetchingStatus = props.fetchingStatus,

			userSeen = self.userSeen,
			onFindFriendsTileActivated = self.onFindFriendsTileActivated,
			onUserTileActivated = self.onUserTileActivated,

			showToast = props.showToast,
			shouldShowContactImporterModal = if getFFlagContactImporterOnFriendsCarousel()
				then nil
				else state.shouldShowContactImporterModal,
			isContactImporterEnabled = if getFFlagContactImporterOnFriendsCarousel()
				then nil
				else props.contactImporterAndPYMKEnabled and props.isContactImporterPolicyEnabled,
			friendsCarouselExperimentVariant = props.friendsCarouselExperimentVariant,

			onSuccessfulRender = props.onSuccessfulRender,
		}),
	})
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CarouselContainer)
