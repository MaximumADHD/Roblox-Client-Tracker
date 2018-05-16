--[[
	Unlike RoactAnalytics, RoactAnalyticsGamesPage is merely a consumer of the analytics implementation.
	It does not require its own setter to be called when the RoactServices ServiceProvider is initialized.
]]

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Events = Modules.LuaApp.Analytics.Events
local gameDetailReferral = require(Events.gameDetailReferral)
local gamesPageInteraction = require(Events.gamesPageInteraction)
local RoactAnalytics = require(Modules.LuaApp.Services.RoactAnalytics)
local Constants = require(Modules.LuaApp.Constants)

local GamesPageAnalytics = {}
function GamesPageAnalytics.get(context)
	local analyticsImpl = RoactAnalytics.get(context)

	local GPA = {}

	function GPA.reportSeeAll(sortName, indexOnPage)
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
		isAd,
		timeFilter,
		genreFilter)

		-- handle optional values
		if not timeFilter then
			timeFilter = 1
		end

		if not genreFilter then
			genreFilter = 1
		end

		-- lookup the legacy sortId based on the sortName
		local sortId = Constants.LEGACY_GAME_SORT_IDS[sortName]
		if not sortId then
			sortId = Constants.LEGACY_GAME_SORT_IDS.default
		end

		-- format the weird data strings
		local evtContext = string.format("gamesort_SortFilter<%d>_TimeFilter<%d>_GenreFilter<%d>_Position<%d>",
			sortId,
			timeFilter,
			genreFilter,
			indexInSort)

		gameDetailReferral(analyticsImpl.EventStream, evtContext, pageName, numItemsInSort, placeId, isAd)
	end

	function GPA.reportOpenGameDetail(placeId, sortName, indexInSort, itemsInSort, isAd, timeFilter, genreFilter)
		reportGameDetailReferral("games", placeId, sortName, indexInSort, itemsInSort, isAd, timeFilter, genreFilter)
	end

	function GPA.reportOpenGameDetailFromSeeAll(placeId, sortName, indexInSort, itemsInSort, isAd, timeFilter, genreFilter)
		reportGameDetailReferral("gamesSeeAll", placeId, sortName, indexInSort, itemsInSort, isAd, timeFilter, genreFilter)
	end

	return GPA
end

return GamesPageAnalytics