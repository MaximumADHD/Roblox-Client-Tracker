local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local EnumScreens = require(FriendsLanding.EnumScreens)
local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)

local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts

local AddFriendsIcon = require(FriendsLanding.Components.AddFriendsIcon)
local memoize = dependencies.memoize

local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)

local compose = SocialLibraries.RoduxTools.compose

local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled
local getFFlagAddFriendsMissingContext = require(FriendsLanding.Flags.getFFlagAddFriendsMissingContext)

local ICON_WIDTH = 36
local ICON_PADDING = 0
local SearchFriendsIcon = function(props)
	return Roact.createElement(IconButton, {
		size = UDim2.fromOffset(0, 0),
		icon = Images["icons/common/search"],
		layoutOrder = props.layoutOrder,
		onActivated = props.goToSearchFriendsPage,
	})
end

local SCREEN_BUTTONS = {
	SHOW_ADDFRIENDS_ICON = {
		[EnumScreens.FriendsLanding] = true,
		[EnumScreens.SearchFriends] = true,
	},
	SHOW_SEARCHFRIENDS_ICON = {
		[EnumScreens.FriendsLanding] = true,
		[EnumScreens.SearchFriends] = true,
		[EnumScreens.AddFriends] = true,
	},
}

local HeaderBarRightView = Roact.PureComponent:extend("HeaderBarRightView")

HeaderBarRightView.defaultProps = {
	layoutOrder = 1,
	onActivated = nil,
}

function HeaderBarRightView:init()
	-- TODO: cleanup unused argument as result of flag cleanup
	self.goToFriendRequestsPage = memoize(function(_navigateToLuaAppPages, totalFriendCount)
		return function()
			local buttonClickName = totalFriendCount == 0 and ButtonClickEvents.AddFriendsNoFriends
				or ButtonClickEvents.AddFriends
			self.props.analytics:buttonClick(buttonClickName)
			self.props.analytics:navigate(EnumScreens.AddFriends)

			return self.props.navigation.navigate(EnumScreens.AddFriends)
		end
	end)

	self.goToSearchFriendsPage = memoize(function(setScreenTopBar)
		return function()
			if getFFlagAddFriendsMissingContext() then
				local navigation = self.props.navigation
				local currentRoute = if navigation and navigation.state then navigation.state.routeName else nil
				if currentRoute == EnumScreens.AddFriends then
					self.props.analytics:buttonClick(ButtonClickEvents.FriendSearch, {
						contextOverride = Contexts.FriendRequests.rawValue(),
					})
				else
					self.props.analytics:buttonClick(ButtonClickEvents.FriendSearch)
				end
			else
				self.props.analytics:buttonClick(ButtonClickEvents.FriendSearch)
			end
			setScreenTopBar(EnumScreens.FriendsLanding, {
				shouldRenderCenter = true,
				shouldAutoFocusCenter = true,
			})
		end
	end)
end

function HeaderBarRightView:render()
	local screenTopBar = self.props.getScreenTopBar(EnumScreens.FriendsLanding)

	if screenTopBar.shouldRenderCenter then
		return nil
	end

	local navigation = self.props.navigation
	local shouldShowSearchIcon, shouldShowAddFriendsIcon

	if getFFlagAddFriendsSearchbarIXPEnabled() and self.props.addFriendsPageSearchbarEnabled then
		SCREEN_BUTTONS.SHOW_ADDFRIENDS_ICON[EnumScreens.SearchFriends] = false
	end

	if navigation and navigation.state then
		local currentRoute = navigation.state.routeName
		shouldShowSearchIcon = SCREEN_BUTTONS.SHOW_SEARCHFRIENDS_ICON[currentRoute]
		shouldShowAddFriendsIcon = SCREEN_BUTTONS.SHOW_ADDFRIENDS_ICON[currentRoute]
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, (ICON_WIDTH + ICON_PADDING) * 2, 0, ICON_WIDTH + ICON_PADDING),
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		SearchFriendsIcon = shouldShowSearchIcon and SearchFriendsIcon({
			goToSearchFriendsPage = self.goToSearchFriendsPage(self.props.setScreenTopBar),
			layoutOrder = 1,
		}),
		Padding = Roact.createElement("Frame", {
			Size = UDim2.new(0, ICON_PADDING, 0, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}),
		AddFriendsIcon = shouldShowAddFriendsIcon and Roact.createElement(AddFriendsIcon, {
			onActivated = self.goToFriendRequestsPage(self.props.navigateToLuaAppPages, self.props.totalFriendCount),
			layoutOrder = 3,
			friendRequestCount = self.props.friendRequestCount,
			showTooltip = self.props.totalFriendCount == 0,
		}),
	})
end

return compose(
	FriendsLandingAnalytics.connect(function(analytics)
		return {
			analytics = analytics,
		}
	end),
	FriendsLandingContext.connect(function(state, _)
		return {
			getScreenTopBar = state.getScreenTopBar,
			setScreenTopBar = state.setScreenTopBar,
			navigateToLuaAppPages = state.navigateToLuaAppPages,
			friendRequestCount = state.friendRequestCount,
			totalFriendCount = state.totalFriendCount,
			luaAddFriendsPageEnabled = state.luaAddFriendsPageEnabled,
			addFriendsPageSearchbarEnabled = if getFFlagAddFriendsSearchbarIXPEnabled()
				then state.addFriendsPageSearchbarEnabled
				else nil,
		}
	end)
)(HeaderBarRightView)
