local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Logger = require(SocialTab.Logger)
local Analytics = require(SocialTab.Analytics)
local UIBlox = dependencies.UIBlox

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local RoactNavigation = dependencies.RoactNavigation
local memoize = dependencies.memoize
local RetrievalStatus = dependencies.RetrievalStatus

local SocialTabContext = require(SocialTab.SocialTabContext)
local getSocialTabNavigator = require(SocialTab.Navigators.getSocialTabNavigator)
local EnumScreens = require(SocialTab.EnumScreens)
local ConnectSignalEventsToRN = require(SocialTab.ConnectSignalEventsToRN)
local LoadingStateContainer = UIBlox.App.Container.LoadingStateContainer
local UIBloxRetrievalStatus = UIBlox.App.Loading.Enum.RetrievalStatus
local mapStateToProps = require(SocialTab.Components.SocialTabEntryPoint.mapStateToProps)
local mapDispatchToProps = require(SocialTab.Components.SocialTabEntryPoint.mapDispatchToProps)

local SocialTabEntryPoint = Roact.PureComponent:extend("SocialTabEntryPoint")
SocialTabEntryPoint.defaultProps = {
	logger = nil,
	rnBypassActionSignalSocialTab = nil,
	isRoactChatDefaultScreen = false,
}

-- androidBackButtonConnection:
--  Connection for dealing with the Android native back button
--  Handler implementation is in getSocialTabNavigator.onBackButtonPressed

-- androidBackButtonSignal:
--  Signal to propagate Android native back button event to Roact Chat navigator
--  And to handle Android native back button event when on Social Tab screen
--  See(getSocialTabNavigator.onBackButtonPressed)

-- rnBypassActionSignalSocialTab (connectSocTabSignalEventsToRN, connectSocTabExternalDispatch):
--  Used to pass roact navigation signal events to navigator (through externalDispatchConnector prop)
--  Currenlty it used for deeplinking (SocialTabUniversalAppWrapper.navigateToChat)

function SocialTabEntryPoint.getDerivedStateFromProps(newProps, lastState)
	local wasEverDoneRetrievingNewProp = nil

	if newProps.retrievalStatus == RetrievalStatus.Done then
		wasEverDoneRetrievingNewProp = true
	end

	return {
		wasEverDoneRetrieving = wasEverDoneRetrievingNewProp,
	}
end

function SocialTabEntryPoint:init()
	if self.props.logger then
		Logger:setParent(self.props.logger)
	end

	self.connectSocTabSignalEventsToRN = self.props.rnBypassActionSignalSocialTab and ConnectSignalEventsToRN.new()
		or nil

	self.connectSocTabExternalDispatch = function(callback)
		self.connectSocTabSignalEventsToRN:connectExternalDispatch(callback)
	end

	self._performanceTesting = self.props.performanceTesting

	self.androidBackButtonSignal = {
		[EnumScreens.SocialTab] = self.props.signal.new(),
		[EnumScreens.RoactChat] = self.props.signal.new(),
	}

	self.getAppContainer = memoize(function(roactChatEntryPoint, getFriendsLandingEntryPoint)
		local entryPoints = {
			[EnumScreens.RoactChat] = roactChatEntryPoint,
			[EnumScreens.FriendsLanding] = getFriendsLandingEntryPoint,
		}

		local socialTabStackNavigator = getSocialTabNavigator(entryPoints, {
			setTabBarVisible = self.props.setTabBarVisible,
			androidBackButtonSignal = self.androidBackButtonSignal,
			connectToAndroidBackButton = self.props.androidBackButtonConnection.connect,
			disconnectFromAndroidBackButton = self.props.androidBackButtonConnection.disconnect,
			isRoactChatDefaultScreen = self.props.isRoactChatDefaultScreen,
			closeDrawer = self.props.closeDrawer,
		})

		return RoactNavigation.createAppContainer(socialTabStackNavigator)
	end)

	self.getAnalytics = memoize(function(context)
		return Analytics.Class.new(dependencies.AnalyticsService, context.localUserId)
	end)

	self.fetchChatSettings = function(setAppLoaded)
		return self.props.fetchChatSettings(setAppLoaded)
	end

	self.renderRoactChat = function()
		if self.props.debug_mockRenderRoactChat then
			return self.props.debug_mockRenderRoactChat()
		else
			return SocialTabContext.with(function(context)
				-- lazy load RoactChat
				return context.wasEverVisible and Roact.createElement(self.props.roactChatEntryPoint, context) or nil
			end)
		end
	end

	self.renderAppContainer = function(appContainer, context)
		if self.props.debug_mockRenderAppContainer then
			return self.props.debug_mockRenderAppContainer()
		else
			return Roact.createElement(appContainer, {
				externalDispatchConnector = self.connectSocTabSignalEventsToRN and self.connectSocTabExternalDispatch
					or nil,
				androidBackButtonHandlerDisabled = context.androidBackButtonHandlerDisabled,
			})
		end
	end

	self.getLoadingState = function()
		local newDataStatus = UIBloxRetrievalStatus.fromRawValue(self.props.retrievalStatus)
		if self.state.wasEverDoneRetrieving then
			newDataStatus = UIBloxRetrievalStatus.fromRawValue(RetrievalStatus.Done)
		end

		return Roact.createElement(LoadingStateContainer, {
			dataStatus = newDataStatus,
			onRetry = self.fetchChatSettings,
			renderOnLoaded = self.renderOnLoaded,
		})
	end

	self.renderOnLoaded = function()
		return SocialTabContext.with(function(context)
			local appContainer = self.getAppContainer(context.roactChatEntryPoint, context.getFriendsLandingEntryPoint)
			return Roact.createElement(Analytics.Context.Provider, {
				value = self.getAnalytics(context),
			}, {
				appContainer = self.renderAppContainer(appContainer, context),
			})
		end)
	end
end

function SocialTabEntryPoint:didMount()
	spawn(function()
		self.props.fetchUnreadConversationCount()
	end)

	if self.props.retrievalStatus == RetrievalStatus.NotStarted then
		self.fetchChatSettings(self.props.setAppLoaded)
	end

	if self.props.isVisible then
		if self.props.toggleChatPaused ~= nil then
			self.props.toggleChatPaused(false)
		end
	end

	if self.connectSocTabSignalEventsToRN and self.props.rnBypassActionSignalSocialTab then
		self.connectSocTabSignalEventsToRN:updateActionSignal(self.props.rnBypassActionSignalSocialTab)
	end

	if self.androidBackButtonSignal then
		self.androidBackButtonSignal[EnumScreens.SocialTab]:connect(function()
			if self.props.isVisible then
				self.props.androidBackButtonConnection.showExitDialog()
			end
		end)
	end
end

function SocialTabEntryPoint:didUpdate(prevProps, prevState)
	if not prevProps.chatLoaded and self.props.chatLoaded then
		self.props.notificationService:ActionEnabled(Enum.AppShellActionType.TapConversationEntry)
	end

	if self.props.retrievalStatus == RetrievalStatus.NotStarted then
		self.fetchChatSettings(self.props.setAppLoaded)
	end
end

function SocialTabEntryPoint:willUnmount()
	if self.connectSocTabSignalEventsToRN then
		self.connectSocTabSignalEventsToRN:updateActionSignal(nil)
	end
end

function SocialTabEntryPoint:render()
	return SocialTabContext.with(function(context)
		return Roact.createElement(Analytics.Context.Provider, {
			value = self.getAnalytics(context),
		}, {
			LoadingState = self.getLoadingState(),
		})
	end)
end

SocialTabEntryPoint = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SocialTabEntryPoint)
SocialTabEntryPoint = SocialTabContext.connect(function(context)
	return {
		fetchUnreadConversationCount = context.fetchUnreadConversationCount,
		setAppLoaded = context.setAppLoaded,
		roactChatEntryPoint = context.roactChatEntryPoint,
		notificationService = context.notificationService,
		config = context.config,
		toggleChatPaused = context.toggleChatPaused,
		performanceTesting = context.performanceTesting,
		notificationType = context.notificationType,
		isRoactChatDefaultScreen = context.isRoactChatDefaultScreen,
	}
end)(SocialTabEntryPoint)

return SocialTabEntryPoint
