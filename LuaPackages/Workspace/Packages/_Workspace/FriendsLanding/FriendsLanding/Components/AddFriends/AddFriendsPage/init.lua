--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local t = dependencies.t
local Dash = dependencies.Dash
local UIBlox = dependencies.UIBlox
local GridMetrics = UIBlox.App.Grid.GridMetrics
local getPageMargin = UIBlox.App.Container.getPageMargin
local Images = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Style.withStyle
local ImageSetButton = UIBlox.Core.ImageSet.Button
local withLocalization = dependencies.withLocalization
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue
local EnumScreens = require(FriendsLanding.EnumScreens)
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local RefreshScrollingFrame = dependencies.SocialLibraries.Components.RefreshScrollingFrame
local ShowMoreWrapper = require(FriendsLanding.Components.ShowMoreWrapper)
local FriendsSourceType = require(AddFriends.Enums.FriendsSourceType)
local AddFriendsTile = require(script.Parent.AddFriendsTile)
local AddFriendsContactImporterBanner = require(script.Parent.AddFriendsContactImporterBanner)
local SearchHeaderBar = require(FriendsLanding.Components.FriendsLandingHeaderBar.SearchHeaderBar)

local Packages = FriendsLanding.Parent
local ContactImporter = require(Packages.ContactImporter)
local TextKeys = ContactImporter.TextKeys

local getFFlagAddFriendsRecommendationsEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsRecommendationsEnabled)
local getFFlagUpdateContactImportModalLogic = require(FriendsLanding.Flags.getFFlagUpdateContactImportModalLogic)
local getFFlagContactImporterUseNewTooltip = require(FriendsLanding.Flags.getFFlagContactImporterUseNewTooltip)
local getFFlagContactImporterWithPhoneVerification = dependencies.getFFlagContactImporterWithPhoneVerification
local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled
local getFFlagAddFriendsFullSearchbarAnalytics = dependencies.getFFlagAddFriendsFullSearchbarAnalytics
local getFFlagEnableContactInvitesForNonPhoneVerified = dependencies.getFFlagEnableContactInvitesForNonPhoneVerified

local AddFriendsContentFrame = require(script.Parent.AddFriendsContentFrame)

local AddFriendsPage = Roact.PureComponent:extend("AddFriendsPage")

local NEW_NAV_BAR_SIZE = 56
local PLAYER_TILE_MARGIN = 12
local CONTACT_IMPORTER_ORIGIN = "PhoneContactImporter"

local noOpt = function() end

AddFriendsPage.validateProps = t.strictInterface({
	sourceType = t.valueOf(FriendsSourceType),
	friendRecommendations = t.table,
	friendRequests = t.table,
	friendRequestsCount = t.integer,
	screenSize = t.Vector2,
	refreshPage = t.callback,
	visibleRows = t.integer,
	amIFollowingUser = t.callback,
	isUserFollowingMe = t.callback,
	getFriendshipRequestSentFromExperience = t.callback,
	handleNavigateDownToViewUserProfile = t.optional(t.callback),
	handleOpenLearnMoreLink = t.optional(Dash.isCallable),
	handleOpenPhoneVerificationLinkWebview = t.optional(Dash.isCallable),
	handleAcceptFriendRequest = t.optional(t.callback),
	handleDeclineFriendRequest = t.optional(t.callback),
	handleRequestFriendship = t.optional(t.callback),
	handleIgnoreAllFriendsRequests = t.optional(t.callback),
	handleLoadMoreRequests = t.optional(t.callback),
	contactImporterAndPYMKEnabled = t.optional(t.boolean),
	contactImporterExperimentVariant = t.optional(t.string),
	navigation = t.optional(t.table),
	localUserId = t.optional(t.string),
	shouldShowContactImporterFeature = t.optional(t.boolean),
	shouldShowContactImporterUpsellModal = t.optional(t.boolean),
	fireContactImporterAnalyticsEvents = t.callback,
	fireContactImporterSeenEvent = t.callback,
	contactImporterWarningSeen = t.optional(t.callback),
	isPhoneVerified = t.optional(t.boolean),
	isDiscoverabilityUnset = t.optional(t.boolean),
	getUserSettingsMetadata = t.optional(t.callback),
	handleShowToastForTests = t.optional(Dash.isCallable),
	showTooltip = t.optional(t.boolean),
	wideMode = if getFFlagAddFriendsSearchbarIXPEnabled() then t.optional(t.boolean) else nil,
	setScreenTopBar = if getFFlagAddFriendsSearchbarIXPEnabled() then t.optional(Dash.isCallable) else nil,
	addFriendsPageSearchbarEnabled = if getFFlagAddFriendsSearchbarIXPEnabled() then t.optional(t.boolean) else nil,
	originSourceType = t.optional(t.table),
})

AddFriendsPage.defaultProps = {
	handleNavigateDownToViewUserProfile = noOpt,
	handleAcceptFriendRequest = noOpt,
	handleDeclineFriendRequest = noOpt,
	handleRequestFriendship = noOpt,
	handleIgnoreAllFriendsRequests = noOpt,
	handleLoadMoreRequests = nil,
	handleOpenLearnMoreLink = noOpt,
	handleOpenPhoneVerificationLinkWebview = noOpt,
	handleShowToastForTests = nil,
}

function AddFriendsPage:init()
	local tooltipShown = false
	self.state = {
		shouldShowContactImporterModal = self.props.shouldShowContactImporterUpsellModal,
	}

	self.renderAddFriendsTile = function(user, itemWidth, itemHeight, index)
		local showToolTip = false
		if getFFlagContactImporterUseNewTooltip() then
			local fromContactImporter = self.props.originSourceType[user.id] == CONTACT_IMPORTER_ORIGIN
			showToolTip = self.props.showTooltip and not tooltipShown and fromContactImporter
			if fromContactImporter then
				tooltipShown = true
			end
		end

		return Roact.createElement(AddFriendsTile, {
			layoutOrder = index,
			user = user,
			size = Vector2.new(itemWidth, itemHeight),
			isFriendRequest = true,
			sourceType = self.props.sourceType,
			amIFollowingUser = self.props.amIFollowingUser(user),
			isUserFollowingMe = self.props.isUserFollowingMe(user),
			sentFromExperienceName = self.props.getFriendshipRequestSentFromExperience(user),
			handleNavigateDownToViewUserProfile = self.props.handleNavigateDownToViewUserProfile,
			handleAcceptFriendRequest = self.props.handleAcceptFriendRequest,
			handleDeclineFriendRequest = self.props.handleDeclineFriendRequest,
			handleRequestFriendship = self.props.handleRequestFriendship,
			contactImporterWarningSeen = if getFFlagContactImporterUseNewTooltip()
				then self.props.contactImporterWarningSeen
				else nil,
			showTooltip = if getFFlagContactImporterUseNewTooltip() then showToolTip else nil,
			navigation = self.props.navigation,
		})
	end

	self.showContactImporterBanner = function(props)
		if getFFlagEnableContactInvitesForNonPhoneVerified() then
			return props.contactImporterAndPYMKEnabled
				or (getFFlagContactImporterWithPhoneVerification() and not props.isEmailVerified)
		else
			return props.contactImporterAndPYMKEnabled
				and (
					props.isPhoneVerified
					or (getFFlagContactImporterWithPhoneVerification() and not props.isEmailVerified)
				)
		end
	end

	self.shouldRenderShowMoreFriendRequests = function(currentVisibleFriends)
		return self.props.friendRequestsCount > currentVisibleFriends
	end

	self.shouldRenderShowMoreFriendRecommendations = function(currentVisibleRecommendations)
		return self.props.friendRecommendationCount > currentVisibleRecommendations
	end

	self.showToastForContactsUpload = function(message)
		if self.props.navigation then
			self.props.navigation.navigate(EnumScreens.GenericToast, {
				toastProps = {
					toastContent = { toastTitle = message },
				},
			})
		end
	end

	self.openContactImporter = function()
		self.props.fireContactImporterAnalyticsEvents()
		self.props.contactImporterWarningSeen()

		local shouldShowContactImporterModal
		if getFFlagUpdateContactImportModalLogic() then
			shouldShowContactImporterModal = self.state.shouldShowContactImporterModal
		else
			shouldShowContactImporterModal = not self.props.hasOSPermissions
				or not self.props.canUploadContacts
				or self.state.shouldShowContactImporterModal
		end

		if shouldShowContactImporterModal then
			local navParams = {}
			if getFFlagContactImporterWithPhoneVerification() then
				if getFFlagEnableContactInvitesForNonPhoneVerified() then
					navParams = {
						isFromAddFriendsPage = true,
						openLearnMoreLink = self.props.handleOpenLearnMoreLink,
						showToast = self.props.handleShowToastForTests or self.showToastForContactsUpload,
						diagService = self.props.diagService,
						eventIngestService = self.props.eventIngestService,
						isDiscoverabilityUnset = self.props.isDiscoverabilityUnset,
						openPhoneVerificationWebview = self.props.handleOpenPhoneVerificationLinkWebview,
						isPhoneVerified = self.props.isPhoneVerified,
					}
				else
					navParams = {
						isFromAddFriendsPage = true,
						openLearnMoreLink = self.props.handleOpenLearnMoreLink,
						showToast = self.props.handleShowToastForTests or self.showToastForContactsUpload,
						diagService = self.props.diagService,
						eventIngestService = self.props.eventIngestService,
						isDiscoverabilityUnset = self.props.isDiscoverabilityUnset,
						openPhoneVerificationWebview = self.props.handleOpenPhoneVerificationLinkWebview,
					}
				end
			else
				if getFFlagEnableContactInvitesForNonPhoneVerified() then
					navParams = {
						isFromAddFriendsPage = true,
						openLearnMoreLink = self.props.handleOpenLearnMoreLink,
						showToast = self.props.handleShowToastForTests or self.showToastForContactsUpload,
						diagService = self.props.diagService,
						eventIngestService = self.props.eventIngestService,
						isDiscoverabilityUnset = self.props.isDiscoverabilityUnset,
						isPhoneVerified = self.props.isPhoneVerified,
					}
				else
					navParams = {
						isFromAddFriendsPage = true,
						openLearnMoreLink = self.props.handleOpenLearnMoreLink,
						showToast = self.props.handleShowToastForTests or self.showToastForContactsUpload,
						diagService = self.props.diagService,
						eventIngestService = self.props.eventIngestService,
						isDiscoverabilityUnset = self.props.isDiscoverabilityUnset,
					}
				end
			end
			self.props.navigation.navigate(EnumScreens.ContactImporter, navParams)
		else
			local navParams = {
				isFromAddFriendsPage = true,
				bypassFetchContacts = true,
				diagService = self.props.diagService,
				eventIngestService = self.props.eventIngestService,
			}
			self.props.navigation.navigate(EnumScreens.ContactsList, navParams)
		end
	end

	self.onSearchbarActivated = if getFFlagAddFriendsSearchbarIXPEnabled()
			and self.props.addFriendsPageSearchbarEnabled
		then function()
			local navParams = {
				searchText = "",
				shouldShowEmptyLandingPage = true,
			}
			self.props.navigation.navigate(EnumScreens.SearchFriends, navParams)
			self.props.setScreenTopBar(EnumScreens.FriendsLanding, {
				shouldRenderCenter = true,
				shouldAutoFocusCenter = true,
			})

			if getFFlagAddFriendsFullSearchbarAnalytics() then
				self.props.fireSearchbarPressedEvent()
			end
		end
		else nil
end

function AddFriendsPage:didMount()
	if self.showContactImporterBanner(self.props) then
		self.props.fireContactImporterSeenEvent()
	end
end

function AddFriendsPage:didUpdate(previousProps)
	if self.showContactImporterBanner(self.props) and not self.showContactImporterBanner(previousProps) then
		self.props.fireContactImporterSeenEvent()
	end

	if previousProps.shouldShowContactImporterUpsellModal ~= self.props.shouldShowContactImporterUpsellModal then
		self:setState({
			shouldShowContactImporterModal = self.props.shouldShowContactImporterUpsellModal,
		})
	end
end

function AddFriendsPage:render()
	local getItemMetrics = GridMetrics.getMediumMetrics
	-- In the VerticalScrollView which is used as the ScrollingElement of the scrolling frame,
	-- a padding left/right obtained from getPageMargin will be added internally && automatically, so we also need
	-- to incorporate this into our calculation for the AddFriendsTile size as well.
	local pageLeftRightPadding = getPageMargin(self.props.screenSize.X)
	return withLocalization({
		friendRequestsText = "Feature.AddFriends.Label.FriendRequests",
		buttonText = TextKeys.CONTACTS_LIST_TITLE,
		bannerText = TextKeys.BANNER_TEXT,
		searchPlaceholderText = if getFFlagAddFriendsSearchbarIXPEnabled()
				and self.props.addFriendsPageSearchbarEnabled
			then "Feature.AddFriends.Label.InputPlaceholder.SearchForPeople"
			else nil,
	})(function(localized)
		return withStyle(function(style)
			local hasRequests = self.props.friendRequestsCount > 0
			local requestsCountText = hasRequests and " (" .. self.props.friendRequestsCount .. ")" or ""

			local banner = nil

			if self.showContactImporterBanner(self.props) then
				banner = Roact.createElement(AddFriendsContactImporterBanner, {
					bannerText = localized.bannerText,
					buttonText = localized.buttonText,
					onActivated = self.openContactImporter,
					containerWidth = self.props.screenSize.X,
				})
			end

			local AddFriendsScrollView = Roact.createFragment({
				page = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				}, {
					SearchbarPadding = if getFFlagAddFriendsSearchbarIXPEnabled()
							and self.props.addFriendsPageSearchbarEnabled
							and not self.props.wideMode
						then Roact.createElement("UIPadding", {
							PaddingTop = UDim.new(0, NEW_NAV_BAR_SIZE),
						})
						else nil,
					contentFrame = Roact.createElement("Frame", {
						Size = UDim2.fromScale(1, 1),
						LayoutOrder = 1,
						BackgroundTransparency = 1,
					}, {
						ScrollView = Roact.createElement(RefreshScrollingFrame, {
							ScrollingElement = VerticalScrollView,
							scrollingElementProps = {
								size = UDim2.new(1, 0, 1, -NEW_NAV_BAR_SIZE),
								useAutomaticCanvasSize = true,
								-- The extra 1 offset is needed so it's still scrollable (so you can refresh the page)
								canvasSizeY = UDim.new(1, 1),
								paddingHorizontal = pageLeftRightPadding,
							},
							refresh = self.props.refreshPage,
						}, {
							layout = Roact.createElement("UIListLayout", {
								SortOrder = Enum.SortOrder.LayoutOrder,
								FillDirection = Enum.FillDirection.Vertical,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
							}),
							UIPadding = if self.props.contactImporterAndPYMKEnabled
								then Roact.createElement("UIPadding", {
									PaddingTop = UDim.new(0, 4),
								})
								else nil,
							Banner = banner,
							-- this spacing frame corresponds to the comment in RefreshScrollingFrame#scrollingElementProps
							pulldownSpacing = Roact.createElement("Frame", {
								Size = UDim2.new(1, 0, 0, 1),
								LayoutOrder = 1,
								BackgroundTransparency = 1,
							}),
							requestSection = Roact.createElement(ShowMoreWrapper, {
								listComponent = AddFriendsContentFrame,
								visibleRows = self.props.visibleRows,
								handleShowMore = self.props.handleLoadMoreRequests,
								itemMargin = PLAYER_TILE_MARGIN,
								getItemMetrics = getItemMetrics,
								showContactImporterTooltip = self.props.showContactImporterTooltip,
								itemSize = getItemMetrics(
									self.props.screenSize.X - 2 * pageLeftRightPadding,
									PLAYER_TILE_MARGIN
								).itemWidth,
								friends = self.props.friendRequests,
								overrideRenderShowMore = self.props.friendRequestsCount
										and self.shouldRenderShowMoreFriendRequests
									or nil,
								headerFrame = {
									title = localized.friendRequestsText .. requestsCountText,
									icon = Images["icons/menu/more_off"],
									iconVisible = hasRequests,
								},
								renderAddFriendsTile = self.renderAddFriendsTile,
								handleIgnoreAllFriendsRequests = self.props.handleIgnoreAllFriendsRequests,
								position = UDim2.new(0, 0, 0, 0),
								layoutOrder = 2,
								screenSize = Vector2.new(
									self.props.screenSize.X - 2 * pageLeftRightPadding,
									self.props.screenSize.Y
								),
							}),
							recommendationSection = (
								getFFlagAddFriendsRecommendationsEnabled()
								and #self.props.friendRecommendations > 0
							)
								and Roact.createElement(ShowMoreWrapper, {
									listComponent = AddFriendsContentFrame,
									visibleRows = self.props.visibleRows,
									itemMargin = PLAYER_TILE_MARGIN,
									getItemMetrics = getItemMetrics,
									itemSize = getItemMetrics(
										self.props.screenSize.X - 2 * pageLeftRightPadding,
										PLAYER_TILE_MARGIN
									).itemWidth,
									friends = self.props.friendRecommendations,
									-- TODO: SOCCONN-1557 Handle recommendation data
									-- overrideRenderShowMore = self.props.friendRequestsCount and self.shouldRenderShowMoreFriendRequests or nil,
									-- handleShowMore = self.props.loadMoreRecommendations,
									headerFrame = {
										title = "PYMK [Need Translations]",
									},
									renderAddFriendsTile = self.renderAddFriendsTile,
									position = UDim2.new(0, 0, 0, 0),
									layoutOrder = 2,
									screenSize = Vector2.new(
										self.props.screenSize.X - 2 * pageLeftRightPadding,
										self.props.screenSize.Y
									),
								}),
						}),
					}),
				}),
			})

			if getFFlagAddFriendsSearchbarIXPEnabled() and self.props.addFriendsPageSearchbarEnabled then
				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					SearchbarButton = if not self.props.wideMode
						then Roact.createElement(ImageSetButton, {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, -2 * pageLeftRightPadding, 0, NEW_NAV_BAR_SIZE),
							Position = UDim2.new(0, pageLeftRightPadding, 0, 0),
							[Roact.Event.Activated] = self.onSearchbarActivated,
						}, {
							SearchBar = Roact.createElement(SearchHeaderBar, {
								isDisabled = true,
								searchPlaceholderText = localized.searchPlaceholderText,
							}),
						})
						else nil,
					AddFriendsScrollView,
				})
			else
				return AddFriendsScrollView
			end
		end)
	end)
end

if getFFlagContactImporterUseNewTooltip() then
	return RoactRodux.connect(function(state)
		local originSourceType = getDeepValue(state, "FriendsLanding.RequestsFromOriginSourceType") or {}
		return {
			originSourceType = originSourceType,
		}
	end, nil)(AddFriendsPage)
else
	return AddFriendsPage
end
