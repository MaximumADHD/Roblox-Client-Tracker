local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local llama = dependencies.llama
local tutils = dependencies.tutils

local Logger = require(script.Parent.Logger)

local SocialTabAnalytics = {}
SocialTabAnalytics.__index = SocialTabAnalytics

-- Define these diag counters as FStrings so they can be configured per flag bucket
-- This allows us to introduce new diag counters with these flag configurations
SocialTabAnalytics.DiagCounters = {
	UserLoadedPage = game:DefineFastString("SocialTabUserLoadedPageCounter", "SocialTabUserLoadedPage"),
	UserLoadedSocialTab = game:DefineFastString("SocialTabUserLoadedCounter", "RoactChatUserLoaded"),
}

SocialTabAnalytics.Navigation = {
	LoggedInUserIdentity = game:DefineFastString(
		"SocialTabNavigationLoggedInUserIdentityCounter",
		"SocialTabNavigationLoggedInUserIdentity"
	),
	Chats = game:DefineFastString("SocialTabNavigationChatsCounter", "SocialTabNavigationChats"),
	Groups = game:DefineFastString("SocialTabNavigationGroupsCounter", "SocialTabNavigationGroups"),
	AddFriends = game:DefineFastString("SocialTabNavigationAddFriendsCounter", "SocialTabNavigationAddFriends"),
	FriendRequests = game:DefineFastString(
		"SocialTabNavigationFriendRequestsCounter",
		"SocialTabNavigationFriendRequests"
	),
	SearchFriends = game:DefineFastString(
		"SocialTabNavigationSearchFriendsCounter",
		"SocialTabNavigationSearchFriends"
	),
	Notifications = game:DefineFastString(
		"SocialTabNavigationNotificationsCounter",
		"SocialTabNavigationNotifications"
	),
	CarouselTitle = game:DefineFastString(
		"SocialTabNavigationCarouselTitleCounter",
		"SocialTabNavigationCarouselTitle"
	),
	FriendsLandingPage = game:DefineFastString(
		"SocialTabNavigationFriendsLandingCounter",
		"SocialTabNavigationFriendsLanding"
	),
	ViewUserProfile = game:DefineFastString("SocialTabLuaViewUserProfileCounter", "SocialTabLuaViewUserProfile"),
}

-- TODO SOCCONN-1351 remove once LuaProfile is fully released (and log the LoggedInUserIdentity event instead)
SocialTabAnalytics.Navigation.LuaProfileTEMP =
	game:DefineFastString("SocialTabLuaProfileSelfCounter", "SocialTabLuaProfileSelf")

function SocialTabAnalytics.new(analytics, localUserId)
	assert(localUserId, "SocialTabAnalytics must be passed the ID of the local user")

	local self = {
		_diagImpl = analytics.Diag,
		_eventStreamImpl = analytics.EventStream,
		localUserId = localUserId,
	}
	setmetatable(self, SocialTabAnalytics)

	return self
end

function SocialTabAnalytics:navigate(destination, additionalArgs)
	Logger:info("navigate to {}", destination)
	local counterName = SocialTabAnalytics.Navigation[destination]
	if counterName then
		self._diagImpl:reportCounter(counterName, 1)
	else
		Logger:error("Error from navigate: Invalid destination '{}'", destination)
	end
end

function SocialTabAnalytics:buttonClick(buttonName, additionalArgs)
	Logger:info("eventName: buttonClick btn: {}{}", buttonName, self:_toStringAdditionalArgs(additionalArgs))
	local eventName = "buttonClick"
	local eventContext = "SocialTab"

	additionalArgs = llama.Dictionary.join(additionalArgs or {}, {
		btn = buttonName,
		uid = self.localUserId,
	})
	self._eventStreamImpl:setRBXEventStream(eventContext, eventName, additionalArgs)
end

function SocialTabAnalytics:_toStringAdditionalArgs(additionalArgs)
	if not additionalArgs then
		return ""
	end

	local result, _ = string.gsub(" args: " .. tutils.toString(additionalArgs), "%s+", " ")
	return result
end

function SocialTabAnalytics:pageLoaded()
	Logger:info("pageLoaded")
	local counterName = SocialTabAnalytics.DiagCounters.UserLoadedPage
	self._diagImpl:reportCounter(counterName, 1)
end

function SocialTabAnalytics:userLoadedSocialTab()
	local eventContext = "roactChat"
	local eventName = "userLoadedChat"
	local additionalArgs = {
		uid = self.localUserId,
	}
	self._eventStreamImpl:setRBXEventStream(eventContext, eventName, additionalArgs)

	local counterName = SocialTabAnalytics.DiagCounters.UserLoadedSocialTab
	self._diagImpl:reportCounter(counterName, 1)
end

return SocialTabAnalytics
