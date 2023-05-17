--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local AppStorageService = game:GetService("AppStorageService")

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local withStyle = UIBlox.Style.withStyle
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local EnumScreens = require(FriendsLanding.EnumScreens)
local GridMetrics = UIBlox.App.Grid.GridMetrics
local compose = dependencies.SocialLibraries.RoduxTools.compose
local filterStates = require(FriendsLanding.Friends.filterStates)
local filterFriends = require(FriendsLanding.Friends.filterFriends)
local FilterByButton = require(FriendsLanding.Components.FilterByButton)
local FriendTile = require(FriendsLanding.Components.FriendTile)
local getCorrectUserPresence = require(FriendsLanding.Friends.getCorrectUserPresence)
local Images = UIBlox.App.ImageSet.Images
local memoize = dependencies.memoize
local EmptyResultsView = require(FriendsLanding.Components.EmptyResultsView)
local RefreshScrollingFrame = dependencies.SocialLibraries.Components.RefreshScrollingFrame
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local Constants = require(FriendsLanding.Common.Constants)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local FriendsLandingPage = Roact.PureComponent:extend("FriendsLandingPage")

local noOpt = function() end

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)
local getFFlagFriendsLandingFriendPruningAlertAllowlistOn =
	require(FriendsLanding.Flags.getFFlagFriendsLandingFriendPruningAlertAllowlistOn)
local getFIntFriendsLandingFriendPruningUpsellMinFriends =
	require(FriendsLanding.Flags.getFIntFriendsLandingFriendPruningUpsellMinFriends)
local getFIntFriendsLandingFriendPruningUpsellMinInactiveFriends =
	require(FriendsLanding.Flags.getFIntFriendsLandingFriendPruningUpsellMinInactiveFriends)

local getFFlagFriendsLandingNewEmptyPage = require(FriendsLanding.Flags.getFFlagFriendsLandingNewEmptyPage)

local FRIEND_PRUNING_ALERT_FEATURE_NAME = "UniversalAppPruningAlertStorageKey"
local FRIEND_PRUNING_ALERT_LOCAL_STORAGE_KEY = "FriendPruningAlertSeen"

local NEW_NAV_BAR_SIZE = 56
local PLAYER_TILE_TEXT_HEIGHT = 80
local GRID_HORIZONTAL_SPACING = 12
local GRID_VERTICAL_SPACING = 12
local SHOW_MORE_LAYOUT_ORDER = if getFFlagFriendsLandingInactiveFriendsEnabled() then 7 else 4
local INACTIVE_EXPLANATION_TOP_PADDING = 4
local INACTIVE_EXPLANATION_BOTTOM_PADDING = 12
local REMOVE_FRIEND_ICON = Images["icons/actions/friends/friendRemove"]

FriendsLandingPage.defaultProps = {
	friends = {},
	totalFilteredFriends = 0,
	totalFriendCount = 0,
	isLocalUserSoothsayer = false,
	isLuobu = false,
	renderShowMore = noOpt,
	analytics = nil,
	navigateToLuaAppPages = nil,
	refreshPage = noOpt,
	filter = if getFFlagFriendsLandingInactiveFriendsEnabled() then filterStates.All else nil,
	unfriendTargetUser = noOpt,

	devForceFriendPruningUpsellOn = false, -- Used in a test to force-show the friend pruning tooltip and alert
}

function FriendsLandingPage:init()
	local userHasSeenFriendPruningAlertAndTooltip = if getFFlagFriendsLandingInactiveFriendsEnabled()
			and game:GetEngineFeature(FRIEND_PRUNING_ALERT_FEATURE_NAME)
		then AppStorageService:GetItem(FRIEND_PRUNING_ALERT_LOCAL_STORAGE_KEY) == "true"
		else false

	local shouldInitiallyShowFriendPruningAlertAndTooltip = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then self.props.devForceFriendPruningUpsellOn
			or (
				not userHasSeenFriendPruningAlertAndTooltip
				and (
					(
						self.props.totalFriendCount >= getFIntFriendsLandingFriendPruningUpsellMinFriends()
						and self.props.totalInactiveFriends
							>= getFIntFriendsLandingFriendPruningUpsellMinInactiveFriends()
					) or self.props.isLocalUserSoothsayer
				)
			)
		else nil

	self.state = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then {
			showFriendPruningAlert = shouldInitiallyShowFriendPruningAlertAndTooltip,
			showFriendPruningTooltip = shouldInitiallyShowFriendPruningAlertAndTooltip,
		}
		else nil

	self.openPlayerProfile = memoize(function(participantId, index, user, size, position)
		return function()
			self.props.analytics:navigate(EnumScreens.ViewUserProfile)
			self.props.analytics:buttonClick(ButtonClickEvents.PlayerTile, {
				friendId = participantId,
				position = index - 1,
				subpage = "peekView",
				page = "playerProfile",
			})
			local contextualMenuProps = {
				user = user,
				positionIndex = index or 0,
				absolutePosition = (index or 0) + 1,
				onOpen = function() end, -- this is used for freezing/unfreezing the user carousel on homepage, not needed here
				onClose = function() end, -- this is used for freezing/unfreezing the user carousel on homepage, not needed here
				anchorSpaceSize = size,
				anchorSpacePosition = position,
				source = Constants.FriendsLandingPageSourceName,
			}
			local navParams = { openJoinable = true, contextualMenuProps = contextualMenuProps }
			self.props.navigateToLuaAppPages[EnumScreens.ViewUserProfile](participantId, navParams)
		end
	end)

	self.pageLoadingTimeReport = function()
		self.props.analytics:pageLoadingTimeReport()
	end

	self.filterFriends = if getFFlagFriendsLandingInactiveFriendsEnabled() then memoize(filterFriends) else noOpt

	self.onFewestInteractionsSelection = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function()
			self:setState({
				showFriendPruningAlert = false,
				showFriendPruningTooltip = false,
			})
			if
				getFFlagFriendsLandingInactiveFriendsEnabled()
				and game:GetEngineFeature(FRIEND_PRUNING_ALERT_FEATURE_NAME)
			then
				pcall(function()
					AppStorageService:SetItem(FRIEND_PRUNING_ALERT_LOCAL_STORAGE_KEY, "true")
					AppStorageService:Flush()
				end)
			end
		end
		else noOpt

	self.onTooltipDismissal = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function()
			self:setState({
				showFriendPruningTooltip = false,
			})
		end
		else noOpt

	self.onUnfriend = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then memoize(function(message, icon)
			self.props.navigation.navigate(EnumScreens.GenericToast, {
				toastProps = {
					toastContent = {
						toastTitle = message,
						iconImage = icon,
					},
				},
			})
		end)
		else noOpt

	self.onUnfriendButtonActivated = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function(successMessage, errorMessage, targetUser)
			return function()
				if targetUser.id ~= nil then
					self.props.analytics:buttonClick(ButtonClickEvents.FriendTileUnfriendButton, {
						friendCount = tostring(self.props.totalFriendCount),
						inactiveFriendCount = tostring(self.props.totalFilteredFriends),
						presence = tostring(getCorrectUserPresence(targetUser)),
						unfriendUserId = targetUser.id,
					})
					self.props
						.unfriendTargetUser({ targetUserId = targetUser.id, currentUserId = self.props.localUserId })
						:andThen(function()
							self.onUnfriend(successMessage, REMOVE_FRIEND_ICON)
						end)
						:catch(function()
							self.onUnfriend(errorMessage)
						end)
				end
				if self.props.navigation then
					self.props.navigation.goBack()
				end
			end
		end
		else noOpt

	self.renderItem = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function(item, index)
			return withLocalization({
				successText = "Feature.Friends.Action.FriendRemoved",
				errorText = "Feature.Toast.NetworkingError.SomethingIsWrong",
			})(function(localizedStrings)
				return Roact.createElement(FriendTile, {
					user = item,
					index = index,
					openPlayerProfile = self.openPlayerProfile,
					isLuobu = self.props.isLuobu,
					pageLoadingTimeReport = self.pageLoadingTimeReport,
					buttons = if self.props.filter == filterStates.Inactive
						then {
							{
								icon = REMOVE_FRIEND_ICON,
								isSecondary = false,
								onActivated = self.onUnfriendButtonActivated(
									localizedStrings.successText,
									localizedStrings.errorText,
									item
								),
							},
						}
						else nil,
				})
			end)
		end
		else function(item, index)
			return Roact.createElement(FriendTile, {
				user = item,
				index = index,
				openPlayerProfile = self.openPlayerProfile,
				isLuobu = self.props.isLuobu,
				pageLoadingTimeReport = self.pageLoadingTimeReport,
			})
		end

	self.getItemHeight = function(width)
		return width + PLAYER_TILE_TEXT_HEIGHT
	end

	self.filterButtonOnActivated = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function(friendPruningEnabled)
			return function()
				self.props.analytics:buttonClick(ButtonClickEvents.FriendFilterPill)
				if self.props.navigation then
					self.props.navigation.navigate(EnumScreens.FilterByModal, {
						showFriendPruningAlert = friendPruningEnabled and self.state.showFriendPruningAlert,
						onFewestInteractionsSelection = if friendPruningEnabled
							then self.onFewestInteractionsSelection
							else noOpt,
						friendCount = self.props.totalFilteredFriends,
						inactiveFriendCount = #self.filterFriends(self.props.friends, filterStates.Inactive),
						showInactiveFilterOption = friendPruningEnabled,
					})
				end
			end
		end
		else function()
			self.props.analytics:buttonClick(ButtonClickEvents.FriendFilterPill)
			if self.props.navigation then
				self.props.navigation.navigate(EnumScreens.FilterByModal)
			end
		end

	self.refreshPage = function()
		return self.props.refreshPage({
			errorMessage = self.props.localizedStrings.pageError,
		})
	end

	self.generateScrollingElementProps = memoize(function()
		return {
			size = UDim2.new(1, 0, 1, -NEW_NAV_BAR_SIZE),
			useAutomaticCanvasSize = true,
			-- The extra 1 offset is needed so it's still scrollable (so you can refresh the page)
			canvasSizeY = UDim.new(1, 1),
		}
	end)

	self.openAddFriendsPage = function()
		-- TODO SOCGRAPH-929: add analytics
		self.props.navigation.navigate(EnumScreens.AddFriends)
	end
end

function FriendsLandingPage:didMount()
	self.props.analytics:pageMountingTimeReport()
end

function FriendsLandingPage:didUpdate()
	if getFFlagFriendsLandingInactiveFriendsEnabled() then
		local userHasSeenFriendPruningAlertAndTooltip = if game:GetEngineFeature(FRIEND_PRUNING_ALERT_FEATURE_NAME)
			then AppStorageService:GetItem(FRIEND_PRUNING_ALERT_LOCAL_STORAGE_KEY) == "true"
			else false

		local shouldInitiallyShowFriendPruningAlertAndTooltip = self.props.devForceFriendPruningUpsellOn
			or (
				not userHasSeenFriendPruningAlertAndTooltip
				and (
					(
						self.props.totalFriendCount >= getFIntFriendsLandingFriendPruningUpsellMinFriends()
						and self.props.totalInactiveFriends
							>= getFIntFriendsLandingFriendPruningUpsellMinInactiveFriends()
					) or self.props.isLocalUserSoothsayer
				)
			)
		self:setState({
			showFriendPruningAlert = shouldInitiallyShowFriendPruningAlertAndTooltip,
			showFriendPruningTooltip = shouldInitiallyShowFriendPruningAlertAndTooltip,
		})
	end
end

function FriendsLandingPage:render()
	return withStyle(function(style)
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			return withLocalization({
				inactiveFilterExplanation = "Feature.Friends.Label.FewestInteractionsExplanation",
			})(function(localizedStrings)
				local noResults = self.props.totalFilteredFriends == 0
				return Roact.createFragment({
					page = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundColor3 = style.Theme.BackgroundDefault.Color,
					}, {
						gridFrame = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
							LayoutOrder = 2,
							BackgroundTransparency = 1,
						}, {
							ScrollView = Roact.createElement(RefreshScrollingFrame, {
								ScrollingElement = VerticalScrollView,
								scrollingElementProps = self.generateScrollingElementProps(),
								refresh = self.refreshPage,
							}, {
								layout = Roact.createElement("UIListLayout", {
									SortOrder = Enum.SortOrder.LayoutOrder,
									FillDirection = Enum.FillDirection.Vertical,
								}),
								-- this spacing frame corresponds to the comment in self.generateScrollingElementsProps
								pulldownSpacing = Roact.createElement("Frame", {
									Size = UDim2.new(1, 0, 0, 1),
									LayoutOrder = 1,
									BackgroundTransparency = 1,
								}) or nil,
								filterByButton = Roact.createElement(FilterByButton, {
									analytics = self.props.analytics,
									filter = self.props.filter,
									friendCount = self.props.totalFilteredFriends,
									inactiveFriendCount = #self.filterFriends(
										self.props.friends,
										filterStates.Inactive
									),
									isDisabled = self.props.totalFriendCount == 0,
									layoutOrder = 2,
									onActivated = self.filterButtonOnActivated(self.props.friendPruningEnabled),
									showFriendPruningAlert = self.props.friendPruningEnabled
										and self.state.showFriendPruningAlert,
									initialShowFriendPruningTooltip = self.props.friendPruningEnabled
										and self.state.showFriendPruningTooltip,
									onTooltipDismissal = if self.props.friendPruningEnabled
										then self.onTooltipDismissal
										else noOpt,
								}),
								inactiveFilterExplanationTopPadding = if self.props.friendPruningEnabled
										and self.props.filter == filterStates.Inactive
									then Roact.createElement("Frame", {
										Size = UDim2.new(1, 0, 0, INACTIVE_EXPLANATION_TOP_PADDING),
										LayoutOrder = 3,
										BackgroundTransparency = 1,
									})
									else nil,
								inactiveFilterExplanation = if self.props.friendPruningEnabled
										and self.props.filter == filterStates.Inactive
									then Roact.createElement(StyledTextLabel, {
										automaticSize = Enum.AutomaticSize.Y,
										size = UDim2.fromScale(1, 0),
										text = localizedStrings.inactiveFilterExplanation,
										fontStyle = style.Font.CaptionBody,
										colorStyle = style.Theme.TextDefault,
										textXAlignment = Enum.TextXAlignment.Left,
										textYAlignment = Enum.TextYAlignment.Top,
										lineHeight = 1,
										layoutOrder = 4,
									})
									else nil,
								inactiveFilterExplanationBottomPadding = if self.props.friendPruningEnabled
										and self.props.filter == filterStates.Inactive
									then Roact.createElement("Frame", {
										Size = UDim2.new(1, 0, 0, INACTIVE_EXPLANATION_BOTTOM_PADDING),
										LayoutOrder = 5,
										BackgroundTransparency = 1,
									})
									else nil,
								[noResults and "noResultsView" or "friendsGrid"] = noResults
										and Roact.createElement(EmptyResultsView, {
											layoutOrder = 6,
											pageLoadingTimeReport = self.pageLoadingTimeReport,
											openAddFriendsPage = if getFFlagFriendsLandingNewEmptyPage()
												then self.openAddFriendsPage
												else nil,
										})
									or Roact.createElement(DefaultMetricsGridView, {
										getItemHeight = self.getItemHeight,
										items = self.props.friends,
										getItemMetrics = GridMetrics.getMediumMetrics,
										renderItem = self.renderItem,
										itemPadding = Vector2.new(GRID_HORIZONTAL_SPACING, GRID_VERTICAL_SPACING),
										maxHeight = math.huge,
										defaultChildIndex = 1,
										LayoutOrder = 6,
									}),
								showMoreContainer = self.props.renderShowMore(SHOW_MORE_LAYOUT_ORDER),
							}),
						}),
					}),
				})
			end)
		else
			local noResults = self.props.totalFilteredFriends == 0
			return Roact.createFragment({
				page = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				}, {
					gridFrame = Roact.createElement("Frame", {
						Size = UDim2.fromScale(1, 1),
						LayoutOrder = 2,
						BackgroundTransparency = 1,
					}, {
						ScrollView = Roact.createElement(RefreshScrollingFrame, {
							ScrollingElement = VerticalScrollView,
							scrollingElementProps = self.generateScrollingElementProps(),
							refresh = self.refreshPage,
						}, {
							layout = Roact.createElement("UIListLayout", {
								SortOrder = Enum.SortOrder.LayoutOrder,
								FillDirection = Enum.FillDirection.Vertical,
							}),
							-- this spacing frame corresponds to the comment in self.generateScrollingElementsProps
							pulldownSpacing = Roact.createElement("Frame", {
								Size = UDim2.new(1, 0, 0, 1),
								LayoutOrder = 1,
								BackgroundTransparency = 1,
							}) or nil,
							filterByButton = Roact.createElement(FilterByButton, {
								filter = self.props.filter,
								friendCount = self.props.totalFilteredFriends,
								isDisabled = self.props.totalFriendCount == 0,
								layoutOrder = 2,
								onActivated = self.filterButtonOnActivated,
							}),
							[noResults and "noResultsView" or "friendsGrid"] = noResults
									and Roact.createElement(EmptyResultsView, {
										layoutOrder = 3,
										pageLoadingTimeReport = self.pageLoadingTimeReport,
										openAddFriendsPage = if getFFlagFriendsLandingNewEmptyPage()
											then self.openAddFriendsPage
											else nil,
									})
								or Roact.createElement(DefaultMetricsGridView, {
									getItemHeight = self.getItemHeight,
									items = self.props.friends,
									getItemMetrics = GridMetrics.getMediumMetrics,
									renderItem = self.renderItem,
									itemPadding = Vector2.new(GRID_HORIZONTAL_SPACING, GRID_VERTICAL_SPACING),
									maxHeight = math.huge,
									defaultChildIndex = 1,
									LayoutOrder = 3,
								}),
							showMoreContainer = self.props.renderShowMore(SHOW_MORE_LAYOUT_ORDER),
						}),
					}),
				}),
			})
		end
	end)
end

return if getFFlagFriendsLandingInactiveFriendsEnabled()
	then compose(RoactRodux.connect(function(state)
		return {
			isLocalUserSoothsayer = if getFFlagFriendsLandingInactiveFriendsEnabled()
					and getFFlagFriendsLandingFriendPruningAlertAllowlistOn()
				then state.IsLocalUserSoothsayer
				else false,
		}
	end, nil))(FriendsLandingPage)
	else FriendsLandingPage
