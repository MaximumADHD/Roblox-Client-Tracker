--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Logger = require(SocialTab.Logger)

local t = dependencies.t
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local memoize = dependencies.memoize
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local GridMetrics = UIBlox.App.Grid.GridMetrics
local HorizontalPageMargin = UIBlox.App.Container.HorizontalPageMargin
local Badge = UIBlox.App.Indicator.Badge
local HeaderBar = UIBlox.App.Bar.HeaderBar
local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images

local Promise = dependencies.Promise

local Components = script:FindFirstAncestor("Components")
local ChatTile = require(Components.ChatTile)
local GroupsTile = require(Components.GroupsTile)
local ProfileEntry = require(Components.ProfileEntry)

local RefreshScrollingFrame = dependencies.SocialLibraries.Components.RefreshScrollingFrame
local getFFlagSocialProfileShareAnalyticsEnabled = dependencies.getFFlagSocialProfileShareAnalyticsEnabled
local DiscoverabilityEntryPoints = dependencies.DiscoverabilityModal.Analytics.EntryPoints

local TOP_BAR_PADDING = 24
local PROFILE_PADDING = 22
local FRIENDS_CAROUSEL_PADDING = 36
local EnumScreens = require(SocialTab.EnumScreens)
local UserUtils = require(SocialTab.User)

local SocialTabPage = Roact.PureComponent:extend("SocialTabPage")
SocialTabPage.TileCellSize = {
	Wide = UDim2.fromOffset(176, 176),
	Compact = UDim2.fromOffset(158, 158),
}
SocialTabPage.TileHorizontalAlignment = {
	Wide = Enum.HorizontalAlignment.Left,
	Compact = Enum.HorizontalAlignment.Center,
}

local enableNotificationsPolicyDefaultValue = false

SocialTabPage.defaultProps = {
	topBarHeight = 56,
	navigation = nil,
	wideMode = false,
	unreadConversationCount = 0,
	numberOfNotifications = 0,
	localUser = {},
	enableDisplayNamePolicy = false,

	socialText = "[LOCALIZE] TITLE",
	chatsText = "[LOCALIZE] CHATS",
	groupsText = "[LOCALIZE] GROUPS",

	renderUserCarousel = function(props)
		return Roact.createElement("TextLabel", {
			Text = "User Carousel PlaceHolder",
			Size = UDim2.new(1, 0, 0, 40),
			LayoutOrder = props.LayoutOrder,
		})
	end,

	refreshPageData = function()
		return Promise.resolve()
	end,
	shouldShowGroupsTilePolicy = false,
	enableNotificationsPolicy = enableNotificationsPolicyDefaultValue,
	isProfileShareEnabled = false,
	luaSelfProfileEnabled = false,
	disableWebViewSupport = false,
}

SocialTabPage.validateProps = t.interface({
	topBarHeight = t.optional(t.number),
	analytics = t.table,
	wideMode = t.optional(t.boolean),
	navigateToLuaAppPages = t.optional(t.table),
	navigation = t.optional(t.table),
	localUser = UserUtils.validateUser,
	enableDisplayNamePolicy = t.optional(t.boolean),
	enableNotificationsPolicy = t.optional(t.boolean),
	renderUserCarousel = t.callback,
	socialText = t.optional(t.string),
	chatsText = t.optional(t.string),
	groupsText = t.optional(t.string),
	numberOfNotifications = t.optional(t.number),
	unreadConversationCount = t.optional(t.number),
	refreshPageData = t.optional(t.callback),
	shouldShowGroupsTilePolicy = t.optional(t.boolean),
	isProfileShareEnabled = t.optional(t.boolean),
	luaAddFriendsPageEnabled = t.optional(t.boolean),
	isLuaProfilePageEnabled = t.optional(t.boolean),
	luaSelfProfileEnabled = t.optional(t.boolean),
})

function SocialTabPage:init()
	self.gridButtons = self:getGridItems()

	self.goToChat = function()
		Logger:info("Going to Chats")
		self.props.analytics:buttonClick("Chats")
		self.props.analytics:navigate("Chats")
		self.props.navigation.navigate(EnumScreens.RoactChat)
	end

	self.goToGroups = function()
		Logger:info("Going to Groups")
		self.props.analytics:buttonClick("Groups")
		self.props.analytics:navigate("Groups")
		self.props.navigateToLuaAppPages[EnumScreens.Groups]()
	end

	self.goToUserProfile = function()
		Logger:info("Going to User Profile")
		self.props.analytics:buttonClick("LoggedInUserIdentity")
		self.props.analytics:navigate("LoggedInUserIdentity")
		if self.props.luaSelfProfileEnabled then
			if
				self.props.discoverabilityUpsellOnProfileSelfViewEnabled
				and self.props.isPhoneVerified
				and self.props.isDiscoverabilityUnset
			then
				self.props.navigateToLuaAppPages[EnumScreens.DiscoverabilityModal]({
					isStandaloneDiscoverabilityModal = true,
					showToast = self.props.showToast,
					openLearnMoreLink = self.props.openLearnMoreLink,
					navigateOnActivated = function()
						self.props.navigateToLuaAppPages[EnumScreens.ViewUserProfile](self.props.localUser.id, {})
					end,
					entryPoint = DiscoverabilityEntryPoints.SocialTabProfile,
					onClose = self.props.closeCentralOverlay,
				})
			else
				self.props.navigateToLuaAppPages[EnumScreens.ViewUserProfile](self.props.localUser.id, {})
			end
		else
			if
				self.props.discoverabilityUpsellOnProfileSelfViewEnabled
				and self.props.isPhoneVerified
				and self.props.isDiscoverabilityUnset
			then
				self.props.navigateToLuaAppPages[EnumScreens.DiscoverabilityModal]({
					isStandaloneDiscoverabilityModal = true,
					showToast = self.props.showToast,
					openLearnMoreLink = self.props.openLearnMoreLink,
					navigateOnActivated = function()
						self.props.navigateToLuaAppPages[EnumScreens.ViewUserProfile](self.props.localUser.id)
					end,
					entryPoint = DiscoverabilityEntryPoints.SocialTabProfile,
					onClose = self.props.closeCentralOverlay,
				})
			else
				self.props.navigateToLuaAppPages[EnumScreens.ViewUserProfile](self.props.localUser.id)
			end
		end
	end

	self.goToProfileShare = function()
		Logger:info("Going to Share Profile")
		if getFFlagSocialProfileShareAnalyticsEnabled() then
			self.props.analytics:buttonClick("userShareProfileLink", {
				page = "Chat",
			})
		end
		self.props.navigateToLuaAppPages[EnumScreens.ProfileShare](self.props.localUser.id)
	end

	self.goToFriendsLanding = function()
		if self.props.navigatingFromSocialTabEvent then
			self.props.navigatingFromSocialTabEvent(EnumScreens.FriendsLanding)
		end
		self.props.navigation.navigate(EnumScreens.FriendsLanding)
	end

	self.goToAddFriends = function()
		self.props.navigation.navigate(EnumScreens.FriendsLanding, { EntryPage = "AddFriendsPage" })
	end

	self.renderTopBarButtons = memoize(function(numberOfNotifications, enableNotificationsPolicy)
		local makeNotificationsButton = function()
			return Roact.createElement(IconButton, {
				size = UDim2.fromOffset(0, 0),
				icon = Images["icons/common/notificationOn"],
				layoutOrder = 3,

				onActivated = function()
					Logger:info("Going to Notifications")
					self.props.analytics:buttonClick("Notifications")
					self.props.analytics:navigate("Notifications")

					local shouldSetTabBarVisible = true
					self.props.navigateToLuaAppPages[EnumScreens.Notifications](shouldSetTabBarVisible)
				end,
			}, {
				notificationsBadge = numberOfNotifications > 0 and Roact.createElement(Badge, {
					position = UDim2.new(0.5, 0, 0.5, 0),
					anchorPoint = Vector2.new(0, 1),
					value = numberOfNotifications,
				}),
			})
		end

		local notifications
		if self.props.enableNotificationsPolicy then
			notifications = makeNotificationsButton()
		else
			notifications = nil
		end

		if self.props.disableWebViewSupport then
			return function()
				return Roact.createFragment({})
			end
		else
			return function()
				return Roact.createFragment({
					filter = Roact.createElement(IconButton, {
						size = UDim2.fromOffset(0, 0),
						icon = Images["icons/common/search"],
						layoutOrder = 1,

						onActivated = function()
							Logger:info("Going to AddFriends")
							self.props.analytics:buttonClick("SearchFriends")
							self.props.analytics:navigate("SearchFriends")
							self.props.navigateToLuaAppPages[EnumScreens.AddFriends]()
						end,
					}),
					notifications = notifications,
				})
			end
		end
	end)

	self.renderButtonGridItem = memoize(function(unreadConversationCount)
		return function(item, index)
			if item == "Chats" then
				return Roact.createElement(ChatTile, {
					unreadConversationCount = unreadConversationCount,
					LayoutOrder = index,
					title = self.props.chatsText,
					onActivated = self.goToChat,
				})
			elseif item == "Groups" then
				return Roact.createElement(GroupsTile, {
					LayoutOrder = index,
					title = self.props.groupsText,
					onActivated = self.goToGroups,
				})
			end

			return nil
		end
	end)

	self.getButtonGridItemHeight = function(width)
		return width
	end

	self.contentHeight, self.updateContentHeight = Roact.createBinding(0)
end

function SocialTabPage:getGridItems()
	local items = { "Chats" }

	if self.props.shouldShowGroupsTilePolicy and not self.props.disableWebViewSupport then
		table.insert(items, "Groups")
	end

	return items
end

function SocialTabPage:render()
	return UIBlox.Style.withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			layout = Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			topBar = Roact.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 0, self.props.topBarHeight),
				BackgroundTransparency = 1,
			}, {
				headerBar = Roact.createElement(HeaderBar, {
					barHeight = self.props.topBarHeight,
					title = self.props.socialText,
					renderRight = self.renderTopBarButtons(
						self.props.numberOfNotifications,
						self.props.enableNotificationsPolicy
					),
				}),
			}),

			gridFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				ScrollView = Roact.createElement(RefreshScrollingFrame, {
					scrollingElementProps = {
						Size = UDim2.new(1, 0, 1, -self.props.topBarHeight),
						ScrollBarThickness = 0,
						BackgroundTransparency = 1,
						CanvasSize = UDim2.new(1, 0, 1, -self.props.topBarHeight + 1), -- 1px for pull down to refresh
						AutomaticCanvasSize = Enum.AutomaticSize.XY,
						ScrollingDirection = Enum.ScrollingDirection.Y,
					},
					refresh = self.props.refreshPageData,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					pageMargin = Roact.createElement(HorizontalPageMargin, {
						size = UDim2.new(1, 0, 0, 0),
						useAutomaticSizing = true,
						layoutOrder = 1,
						backgroundTransparency = 1,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							SortOrder = Enum.SortOrder.LayoutOrder,
						}),
						spacerTopBar = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, TOP_BAR_PADDING),
							BackgroundTransparency = 1,
							LayoutOrder = 1,
						}),
						profileEntry = Roact.createElement(ProfileEntry, {
							userText = self.props.enableDisplayNamePolicy and self.props.localUser.displayName
								or self.props.localUser.username,
							avatarImage = self.props.localUser.thumbnail,
							isPremium = self.props.localUser.isPremium,
							navigateToLuaAppPages = self.props.navigateToLuaAppPages,
							hasVerifiedBadge = self.props.localUser.hasVerifiedBadge,
							onActivated = self.goToUserProfile,
							isProfileShareEnabled = self.props.isProfileShareEnabled,
							onActivatedProfileShare = self.goToProfileShare,
							layoutOrder = 2,
						}),
						spacerProfile = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, PROFILE_PADDING),
							BackgroundTransparency = 1,
							LayoutOrder = 3,
						}),
						friendsCarousel = self.props.renderUserCarousel({
							LayoutOrder = 4,
							wideMode = self.props.wideMode,
							navigateToLuaAppPages = self.props.navigateToLuaAppPages,
							goToFriendsLanding = self.goToFriendsLanding,
							goToAddFriends = self.goToAddFriends,
							luaAddFriendsPageEnabled = self.props.luaAddFriendsPageEnabled,
						}),
						spacerFriends = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, FRIENDS_CAROUSEL_PADDING),
							BackgroundTransparency = 1,
							LayoutOrder = 5,
						}),
						buttonGrid = Roact.createElement(DefaultMetricsGridView, {
							LayoutOrder = 6,
							renderItem = self.renderButtonGridItem(self.props.unreadConversationCount),
							getItemHeight = self.getButtonGridItemHeight,
							getItemMetrics = GridMetrics.getMediumMetrics,
							itemPadding = Vector2.new(12, 12),
							items = self.gridButtons,
						}),
					}),
				}),
			}),
		})
	end)
end

function SocialTabPage:didMount()
	Logger:info("SocialTabPage mounted")
	self.props.analytics:pageLoaded()
end

return SocialTabPage
