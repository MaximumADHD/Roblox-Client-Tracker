--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local RoactNavigation = dependencies.RoactNavigation
local BackBehavior = dependencies.RoactNavigation.BackBehavior
local SocialTabContext = require(SocialTab.SocialTabContext)
local SocialTabEventReceiver = require(SocialTab.SocialTabEventReceiver)
local SocialTabNavigationEventReceiver = require(SocialTab.SocialTabNavigationEventReceiver)
local SocialTabContainer = require(SocialTab.Components.SocialTabContainer)
local EnumScreens = require(SocialTab.EnumScreens)

local function getActiveChildNavigationOptions(navigation)
	local navigationState = navigation.state
	local currentIndex = navigationState.index
	local childRouteState = navigationState.routes and navigationState.routes[currentIndex]

	if childRouteState and childRouteState.routes then
		local childNavigation = navigation.getChildNavigation(childRouteState.key)
		return getActiveChildNavigationOptions(childNavigation)
	else
		return RoactNavigation.getActiveChildNavigationOptions(navigation)
	end
end

local function getActiveRouteName(navigationState)
	local currentIndex = navigationState.index
	local childRouteState = navigationState.routes and navigationState.routes[currentIndex]
	if childRouteState then
		return getActiveRouteName(childRouteState)
	else
		return navigationState.routeName
	end
end

return function(entryPoints, props)
	local isRoactChatDefaultScreen = props.isRoactChatDefaultScreen
	local routes = {
		{
			[EnumScreens.RoactChat] = {
				screen = function(navProps)
					return SocialTabContext.with(function(context)
						local formattedContext = {
							logger = context.Logger,
							isLuaProfilePageEnabled = context.isLuaProfilePageEnabled,
							parameters = context.parameters,
							wideMode = context.wideMode,
							isVisible = context.isVisible,
							notificationCount = context.notificationCount,
							navigateToLuaAppPages = context.navigateToLuaAppPages,
							rnBypassActionSignal = context.rnBypassActionSignal,
							setActiveConversationId = context.setActiveConversationId,
							setBackButtonEnabled = context.setBackButtonEnabled,
							setTabBarVisible = context.setTabBarVisible,
							androidBackButtonSignal = props.androidBackButtonSignal[EnumScreens.RoactChat],
						}

						local navigationProps = if isRoactChatDefaultScreen
							then {}
							else {
								navigateToRootStack = function()
									navProps.navigation.navigate(EnumScreens.SocialTab)
								end,
							}
						local joinedProps = llama.Dictionary.join(navProps, props, formattedContext, navigationProps)
						return Roact.createElement(entryPoints[EnumScreens.RoactChat], joinedProps)
					end)
				end,
				navigationOptions = {
					tabBarVisible = false,
				},
			},
		},
		entryPoints[EnumScreens.FriendsLanding] and {
			[EnumScreens.FriendsLanding] = entryPoints[EnumScreens.FriendsLanding](SocialTabContext),
		},
	}

	if not isRoactChatDefaultScreen then
		table.insert(routes, 1, {
			[EnumScreens.SocialTab] = {
				screen = function(navProps)
					return Roact.createFragment({
						screen = Roact.createElement(SocialTabContainer, {
							navigation = navProps.navigation,
						}),
						navigationEvents = Roact.createElement(SocialTabNavigationEventReceiver, {
							navigationEventReceiver = RoactNavigation.NavigationEvents,
						}),
					})
				end,
				navigationOptions = {
					tabBarVisible = true,
				},
			},
		})
	end

	local switchNavigator = RoactNavigation.createRobloxSwitchNavigator(routes, {
		keepVisitedScreensMounted = false,
		backBehavior = BackBehavior.InitialRoute,
	})

	local SocialTabSwitchNavigator = Roact.PureComponent:extend("SocialTabSwitchNavigator")

	function SocialTabSwitchNavigator:init()
		-- Android native back button handler
		self.onBackButtonPressed = function()
			local activeRouteName = getActiveRouteName(self.props.navigation.state)

			-- value from from SocialTabUniversalAppWrapper.isAndroidBackButtonHandlerDisabled
			if self.props.androidBackButtonHandlerDisabled then
				return
			end

			-- RoactChat has it's own navigation object which is not accessible in Social Tab
			-- it makes it impossible to navigate back in Roact Chat here (we cannot do navigation.goBack).
			-- We could listen to android back button event in Roact Chat,
			-- but it would cause two listeners fire two events in the same time (Roact Chat + Social Tab listeners).
			-- Instead we fire event from Social Tab to propagate it to Roact Chat
			-- and handle it in getRoactChatStackNavigator.onBackButtonPressed
			-- It can be drastically simplified once RoactChat starts using Social Tab navigation object (ROACTCHAT-587)

			-- SocialTab is root screen which require special treatment
			-- hence signal fired and handled in SocialTabEntryPoint - androidBackButtonSignal[EnumScreens.SocialTab]
			if activeRouteName == EnumScreens.RoactChat or activeRouteName == EnumScreens.SocialTab then
				props.androidBackButtonSignal[activeRouteName]:fire()
			else
				-- All other screens share the same navigation object and don't need special treatment
				self.props.navigation.goBack()
			end
		end

		self.isTabViewVisible = function()
			local activeRouteName = getActiveRouteName(self.props.navigation.state)
			return activeRouteName == EnumScreens.SocialTab
		end
	end

	function SocialTabSwitchNavigator:didMount()
		props.connectToAndroidBackButton(self.onBackButtonPressed)
	end

	function SocialTabSwitchNavigator:willUnmount()
		props.disconnectFromAndroidBackButton()
	end

	function SocialTabSwitchNavigator:willUpdate(nextProps)
		local activeChildNavigationOptions = getActiveChildNavigationOptions(nextProps.navigation)
		if activeChildNavigationOptions then
			if activeChildNavigationOptions.tabBarVisible ~= nil then
				props.setTabBarVisible(activeChildNavigationOptions.tabBarVisible)
			end
		end
	end

	function SocialTabSwitchNavigator:render()
		return SocialTabContext.with(function(context)
			if context.isLuaProfilePageEnabled then
				context.setIsTabBarEnabled(self.isTabViewVisible)
			end

			return Roact.createFragment({
				eventReceiver = Roact.createElement(SocialTabEventReceiver, {
					iaExperimentation = context.iaExperimentation,
					robloxEventReceiver = context.robloxEventReceiver,
					getActiveConversationId = context.getActiveConversationId,
					showTabBar = function()
						local activeRouteName = getActiveRouteName(self.props.navigation.state)
						props.setTabBarVisible(activeRouteName == EnumScreens.SocialTab)
					end,
					goToChat = function()
						-- Obsolete, prop goToChat should be removed when the results regarding IAExperimentation are concluded
						self.props.navigation.navigate(EnumScreens.RoactChat)
					end,
					onStartConversationNotification = function(_detail, _detailType)
						if context.isDrawerPanel then
							if props.closeDrawer then
								props.closeDrawer()
							end
						else
							self.props.navigation.navigate(EnumScreens.RoactChat)
						end
					end,
				}),
				switchNavigator = Roact.createElement(switchNavigator, {
					navigation = self.props.navigation,
				}),
			})
		end)
	end

	SocialTabSwitchNavigator.router = switchNavigator.router

	return SocialTabSwitchNavigator
end
