--[[
	Unlike RoactAnalytics, RoactAnalyticsHomePage is merely a consumer of the analytics implementation.
	It does not require its own setter to be called when the RoactServices ServiceProvider is initialized.
]]

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Events = Modules.LuaApp.Analytics.Events
local gameDetailReferral = require(Events.gameDetailReferral)
local gamesPageInteraction = require(Events.gamesPageInteraction)
local RoactAnalytics = require(Modules.LuaApp.Services.RoactAnalytics)
local Constants = require(Modules.LuaApp.Constants)

local HomePageAnalytics = {}
function HomePageAnalytics.get(context)
	local analyticsImpl = RoactAnalytics.get(context)

	local HPA = {}

	function HPA.reportSeeAll(sortName, indexOnPage)
		local sortId = Constants.LEGACY_GAME_SORT_IDS[sortName]
		if not sortId then
			sortId = Constants.LEGACY_GAME_SORT_IDS.default
		end

		local evtContext = "SeeAll"
		local actionType = "touch"
		local actionValue = tostring(sortId)
		local selectedIndex = tonumber(indexOnPage)

		gamesPageInteraction(analyticsImpl.EventStream, evtContext, actionType, actionValue, selectedIndex)
	end


	local function reportGameDetailReferral(pageName,
		placeId,
		sortName,
		indexInSort,
		numItemsInSort,
		isAd)

		-- lookup the legacy sortId based on the sortName
		local sortId = Constants.LEGACY_GAME_SORT_IDS[sortName]
		if not sortId then
			sortId = Constants.LEGACY_GAME_SORT_IDS.default
		end

		-- format the weird data strings
		local evtContext = string.format("home_SortFilter<%d>_Position<%d>",
			sortId,
			indexInSort)

		gameDetailReferral(analyticsImpl.EventStream, evtContext, pageName, numItemsInSort, placeId, isAd)
	end

	function HPA.reportOpenGameDetail(placeId, sortName, indexInSort, itemsInSort, isAd)
		reportGameDetailReferral("home", placeId, sortName, indexInSort, itemsInSort, isAd)
	end

	function HPA.reportOpenGameDetailFromSeeAll(placeId, sortName, indexInSort, itemsInSort, isAd)
		reportGameDetailReferral("homeSeeAll", placeId, sortName, indexInSort, itemsInSort, isAd)
	end

	return HPA
end

return HomePageAnalytics