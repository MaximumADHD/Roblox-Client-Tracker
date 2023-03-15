--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local EnumScreens = require(FriendsLanding.EnumScreens)
local AppScreens = require(FriendsLanding.AppScreens)
local llama = dependencies.llama
local tutils = dependencies.tutils
local LocalizationService = dependencies.LocalizationService
local ButtonClickEvents = require(script.Parent.ButtonClickEvents)
local ImpressionEvents = require(script.Parent.ImpressionEvents)
local NavigatedFromPagesEnum = require(script.Parent.NavigatedFromPagesEnum)
local Logger = require(script.Parent.Logger)

local ADD_UNIVERSAL_FRIENDS = "addUniversalFriends"
local FriendsLandingAnalytics = {}
FriendsLandingAnalytics.__index = FriendsLandingAnalytics

--* Diag: This is for RCity Charts
--* EventStream: This is for Superset

--* We store DiagCounters as FStrings so we can introduce new diag counters with these flag configurations
FriendsLandingAnalytics.DiagCounters = {
	UserLoadedPage = game:DefineFastString("FriendsLandingUserLoadedPageCounter", "FriendsLandingUserLoadedPage"),
}

FriendsLandingAnalytics.Navigation = {
	[EnumScreens.AddFriends] = game:DefineFastString(
		"FriendsLandingNavigationAddFriendsCounter",
		"FriendsLandingNavigationAddFriends"
	),
	[EnumScreens.ViewUserProfile] = game:DefineFastString(
		"FriendsLandingNavigationViewUserProfileCounter",
		"FriendsLandingNavigationViewUserProfile"
	),
	[EnumScreens.GameDetailsPeekView] = game:DefineFastString(
		"FriendsLandingNavigationGameDetailsPeekViewCounter",
		"FriendsLandingNavigationGameDetailsPeekView"
	),
	[EnumScreens.SearchFriends] = game:DefineFastString(
		"FriendsLandingSearchFriendsCounter",
		"FriendsLandingSearchFriends"
	),
}

FriendsLandingAnalytics.Navigation[AppScreens.Home] =
	game:DefineFastString("AddFriendsHomeEntryCounter", "AddFriendsHomeEntry")

FriendsLandingAnalytics.Navigation.ViewUserProfileAddFriends =
	game:DefineFastString("FriendsLandingViewUserProfileAddFriendsCounter", "FriendsLandingViewUserProfileAddFriends")

FriendsLandingAnalytics.Navigation.ConnectWithFriends =
	game:DefineFastString("AddFriendsConnectWithFriendsCounter", "AddFriendsConnectWithFriends")

FriendsLandingAnalytics.DiagStats = {
	LoadingPageTime = game:DefineFastString("FriendsLandingLoadingPageTimeStats", "FriendsLandingLoadingPageTime"),
	MountingPageTime = game:DefineFastString("FriendsLandingMountingPageTimeStats", "FriendsLandingMountingPageTime"),
}

FriendsLandingAnalytics.BASE_CONTEXT = "friendsLanding"

function FriendsLandingAnalytics.new(analytics, localUserId, getLoadingTimeInfo)
	assert(localUserId, "FriendsLanding must be passed the ID of the local user")

	local self = {
		_diagImpl = analytics.Diag,
		_eventStreamImpl = analytics.EventStream,
		localUserId = localUserId,

		_getLoadingTimeInfo = getLoadingTimeInfo,
		_reportedPagePerformanceOnce = {},
	}
	setmetatable(self, FriendsLandingAnalytics)

	return self
end

function FriendsLandingAnalytics:navigate(destination)
	Logger:info("navigate to {}", destination)
	local counterName = FriendsLandingAnalytics.Navigation[destination]
	if counterName then
		self._diagImpl:reportCounter(counterName, 1)
	else
		Logger:error("Error from navigate: Invalid destination '{}'", destination)
	end
end

function FriendsLandingAnalytics:buttonClick(buttonName, additionalArgs)
	assert(ButtonClickEvents.isEnumValue(buttonName), "invalid button name used")
	Logger:info("eventName: buttonClick btn: {}{}", buttonName, self:_toStringAdditionalArgs(additionalArgs))
	local eventName = "buttonClick"
	local eventContext = self.BASE_CONTEXT
	if additionalArgs and additionalArgs.contextOverride then
		eventContext = additionalArgs.contextOverride
	end

	additionalArgs = llama.Dictionary.join(additionalArgs or {}, {
		btn = buttonName:rawValue(),
		uid = self.localUserId,
		contextOverride = llama.None,
	})
	self._eventStreamImpl:setRBXEventStream(eventContext, eventName, additionalArgs)
end

-- This event is duplicate of playerSearch in LuaApp/Modules/LuaApp/Analytics/Events/search.lua
function FriendsLandingAnalytics:playerSearch(act, keyword, source)
	assert(type(act) == "string", "Expected act to be a string")
	if keyword then
		assert(type(keyword) == "string", "Expected keyword to be a string")
	end
	if source then
		assert(type(source) == "string", "Expected source to be a string")
	end
	Logger:info("eventName: search ctx: players keyword: {} source: {}", keyword, source)
	local eventName = "search"
	local eventContext = "players"
	local locale = LocalizationService.RobloxLocaleId

	local additionalArgs = {
		act = act,
		kwd = keyword,
		source = source,
		locale = locale,
	}

	self._eventStreamImpl:setRBXEventStream(eventContext, eventName, additionalArgs)
end

function FriendsLandingAnalytics:_toStringAdditionalArgs(additionalArgs)
	if not additionalArgs then
		return ""
	end

	local result, _ = string.gsub(" args: " .. tutils.toString(additionalArgs), "%s+", " ")
	return result
end

function FriendsLandingAnalytics:pageLoaded()
	Logger:info("pageLoaded")
	local counterName = FriendsLandingAnalytics.DiagCounters.UserLoadedPage
	self._diagImpl:reportCounter(counterName, 1)
end

function FriendsLandingAnalytics:pageLoadedWithArgs(context, args)
	Logger:info("pageLoaded" .. context or self.BASE_CONTEXT)
	local eventName = "luaPageLoad"
	self._eventStreamImpl:setRBXEventStream(context or self.BASE_CONTEXT, eventName, args)
end

function FriendsLandingAnalytics:_pagePerformanceReport(statsType, eventName, eventEndTime)
	local endTime = eventEndTime or os.clock()
	local loadingTimeInfo = self._getLoadingTimeInfo and self._getLoadingTimeInfo() or {}
	local startPage = loadingTimeInfo.startPage
	local startTime = loadingTimeInfo.startTime

	if not NavigatedFromPagesEnum.fromRawValue(startPage) or type(startTime) ~= "number" then
		Logger:warning("Cannot report loading time: incorrect startPage or startTime")
		return
	end

	local deltaMs = (endTime - startTime) * 1000
	local startPageName = NavigatedFromPagesEnum[startPage].rawValue()
	local statsName = statsType .. "_" .. startPageName

	local additionalArgs = {
		startPage = startPageName,
		loadingTime = deltaMs,
		uid = self.localUserId,
	}

	Logger:info("pageLoaded in " .. deltaMs .. "ms")
	self._diagImpl:reportStats(statsName, deltaMs)
	self._eventStreamImpl:setRBXEventStream(self.BASE_CONTEXT, eventName, additionalArgs)
end

function FriendsLandingAnalytics:_reportPagePerformanceOnceCheck(type)
	if self._reportedPagePerformanceOnce[type] then
		return true
	end
	self._reportedPagePerformanceOnce[type] = true
	return false
end

function FriendsLandingAnalytics:pageMountingTimeReport(eventEndTime)
	local eventName = "pageMountingTime"
	if self:_reportPagePerformanceOnceCheck(eventName) then
		return
	end
	self:_pagePerformanceReport(FriendsLandingAnalytics.DiagStats.MountingPageTime, eventName, eventEndTime)
end

function FriendsLandingAnalytics:pageLoadingTimeReport(eventEndTime)
	local eventName = "pageLoadingTime"
	if self:_reportPagePerformanceOnceCheck(eventName) then
		return
	end
	self:_pagePerformanceReport(FriendsLandingAnalytics.DiagStats.LoadingPageTime, eventName, eventEndTime)
end

function FriendsLandingAnalytics:reportAddFriendsEntrypoint(entryPoint, additionalArgs)
	assert(FriendsLandingAnalytics.Navigation[entryPoint] ~= nil, "invalid screen")
	if entryPoint == AppScreens.Home then
		self._eventStreamImpl:setRBXEventStream("addUniversalFriends", "buttonClick", {
			btn = "LegacyAddFriendsButton",
			absolutePosition = 1,
			showContactImporterModal = if additionalArgs then additionalArgs.showContactImporterModal else nil,
		})
	end
	self._diagImpl:reportCounter(FriendsLandingAnalytics.Navigation[entryPoint], 1)
end

function FriendsLandingAnalytics:impressionEvent(impressionName, additionalArgs)
	assert(ImpressionEvents.isEnumValue(impressionName), "invalid impression name used")

	self._eventStreamImpl:setRBXEventStream(ADD_UNIVERSAL_FRIENDS, impressionName:rawValue(), additionalArgs)
	self._diagImpl:reportCounter(impressionName:rawValue(), 1)
end

return FriendsLandingAnalytics
