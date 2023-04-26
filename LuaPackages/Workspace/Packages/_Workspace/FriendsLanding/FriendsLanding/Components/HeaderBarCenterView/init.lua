--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local EnumScreens = require(FriendsLanding.EnumScreens)
local withLocalization = dependencies.withLocalization
local SearchHeaderBar = require(FriendsLanding.Components.FriendsLandingHeaderBar.SearchHeaderBar)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local PlayerSearchEvent = require(FriendsLanding.FriendsLandingAnalytics.PlayerSearchEvent)
local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose
local ImageSetButton = UIBlox.Core.ImageSet.Button

local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local HeaderBarCenterView = Roact.PureComponent:extend("HeaderBarCenterView")

local TABLET_SEARCH_BAR_WIDTH = 400

function HeaderBarCenterView:init()
	self.state = {
		filterText = "",
	}

	self.goToSearchFriendsPage = function()
		local navigation = self.props.navigation
		PlayerSearchEvent(
			self.props.analytics,
			"submit",
			{ kwd = self.state.filterText, currentRoute = navigation.state.routeName }
		)
		if navigation.state.routeName == EnumScreens.SearchFriends then
			navigation.replace(EnumScreens.SearchFriends, { searchText = self.state.filterText })
		else
			self.props.analytics:navigate(EnumScreens.SearchFriends)
			navigation.push(EnumScreens.SearchFriends, { searchText = self.state.filterText })
		end
	end
end

function HeaderBarCenterView:render()
	return FriendsLandingContext.with(function(context)
		local screenTopBar = context.getScreenTopBar(EnumScreens.FriendsLanding)

		local navigation = self.props.navigation
		local routeName = navigation and navigation.state and navigation.state.routeName

		if context.addFriendsPageSearchbarEnabled then
			if not screenTopBar.shouldRenderCenter then
				return nil
			else
				if routeName == EnumScreens.AddFriends then
					context.setScreenTopBar(EnumScreens.FriendsLanding, {
						shouldRenderCenter = false,
					})
					return nil
				end
			end
		else
			if not screenTopBar.shouldRenderCenter then
				return nil
			end
		end

		return withLocalization({
			searchPlaceholderText = if context.addFriendsPageSearchbarEnabled
				then "Feature.AddFriends.Label.InputPlaceholder.SearchForPeople"
				else "Feature.Chat.Label.SearchWord",
			cancelText = "Feature.Chat.Action.Cancel",
		})(function(localizedStrings)
			return Roact.createElement(ImageSetButton, {
				Size = if context.addFriendsPageSearchbarEnabled and context.wideMode
					then UDim2.new(0, TABLET_SEARCH_BAR_WIDTH, 1, 0)
					else UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				filterBox = Roact.createElement(SearchHeaderBar, {
					analytics = self.props.analytics,
					initialInputText = screenTopBar.filterText,
					cancelText = localizedStrings.cancelText,
					searchPlaceholderText = localizedStrings.searchPlaceholderText,
					captureFocusOnMount = screenTopBar.shouldAutoFocusCenter,
					onSelectCallback = screenTopBar.closeInputBar or function() end,

					resetOnMount = function()
						context.setScreenTopBar(EnumScreens.FriendsLanding, {
							shouldAutoFocusCenter = false,
						})
					end,

					cancelCallback = function()
						self:setState({
							filterText = "",
						})
						context.setScreenTopBar(EnumScreens.FriendsLanding, {
							shouldRenderCenter = false,
						})
					end,

					textChangedCallback = function(text)
						self:setState({
							filterText = text,
						})
					end,

					focusChangedCallback = function(focus, enterPressed)
						if focus == false and enterPressed then
							self.goToSearchFriendsPage()
						end
					end,
				}),
			})
		end)
	end)
end

return compose(FriendsLandingAnalytics.connect(function(analytics)
	return {
		analytics = analytics,
	}
end))(HeaderBarCenterView)
