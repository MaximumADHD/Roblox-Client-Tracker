--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Packages = FriendsLanding.Parent
local AppStorageService = game:GetService("AppStorageService")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local Promise = dependencies.Promise
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local RoactAppExperiment = dependencies.RoactAppExperiment
local UIBlox = dependencies.UIBlox
local FormFactor = dependencies.FormFactor
local compose = SocialLibraries.RoduxTools.compose
local Images = UIBlox.App.ImageSet.Images
local EnumScreens = require(FriendsLanding.EnumScreens)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local AddFriendsPage = require(script.Parent.AddFriendsPage)
local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local FriendsSourceType = require(AddFriends.Enums.FriendsSourceType)
local mapStateToProps = require(script.mapStateToProps)
local mapDispatchToProps = require(script.mapDispatchToProps)
local AddFriendsPageLoadAnalytics = FriendsLandingAnalytics.AddFriendsPageLoadAnalytics
local AddFriendsSearchbarPressedEvent = FriendsLandingAnalytics.AddFriendsSearchbarPressedEvent
local PlayerSearchEvent = FriendsLandingAnalytics.PlayerSearchEvent
local getFFlagShowContactImporterTooltipOnce = require(FriendsLanding.Flags.getFFlagShowContactImporterTooltipOnce)
local ImpressionEvents = require(FriendsLanding.FriendsLandingAnalytics.ImpressionEvents)
local contactImporterTooltip = require(FriendsLanding.Utils.contactImporterTooltip)
local getShowNewAddFriendsPageVariant = require(FriendsLanding.Utils.getShowNewAddFriendsPageVariant)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Contexts = SocialLuaAnalytics.Analytics.Enums.Contexts
local ProfileQRCodeExperiments = require(Packages.ProfileQRCode).Experiments

local getFFlagProfileQRCodeEnable3DAvatarExperiment =
	ProfileQRCodeExperiments.getFFlagProfileQRCodeEnable3DAvatarExperiment
local getFStringSocialAddFriendsPageLayer = dependencies.getFStringSocialAddFriendsPageLayer
local getFStringSocialFriendsLayer = dependencies.getFStringSocialFriendsLayer
local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled
local getFFlagAddFriendsQRCodeAnalytics = dependencies.getFFlagAddFriendsQRCodeAnalytics

local GET_FRIEND_REQUESTS_LIMIT_PER_PAGE = 25
local GET_FRIEND_REQUESTS_LIMIT_PER_PAGE_WIDE = 50
local SHOW_MORE_VISIBLE_ROWS = 6

local AddFriendsContainer = Roact.PureComponent:extend("AddFriendsContainer")

function AddFriendsContainer:init()
	self.state = {
		visibleRows = SHOW_MORE_VISIBLE_ROWS,
	}

	-- tablets will display 6 to 8 tiles per row, with 6 more
	-- rows each time, increase of tiles would be 36 to 48,
	-- so use 50 as limit per page in requests
	self.getLimitPerPage = function()
		return self.props.wideMode and GET_FRIEND_REQUESTS_LIMIT_PER_PAGE_WIDE or GET_FRIEND_REQUESTS_LIMIT_PER_PAGE
	end

	self.showToast = function(toastContent)
		if not toastContent then
			return
		end

		self.props.navigation.navigate(EnumScreens.GenericToast, {
			toastProps = {
				toastContent = toastContent,
			},
		})
	end

	local withToast = function(requestPromise, succContent)
		return function(...)
			return requestPromise(...)
				:andThen(function()
					self.showToast(succContent)
				end)
				:catch(function()
					self.showToast({ toastTitle = self.props.localized.networkErrorText })
				end)
		end
	end

	self.refreshPage = withToast(function()
		return Promise.all({
			self.props.getFriendRequestsCount(self.props.localUserId),
			self.props
				.getFriendRequests({
					isRefresh = true,
					localUserId = self.props.localUserId,
					limit = self.getLimitPerPage(),
				})
				:andThen(function(results)
					self:setState({
						visibleRows = SHOW_MORE_VISIBLE_ROWS,
					})
					self.props.analytics:pageLoadedWithArgs("friendRequestsPage", AddFriendsPageLoadAnalytics(results))
				end),
		})
	end)

	self.contactImporterWarningSeen = function()
		if getFFlagShowContactImporterTooltipOnce() then
			contactImporterTooltip.updateKey(AppStorageService, true)
		else
			self.props.contactImporterWarningSeen()
		end
	end

	self.handleAcceptFriendRequest = withToast(function(_, playerId)
		self.contactImporterWarningSeen()

		return self.props
			.acceptFriendRequest({
				currentUserId = self.props.localUserId,
				targetUserId = playerId,
			})
			:andThen(function()
				self.props.getFriendRequestsCount(self.props.localUserId)
			end)
	end, { toastTitle = self.props.localized.friendAddedText, iconImage = Images["icons/actions/friends/friendAdd"] })

	self.handleDeclineFriendRequest = withToast(function(_, playerId)
		self.contactImporterWarningSeen()

		return self.props
			.declineFriendRequest({
				currentUserId = self.props.localUserId,
				targetUserId = playerId,
			})
			:andThen(function()
				self.props.getFriendRequestsCount(self.props.localUserId)
			end)
	end, {
		toastTitle = self.props.localized.requestIgnoredText,
		iconImage = Images["icons/actions/reject"],
	})

	self.handleIgnoreAllFriendsRequests = withToast(function()
		self.contactImporterWarningSeen()

		self.props.analytics:buttonClick(ButtonClickEvents.IgnoreAllButton, {
			contextOverride = "friendRequestsPage",
		})
		return self.props
			.ignoreAllFriendsRequests({
				currentUserId = self.props.localUserId,
			})
			:andThen(function()
				self.props.getFriendRequestsCount(self.props.localUserId)
			end)
	end, {
		toastTitle = self.props.localized.allRequestsIgnoredText,
		iconImage = Images["icons/actions/reject"],
	})

	self.handleRequestFriendship = withToast(function(_, playerId, sourceType)
		self.contactImporterWarningSeen()

		return self.props.requestFriendship({
			currentUserId = self.props.localUserId,
			targetUserId = playerId,
			friendshipOriginSourceType = sourceType,
		})
	end)

	self.getNextVisibleRows = function(prevState, props, friendsPerRow)
		self.contactImporterWarningSeen()

		local friendRequests = props.friendRequests
		local receivedCount = props.receivedCount
		local prevVisibleRows = prevState.visibleRows
		local loadedCount = #friendRequests

		local tryToShowMoreCount = friendsPerRow * (prevVisibleRows + SHOW_MORE_VISIBLE_ROWS)
		local toShowMoreCount = math.min(receivedCount, tryToShowMoreCount)
		local nextVisibleRows = math.ceil(toShowMoreCount / friendsPerRow)

		if loadedCount >= toShowMoreCount then
			return {
				visibleRows = nextVisibleRows,
			}
		end
		return nil
	end

	self.handleGetFriendRequests = withToast(function(nextPageCursor, friendsPerRow)
		return self.props
			.getFriendRequests({
				limit = self.getLimitPerPage(),
				cursor = nextPageCursor,
			})
			:andThen(function()
				self:setState(function(prevState, props)
					-- on DUAR with extreme wide screen, though there is still
					-- not enough data, it's better to show all existed data
					local nextState = self.getNextVisibleRows(prevState, props, friendsPerRow)
					return nextState or {
						visibleRows = math.ceil(#props.friendRequests / friendsPerRow),
					}
				end)
			end, function()
				self:setState(function(_, props)
					return {
						visibleRows = math.ceil(#props.friendRequests / friendsPerRow),
					}
				end)
			end)
	end)

	self.handleLoadMoreRequests = function(friendsPerRow)
		self.contactImporterWarningSeen()

		self:setState(function(prevState, props)
			local nextState = self.getNextVisibleRows(prevState, props, friendsPerRow)
			if nextState then
				return nextState
			end

			if props.nextPageCursor then
				self.handleGetFriendRequests(props.nextPageCursor, friendsPerRow)
			end
			return nil
		end)
	end

	self.handleNavigateDownToViewUserProfile = function(userId)
		self.contactImporterWarningSeen()

		local navigateToLuaAppPages = self.props.navigateToLuaAppPages
		if navigateToLuaAppPages and navigateToLuaAppPages[EnumScreens.ViewUserProfile] then
			self.props.analytics:buttonClick(ButtonClickEvents.PlayerProfile, {
				contextOverride = "friendRequestsPage",
				subPage = "peekView",
				page = "playerProfile",
			})
			self.props.analytics:navigate("ViewUserProfileAddFriends")
			navigateToLuaAppPages[EnumScreens.ViewUserProfile](userId, {})
		end
	end

	self.handleOpenLearnMore = function()
		self.contactImporterWarningSeen()

		local navigateToLuaAppPages = self.props.navigateToLuaAppPages
		if navigateToLuaAppPages then
			navigateToLuaAppPages[EnumScreens.LearnMore]()
		end
	end

	self.handleOpenPhoneVerificationLinkWebview = function(extraProps)
		local navigateToLuaAppPages = self.props.navigateToLuaAppPages
		if navigateToLuaAppPages then
			navigateToLuaAppPages[EnumScreens.PhoneVerification](extraProps)
		end
	end

	self.fireContactImporterAnalyticsEvents = function()
		self.props.analytics:navigate("ConnectWithFriends")
		self.props.analytics:buttonClick(ButtonClickEvents.ConnectWithFriends, {
			contextOverride = Contexts.AddFriends.rawValue(),
		})
	end

	self.fireContactImporterSeenEvent = function()
		self.props.analytics:impressionEvent(ImpressionEvents.ContactImporterBannerSeen)
	end

	self.fireSearchbarPressedEvent = function()
		AddFriendsSearchbarPressedEvent(
			self.props.analytics,
			{ formFactor = self.props.wideMode and FormFactor.WIDE or FormFactor.COMPACT }
		)
		PlayerSearchEvent(self.props.analytics, "open", { currentRoute = EnumScreens.AddFriends })
	end

	if getFFlagAddFriendsQRCodeAnalytics() then
		self.fireProfileQRCodeBannerSeenEvent = function()
			self.props.analytics:impressionEvent(ImpressionEvents.ProfileQRCodeBannerSeen)
		end

		self.fireProfileQRCodeBannerPressedEvent = function()
			self.props.analytics:navigate("ProfileQRCodePage")
			self.props.analytics:buttonClick(ButtonClickEvents.ProfileQRCode, {
				contextOverride = Contexts.AddFriends.rawValue(),
			})
		end
	end
end

function AddFriendsContainer:didMount()
	self.refreshPage()
end

function AddFriendsContainer:render()
	local contactImporterAndPYMKEnabled = self.props.contactImporterAndPYMKEnabled
	local addFriendsPageSearchbarEnabled = self.props.addFriendsPageSearchbarEnabled
	local showNewAddFriendsPageVariant = if getFFlagSocialOnboardingExperimentEnabled()
		then self.props.showNewAddFriendsPageVariant
		else nil
	return Roact.createElement(AddFriendsPage, {
		navigateToLuaAppPages = if getFFlagProfileQRCodeEnable3DAvatarExperiment()
			then self.props.navigateToLuaAppPages
			else nil,
		screenSize = self.props.screenSize,
		friendRecommendations = self.props.friendRecommendations,
		friendRequests = self.props.friendRequests,
		friendRequestsCount = self.props.receivedCount,
		contactImporterWarningSeen = self.contactImporterWarningSeen,
		-- value of "sourceType" will be from other data source based
		-- on what 3rd party login type Roblox will use in the future.
		sourceType = FriendsSourceType.QQ,
		visibleRows = self.state.visibleRows,
		amIFollowingUser = self.props.amIFollowingUser,
		isUserFollowingMe = self.props.isUserFollowingMe,
		getFriendshipRequestSentFromExperience = self.props.getFriendshipRequestSentFromExperience,
		handleAcceptFriendRequest = self.handleAcceptFriendRequest,
		handleDeclineFriendRequest = self.handleDeclineFriendRequest,
		handleIgnoreAllFriendsRequests = self.handleIgnoreAllFriendsRequests,
		handleRequestFriendship = self.handleRequestFriendship,
		handleLoadMoreRequests = self.handleLoadMoreRequests,
		refreshPage = self.refreshPage,
		handleNavigateDownToViewUserProfile = self.handleNavigateDownToViewUserProfile,
		handleOpenLearnMoreLink = if contactImporterAndPYMKEnabled then self.handleOpenLearnMore else nil,
		navigation = self.props.navigation,
		contactImporterAndPYMKEnabled = contactImporterAndPYMKEnabled,
		localUserId = if contactImporterAndPYMKEnabled then self.props.localUserId else nil,
		shouldShowContactImporterFeature = if contactImporterAndPYMKEnabled
			then self.props.shouldShowContactImporterFeature
			else nil,
		fireContactImporterAnalyticsEvents = self.fireContactImporterAnalyticsEvents,
		fireContactImporterSeenEvent = self.fireContactImporterSeenEvent,
		shouldShowContactImporterUpsellModal = if contactImporterAndPYMKEnabled
			then self.props.shouldShowContactImporterUpsellModal
			else nil,
		isPhoneVerified = if contactImporterAndPYMKEnabled then self.props.isPhoneVerified else nil,
		hasOSPermissions = if contactImporterAndPYMKEnabled then self.props.hasOSPermissions else nil,
		canUploadContacts = if contactImporterAndPYMKEnabled then self.props.canUploadContacts else nil,
		isDiscoverabilityUnset = self.props.isDiscoverabilityUnset,
		getUserSettingsMetadata = self.props.getUserSettingsMetadata,
		showTooltip = self.props.showTooltip,
		wideMode = self.props.wideMode,
		setScreenTopBar = self.props.setScreenTopBar,
		addFriendsPageSearchbarEnabled = addFriendsPageSearchbarEnabled,
		fireSearchbarPressedEvent = self.fireSearchbarPressedEvent,
		openProfilePeekView = self.props.openProfilePeekView,
		showNewAddFriendsPageVariant = if getFFlagSocialOnboardingExperimentEnabled()
			then showNewAddFriendsPageVariant
			else nil,
		fireProfileQRCodeBannerSeenEvent = if getFFlagAddFriendsQRCodeAnalytics()
			then self.fireProfileQRCodeBannerSeenEvent
			else nil,
		fireProfileQRCodeBannerPressedEvent = if getFFlagAddFriendsQRCodeAnalytics()
			then self.fireProfileQRCodeBannerPressedEvent
			else nil,
	})
end

function AddFriendsContainer:willUnmount()
	self.props.getFriendRequestsCount(self.props.localUserId)
end

AddFriendsContainer = compose(
	RoactRodux.connect(mapStateToProps, mapDispatchToProps),
	FriendsLandingAnalytics.connect(function(analytics)
		return {
			analytics = analytics,
		}
	end),
	FriendsLandingContext.connect(function(context)
		return {
			wideMode = context.wideMode,
			setScreenTopBar = context.setScreenTopBar,
		}
	end),
	-- This is the main exposure event for the Social.AddFriendsPage layer
	RoactAppExperiment.connectUserLayer({
		getFStringSocialAddFriendsPageLayer(),
	}, function(layerVariables, props)
		local socialAddFriendsPageLayer: any = layerVariables[getFStringSocialAddFriendsPageLayer()] or {}
		return {
			addFriendsPageSearchbarEnabled = socialAddFriendsPageLayer.show_add_friends_page_search_bar,
		}
	end)
)(AddFriendsContainer)

if getFFlagSocialOnboardingExperimentEnabled() then
	AddFriendsContainer = compose(RoactAppExperiment.connectUserLayer({
		getFStringSocialFriendsLayer(),
	}, function(layerVariables, props)
		local socialFriendsLayer = layerVariables[getFStringSocialFriendsLayer()] or {}
		local showNewAddFriendsPageVariant = getShowNewAddFriendsPageVariant(socialFriendsLayer)
		return {
			showNewAddFriendsPageVariant = showNewAddFriendsPageVariant,
		}
	end))(AddFriendsContainer)
end

return AddFriendsContainer
