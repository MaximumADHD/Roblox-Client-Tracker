--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local EnumScreens = require(FriendsLanding.EnumScreens)
local withLocalization = dependencies.withLocalization
local SearchHeaderBar = require(FriendsLanding.Components.FriendsLandingHeaderBar.SearchHeaderBar)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local AddFriendsSearchbarPressedEvent = require(FriendsLanding.FriendsLandingAnalytics.AddFriendsSearchbarPressedEvent)
local PlayerSearchEvent = require(FriendsLanding.FriendsLandingAnalytics.PlayerSearchEvent)
local SocialLibraries = dependencies.SocialLibraries
local FormFactor = dependencies.FormFactor
local compose = SocialLibraries.RoduxTools.compose
local ImageSetButton = UIBlox.Core.ImageSet.Button
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Contexts = SocialLuaAnalytics.Analytics.Enums.Contexts

local getFFlagAddFriendsSearchbarWidemodeUpdate =
	require(FriendsLanding.Flags.getFFlagAddFriendsSearchbarWidemodeUpdate)

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

		local wideModeSearchbarButton
		if context.addFriendsPageSearchbarEnabled then
			wideModeSearchbarButton = if getFFlagAddFriendsSearchbarWidemodeUpdate()
				then nil
				else context.wideMode and (routeName == EnumScreens.AddFriends)

			if not (wideModeSearchbarButton or screenTopBar.shouldRenderCenter) then
				return nil
			else
				if
					(routeName == EnumScreens.AddFriends)
					and (getFFlagAddFriendsSearchbarWidemodeUpdate() or not wideModeSearchbarButton)
				then
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
				[Roact.Event.Activated] = if getFFlagAddFriendsSearchbarWidemodeUpdate()
					then nil
					elseif context.addFriendsPageSearchbarEnabled and wideModeSearchbarButton then function()
						local navParams = {
							searchText = "",
							shouldShowEmptyLandingPage = true,
						}
						self.props.navigation.navigate(EnumScreens.SearchFriends, navParams)
						context.setScreenTopBar(EnumScreens.FriendsLanding, {
							shouldRenderCenter = true,
							shouldAutoFocusCenter = true,
						})
						AddFriendsSearchbarPressedEvent(
							self.props.analytics,
							{ formFactor = self.props.wideMode and FormFactor.WIDE or FormFactor.COMPACT }
						)
						self.props.analytics:playerSearch("open", nil, Contexts.AddFriends.rawValue())
					end
					else nil,
			}, {
				filterBox = Roact.createElement(SearchHeaderBar, {
					analytics = self.props.analytics,
					initialInputText = screenTopBar.filterText,
					cancelText = localizedStrings.cancelText,
					searchPlaceholderText = localizedStrings.searchPlaceholderText,
					captureFocusOnMount = screenTopBar.shouldAutoFocusCenter,
					onSelectCallback = screenTopBar.closeInputBar or function() end,
					isDisabled = if getFFlagAddFriendsSearchbarWidemodeUpdate()
						then nil
						elseif context.addFriendsPageSearchbarEnabled and wideModeSearchbarButton then true
						else nil,

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
