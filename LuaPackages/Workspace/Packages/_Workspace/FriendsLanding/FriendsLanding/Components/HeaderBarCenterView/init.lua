--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local EnumScreens = require(FriendsLanding.EnumScreens)
local withLocalization = dependencies.withLocalization
local SearchHeaderBar = require(FriendsLanding.Components.FriendsLandingHeaderBar.SearchHeaderBar)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local AddFriendsSearchbarPressedEvent = require(FriendsLanding.FriendsLandingAnalytics.AddFriendsSearchbarPressedEvent)
local SocialLibraries = dependencies.SocialLibraries
local FormFactor = dependencies.FormFactor
local compose = SocialLibraries.RoduxTools.compose
local ImageSetButton = UIBlox.Core.ImageSet.Button

local getFFlagSearchbarAndroidBackButton = require(FriendsLanding.Flags.getFFlagSearchbarAndroidBackButton)
local getFFlagAddFriendsFixSocialTabSearchbar = require(FriendsLanding.Flags.getFFlagAddFriendsFixSocialTabSearchbar)
local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled
local getFFlagAddFriendsFullSearchbarAnalytics = dependencies.getFFlagAddFriendsFullSearchbarAnalytics

local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local HeaderBarCenterView = Roact.PureComponent:extend("HeaderBarCenterView")

local TABLET_SEARCH_BAR_WIDTH = if getFFlagAddFriendsSearchbarIXPEnabled() then 400 else nil

function HeaderBarCenterView:init()
	self.state = {
		filterText = "",
	}

	self.goToSearchFriendsPage = function()
		local navigation = self.props.navigation
		self.props.analytics:buttonClick(ButtonClickEvents.FriendSearchEnter, {
			text = self.state.filterText,
			contextOverride = navigation.state.routeName,
		})
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

		local navigation = if getFFlagSearchbarAndroidBackButton() or getFFlagAddFriendsFixSocialTabSearchbar()
			then self.props.navigation
			else nil
		local routeName = if getFFlagSearchbarAndroidBackButton() or getFFlagAddFriendsFixSocialTabSearchbar()
			then navigation and navigation.state and navigation.state.routeName
			else nil

		local wideModeSearchbarButton
		if getFFlagAddFriendsSearchbarIXPEnabled() and context.addFriendsPageSearchbarEnabled then
			if getFFlagAddFriendsFixSocialTabSearchbar() then
				wideModeSearchbarButton = context.wideMode and (routeName == EnumScreens.AddFriends)
			else
				wideModeSearchbarButton = context.wideMode and self.props.shouldRenderSearchbarButtonInWideMode
			end
			if not (wideModeSearchbarButton or screenTopBar.shouldRenderCenter) then
				return nil
			elseif getFFlagSearchbarAndroidBackButton() then
				-- To handle the case of new header when the center searchbar is open
				-- on SearchFriends page and the user presses the native Android back button.
				-- If / when we add new header to FriendsLanding page we will need to
				-- add (routeName == EnumScreens.FriendsLanding) check too
				if (routeName == EnumScreens.AddFriends) and not wideModeSearchbarButton then
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
			searchPlaceholderText = if getFFlagAddFriendsSearchbarIXPEnabled()
					and context.addFriendsPageSearchbarEnabled
				then "Feature.AddFriends.Label.InputPlaceholder.SearchForPeople"
				else "Feature.Chat.Label.SearchWord",
			cancelText = "Feature.Chat.Action.Cancel",
		})(function(localizedStrings)
			return Roact.createElement(if getFFlagAddFriendsSearchbarIXPEnabled() then ImageSetButton else "Frame", {
				Size = if (getFFlagAddFriendsSearchbarIXPEnabled() and context.addFriendsPageSearchbarEnabled)
						and context.wideMode
					then UDim2.new(0, TABLET_SEARCH_BAR_WIDTH, 1, 0)
					else UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[Roact.Event.Activated] = if (
						getFFlagAddFriendsSearchbarIXPEnabled() and context.addFriendsPageSearchbarEnabled
					) and wideModeSearchbarButton
					then function()
						local navParams = {
							searchText = "",
							shouldShowEmptyLandingPage = true,
						}
						self.props.navigation.navigate(EnumScreens.SearchFriends, navParams)
						context.setScreenTopBar(EnumScreens.FriendsLanding, {
							shouldRenderCenter = true,
							shouldAutoFocusCenter = true,
						})

						if getFFlagAddFriendsFullSearchbarAnalytics() then
							AddFriendsSearchbarPressedEvent(
								self.props.analytics,
								{ formFactor = self.props.wideMode and FormFactor.WIDE or FormFactor.COMPACT }
							)
						end
					end
					else nil,
			}, {
				filterBox = Roact.createElement(SearchHeaderBar, {
					initialInputText = screenTopBar.filterText,
					cancelText = localizedStrings.cancelText,
					searchPlaceholderText = localizedStrings.searchPlaceholderText,
					captureFocusOnMount = screenTopBar.shouldAutoFocusCenter,
					onSelectCallback = screenTopBar.closeInputBar or function() end,
					isDisabled = if (
							getFFlagAddFriendsSearchbarIXPEnabled() and context.addFriendsPageSearchbarEnabled
						) and wideModeSearchbarButton
						then true
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
