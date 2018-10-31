local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local Actions = script.Parent.Parent.Actions
local SetRecentlyPlayedGamesFetching = require(Actions.SetRecentlyPlayedGamesFetching)
local SetRecentlyPlayedGames = require(Actions.SetRecentlyPlayedGames)

local RETRIES = 6
local RECENT_SORT_KEY = "-2"
local FEATURED_SORT_KEY = "8"

local function fetchRecentlyPlayedGamesAsync(store, numOfGames)
	local success = false
	local tryCount = 1
	-- This retry logic is here for those cases where the appshell data model failed to get the recent sort and is retrying.
	while tryCount <= RETRIES do
		local sharedData = PlatformService:ReadSharedData() or {}
		local gameCache = sharedData.games
		if  sharedData.sorts ~= nil and gameCache ~= nil then
			local gamesIncluded = {}
			local count = 0
			local recentSortData = {}
			if sharedData.sorts[RECENT_SORT_KEY] ~= nil and sharedData.sorts[RECENT_SORT_KEY].orderedSort ~= nil then
				local recentSort = sharedData.sorts[RECENT_SORT_KEY].orderedSort
				for i in ipairs(recentSort) do
					if recentSort[i].HasData == false or count == numOfGames then
						break
					end
					--Check if there are cached game data available.
					local gameData = sharedData.games[tostring(recentSort[i].PlaceId)]
					if gameData then
						gamesIncluded[recentSort[i].PlaceId] = true
						table.insert(recentSortData, gameData)
						count = count + 1
					end
				end
			end
			if count < numOfGames then
				-- Add recommended games to fill up the remining games.
				if sharedData.sorts[FEATURED_SORT_KEY] ~= nil and sharedData.sorts[FEATURED_SORT_KEY].orderedSort ~= nil then
					local backupSort = sharedData.sorts[FEATURED_SORT_KEY].orderedSort
					for i in ipairs(backupSort) do
						if backupSort[i].HasData == false or count == numOfGames then
							break
						end
						local gameData = sharedData.games[tostring(backupSort[i].PlaceId)]
						if gameData and gamesIncluded[backupSort[i].PlaceId] ~= true then
							gamesIncluded[backupSort[i].PlaceId] = true
							table.insert(recentSortData, gameData)
							count = count + 1
						end
					end
				end
			end
			if count >= numOfGames then
				store:dispatch(SetRecentlyPlayedGames(recentSortData))
				store:dispatch(SetRecentlyPlayedGamesFetching(false))
				success = true
				break
			end
		end
		tryCount = tryCount + 1
		wait(tryCount ^ 2)
	end
	if success == false then
		store:dispatch(SetRecentlyPlayedGames(nil))
	end
end

return function(numOfGames, forceUpdate)
	return function(store)
		local state = store:getState()
		local isFetching = state.RecentlyPlayedGamesFetchingStatus.fetching
		if isFetching then
			return
		elseif isFetching ~= nil and not forceUpdate then
			return
		end
		store:dispatch(SetRecentlyPlayedGamesFetching(true))
		spawn(function()
			fetchRecentlyPlayedGamesAsync(store, numOfGames)
		end)
	end
end