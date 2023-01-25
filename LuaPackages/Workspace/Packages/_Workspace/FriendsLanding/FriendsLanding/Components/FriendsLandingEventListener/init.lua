local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local FriendsLandingAnalytics = require(FriendsLanding.FriendsLandingAnalytics)
local filterStates = require(FriendsLanding.Friends.filterStates)
local RoactNavigation = dependencies.RoactNavigation
local SocialLibraries = dependencies.SocialLibraries
local compose = SocialLibraries.RoduxTools.compose
local EnumScreens = require(FriendsLanding.EnumScreens)
local getFFlagSocialAddFriendshipRequestEvent = dependencies.getFFlagSocialAddFriendshipRequestEvent
local FriendsLandingEventListener = Roact.PureComponent:extend("FriendsLandingEventListener")

local getFFlagFriendsLandingLuaPageLoadEvent = require(FriendsLanding.Flags.getFFlagFriendsLandingLuaPageLoadEvent)

FriendsLandingEventListener.defaultProps = {
	navigation = nil,
	navigationEvents = RoactNavigation.NavigationEvents,
	debug_skipDidMount = false,
}

--* This is for when we want to listen to navigation events entering or exiting the whole of FriendsLanding.
function FriendsLandingEventListener:init()
	self.refreshPageOnceCheck = false

	local disconnectFromFriendsRequests = function()
		if self.friendsRequestEventsConnection then
			self.friendsRequestEventsConnection:disconnect()
		end
	end

	self.disconnectFromFriendsRequests = if getFFlagSocialAddFriendshipRequestEvent()
		then nil
		else disconnectFromFriendsRequests

	local subscribeToFriendsRequestEvents = function()
		if self.props.friendsRequestEventListener then
			self.disconnectFromFriendsRequests()

			return self.props.friendsRequestEventListener(function()
				local navigationState = self.props.navigation.state
				while navigationState and navigationState.routes do
					navigationState = navigationState.routes[navigationState.index]
				end

				if navigationState and navigationState.routeName == EnumScreens.AddFriends then
					return
				end

				self.props.getFriendRequestsCount()
			end)
		end

		return
	end

	self.subscribeToFriendsRequestEvents = if getFFlagSocialAddFriendshipRequestEvent()
		then nil
		else subscribeToFriendsRequestEvents

	self.refreshPage = function()
		if self.refreshPageOnceCheck then
			return
		end
		self.refreshPageOnceCheck = true

		self.props.setFilterKeys(filterStates.All)
		self.props.analytics:pageLoaded()
		if getFFlagFriendsLandingLuaPageLoadEvent() then
			self.props.analytics:pageLoadedWithArgs("friendsLanding", {})
		end
		self.props.refreshPage({
			errorMessage = self.props.pageError,
		})
		self.friendsRequestEventsConnection = if not getFFlagSocialAddFriendshipRequestEvent()
			then self.subscribeToFriendsRequestEvents()
			else nil
	end

	self.onDidBlur = function()
		self.refreshPageOnceCheck = false

		self.props.setFilterKeys(filterStates.All)
		if not getFFlagSocialAddFriendshipRequestEvent() then
			self.disconnectFromFriendsRequests()
		end
	end
end

function FriendsLandingEventListener:render()
	return Roact.createElement(self.props.navigationEvents, {
		onDidFocus = self.refreshPage,
		onDidBlur = self.onDidBlur,
	})
end

function FriendsLandingEventListener:didMount()
	if self.props.debug_skipDidMount then
		return
	end
	self.refreshPage()
end

-- onWillBlur will not get called when navigating from roact navigator to lua app router (Friends -> Home/More)
function FriendsLandingEventListener:willUnmount()
	self.refreshPageOnceCheck = false

	if not getFFlagSocialAddFriendshipRequestEvent() then
		self.disconnectFromFriendsRequests()
	end
end

return compose(
	FriendsLandingContext.connect(function(context)
		return {
			filter = context.filter,
			setFilterKeys = context.setFilterKeys,
			refreshPage = context.refreshPage,
			friendsRequestEventListener = if not getFFlagSocialAddFriendshipRequestEvent()
				then context.friendsRequestEventListener
				else nil,
		}
	end),
	FriendsLandingAnalytics.connect(function(analytics)
		return {
			analytics = analytics,
		}
	end)
)(FriendsLandingEventListener)
