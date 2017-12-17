--[[
// SortsData.lua
//-- Written by Bo Zhang, Copyright Roblox 2017
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local ThirdPartyUserService = nil
pcall(function()ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)

local UserData = require(ShellModules:FindFirstChild('UserData'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local GameData = require(ShellModules:FindFirstChild('GameData'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Http = require(ShellModules:FindFirstChild('Http'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local ReloaderManager = require(ShellModules:FindFirstChild('ReloaderManager'))
local FFlagXboxUseCuratedGameSort = Utility.IsFastFlagEnabled('XboxUseCuratedGameSort2')

--SortsData
--Stores all the sorts
local SortsData = {}
SortsData.FFlagXboxUseCuratedGameSort = FFlagXboxUseCuratedGameSort

do
	SortsData.DefaultSortId = {
		Favorites = -1;
		RecentlyPlayed = -2;
		MyGames = -3;
		Popular = 1;
		Featured = 3;
		TopEarning = 8;
		TopRated = 11;
	}

	local InternalSortsDataCached = nil
	local InternalSortsId_IndexMap = nil
	local VisibleSortsDataCached = nil
	local VisibleSortsId_IndexMap = nil
	local UpdateFuncId = nil
	local UpdateSuspended = false
	local GameSearchSort = nil
	--These three sorts are static
	local StaticSortsCount = 3
	local FavoritesSort = nil
	local RecentSort = nil
	local MyGamesSort = nil

	local function ResetCacheData()
		--Clear All Data
		if InternalSortsDataCached then
			for i = 1, #InternalSortsDataCached.Data do
				InternalSortsDataCached.Data[i]:Destroy()
				InternalSortsDataCached.Data[i] = nil
			end
		end

		if VisibleSortsDataCached then
			for i = 1, #VisibleSortsDataCached.Data do
				VisibleSortsDataCached.Data[i]:Destroy()
				VisibleSortsDataCached.Data[i] = nil
			end
		end

		if GameSearchSort then
			GameSearchSort:Destroy()
		end
		if FavoritesSort then
			FavoritesSort:Destroy()
		end
		if RecentSort then
			RecentSort:Destroy()
		end
		if MyGamesSort then
			MyGamesSort:Destroy()
		end

		InternalSortsDataCached = nil
		InternalSortsId_IndexMap = nil
		VisibleSortsDataCached = nil
		VisibleSortsId_IndexMap = nil
		UpdateFuncId = nil
		UpdateSuspended = false
		GameSearchSort = nil
		FavoritesSort = nil
		RecentSort = nil
		MyGamesSort = nil
	end

	local UserChangedCount = 0
	local function OnUserAccountChanged()
		local startCount = UserChangedCount
		ResetCacheData()
		spawn(function()
			if startCount == UserChangedCount then
				local UpdateInterval = GlobalSettings.GameSortsUpdateInterval

				ReloaderManager:removeReloader("SortsData")
				UpdateFuncId = ReloaderManager:addReloaderFunc("SortsData", SortsData.UpdateSorts, UpdateInterval)
				ReloaderManager:callReloaderFunc("SortsData", UpdateFuncId)
			end
		end)
	end

	EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "SortsData", OnUserAccountChanged)
	if ThirdPartyUserService then
		ThirdPartyUserService.ActiveUserSignedOut:connect(function()
			ResetCacheData()
			UserChangedCount = UserChangedCount + 1
			ReloaderManager:removeReloader("SortsData")
		end)
	end


	--Just in case some Sort doesn't exist, we return this base sort
	--should never happen.
	local function createBaseSort()
		local this = {}

		function this:GetSortAsync(startIndex, pageSize)
			Utility.DebugLog("Sort GetSortAsync() must be implemented by sub class")
		end

		function this:GetCuratedSortAsync(pageIndex, scrollLeft)
			Utility.DebugLog("Sort GetCuratedSortAsync() must be implemented by sub class")
		end

		return this
	end

	--Create a sort
	local function createSort(sortId, sortName, httpFunc, userId, gameSetTargetId)
		local DEFAULT_PAGE_SIZE = 25 --Same with PAGE_SIZE in CarouselController

		local sort = {}
		-- Note: For curated sort, each data in cachedGamesData has a "PagingIndex" to store which web page that data belongs to, which is also the index of sort.Paging
		local cachedGamesData = {}
		local maxGameCount = 200
		local currGameCount = 0
		local isLoading = false
		local initLoadGameCount = 100
		local upperIndex = nil

		sort.Id = sortId
		sort.Name = sortName
		sort.httpFunc = httpFunc
		sort.GameSetTargetId = gameSetTargetId or 0
		sort.Paging = {} --Array of web paging data returned from http request
										 --Each entry is a table of "cachedGamesData_StartIndex" "cachedGamesData_EndIndex" "PreviousUrl" "NextUrl"
										 --Note: "cachedGamesData_StartIndex" "cachedGamesData_EndIndex" is the index in cachedGamesData

		--If the sort is related to user, we store the userId (Favorite, RecentlyPlayed and MyPlaces)
		--Note: Only MyPlaces really needs userId info, the other two can fecth user info on the web side
		if userId then
			sort.userId = userId
		end

		sort.timeFilter = nil

		--Get index range and the index correspoding to the placeId if provided
		local function GetRangeIndex(placeId)
			local lowIndex, highIndex, targetIndex
			for index, game in pairs(cachedGamesData) do
				if not lowIndex or lowIndex > index then
					lowIndex = index
				end

				if not highIndex or highIndex < index then
					highIndex = index
				end

				if placeId then
					if tonumber(game.PlaceId) and tonumber(placeId) and tonumber(game.PlaceId) == tonumber(placeId) then
						targetIndex = index
					end
				end
			end

			return lowIndex, highIndex, targetIndex
		end

		--Clear Caching based on maxGameCount and upperIndex
		local function ClearCaching()
			local lowIndex, highIndex = GetRangeIndex()

			--If there is a max games limit
			if upperIndex then
				for i = upperIndex + 1, highIndex do
					if cachedGamesData[i] and cachedGamesData[i].PlaceId then
						local placeId = cachedGamesData[i].PlaceId
						GameData:ChangeGameDataAccessCount(placeId, -1)
						cachedGamesData[i] = nil
						currGameCount = currGameCount - 1
					end
				end
			end

			--Clear Caching
			if currGameCount > maxGameCount then
				local cachedGamesDataSorted = {}
				for key in pairs(cachedGamesData) do
					cachedGamesData[key].Key = key
					table.insert(cachedGamesDataSorted, cachedGamesData[key])
				end

				currGameCount = #cachedGamesDataSorted
				--Double check, in case we miscount the currGameCachedDataCount
				if currGameCount > maxGameCount then
					--Put not the oldest data in the back
					table.sort(cachedGamesDataSorted, function(a, b)
						return a.LastAccessTime > b.LastAccessTime
					end)

					while #cachedGamesDataSorted > maxGameCount do
						local placeId = cachedGamesDataSorted[#cachedGamesDataSorted].PlaceId
						GameData:ChangeGameDataAccessCount(placeId, -1)
						local RemovingKey = cachedGamesDataSorted[#cachedGamesDataSorted].Key
						cachedGamesData[RemovingKey] = nil
						cachedGamesDataSorted[#cachedGamesDataSorted] = nil
					end
					currGameCount = #cachedGamesDataSorted
				end
			end
		end

		-- top rated is time filtered to show most recent top rated
		if sortId == SortsData.DefaultSortId.TopRated and sort.GameSetTargetId == 0 then
			sort.timeFilter = 2
		elseif sortId == SortsData.DefaultSortId.Favorites and sort.GameSetTargetId == 0 then
			sort.eventString = EventHub.Notifications["FavoriteToggle"]
			sort.objectIDString = tostring(sortId)
			EventHub:addEventListener(sort.eventString, sort.objectIDString,
				function(success, placeId)
					while isLoading do
						wait()
					end
					isLoading = true
					if success and placeId then
						local gameData = GameData:GetGameData(placeId)
						if gameData then
							local lowIndex, highIndex, origIndex = GetRangeIndex(placeId)
							if origIndex then
								--Remove from favorites
								if not gameData.IsFavorited then
									for i = origIndex, highIndex do
										cachedGamesData[i] = cachedGamesData[i + 1]
									end
									currGameCount = currGameCount - 1
									GameData:ChangeGameDataAccessCount(placeId, -1)
								end
							else
								--Add to front
								if gameData.IsFavorited then
									for i = highIndex, lowIndex, -1 do
										cachedGamesData[i + 1] = cachedGamesData[i]
									end

									--Insert at front
									cachedGamesData[1] = {}
									cachedGamesData[1].HasData = true
									cachedGamesData[1].PlaceId = placeId
									cachedGamesData[1].LastAccessTime = tick()
									currGameCount = currGameCount + 1
									GameData:ChangeGameDataAccessCount(placeId, 1)
								end
							end
							ClearCaching()
						end
					end
					isLoading = false
				end)
		elseif sortId == SortsData.DefaultSortId.RecentlyPlayed and sort.GameSetTargetId == 0 then
			--Recently Played Sort should have at most 50 games
			upperIndex = 50
			maxGameCount = 50
			initLoadGameCount = 50

			sort.eventString = EventHub.Notifications["GameJoin"]
			sort.objectIDString = tostring(sortId)
			EventHub:addEventListener(sort.eventString, sort.objectIDString,
				function(success, placeId)
					while isLoading do
						wait()
					end
					isLoading = true
					if success and placeId and placeId ~= -1 then
						local lowIndex, highIndex, origIndex = GetRangeIndex(placeId)
						if origIndex then
							for i = origIndex, lowIndex + 1, -1 do
								cachedGamesData[i] = cachedGamesData[i - 1]
							end
						else
							for i = highIndex, lowIndex, -1 do
								cachedGamesData[i + 1] = cachedGamesData[i]
							end
							currGameCount = currGameCount + 1
							GameData:ChangeGameDataAccessCount(placeId, 1)
						end

						--Insert at front
						cachedGamesData[1] = {}
						cachedGamesData[1].HasData = true
						cachedGamesData[1].PlaceId = placeId
						cachedGamesData[1].LastAccessTime = tick()
						ClearCaching()
					end
					isLoading = false
				end)
		end

		--Flush old data
		local function FlushGameData(index)
			if cachedGamesData[index] then
				GameData:ChangeGameDataAccessCount(cachedGamesData[index].PlaceId, -1)
				cachedGamesData[index] = nil
				currGameCount = currGameCount - 1
			end
		end

		--Flush paging and game data after pagingIndex (include)
		function sort:FlushPagingDataBack(pagingIndex)
			while #self.Paging >= pagingIndex do
				table.remove(self.Paging)
			end
			for index, game in pairs(cachedGamesData) do
				if game.PagingIndex and game.PagingIndex >= pagingIndex then
					FlushGameData(index)
				end
			end
		end

		--Flush paging and game data before pagingIndex (exclude)
		function sort:FlushPagingDataFront(pagingIndex, pageSize)
			local pagingOffset = pagingIndex - 1
			local gameIndexOffset = pagingOffset * pageSize
			local newPagingSize = #self.Paging - pagingOffset

			-- No previous page, move all self.Paging left, current pagingIndex will be 1
			for i = 1, newPagingSize do
				self.Paging[i] = self.Paging[i + pagingOffset]
			end
			for i = 1, pagingOffset do
				table.remove(self.Paging)
			end

			-- Update cachedGamesData
			-- Clear page caching that are in previous pages
			for i = 1, self.Paging[1]["cachedGamesData_StartIndex"] - 1 do
				FlushGameData(i)
			end

			-- Move cachedGamesData to left by gameIndexOffset and PagingIndex by pagingOffset
			local lowIndex, highIndex = GetRangeIndex()
			for i = gameIndexOffset + 1, highIndex do
				cachedGamesData[i - gameIndexOffset] = cachedGamesData[i]
				if cachedGamesData[i] and cachedGamesData[i].PagingIndex then
					cachedGamesData[i - gameIndexOffset].PagingIndex = cachedGamesData[i].PagingIndex - pagingOffset
				end
			end
			for i = highIndex - gameIndexOffset + 1, highIndex do
				cachedGamesData[i] = nil
			end
		end

		-- Update next paging(scroll right) for curated sort, return Data in current page
		function sort:UpdateNextPaging(pagingIndex, pageSize)
			local result = nil
			-- Get next page
			if pagingIndex == 1 then
				-- Get first page for curated sort
				result = Http.GetCuratedSortAsync(self.GameSetTargetId, pageSize)
			else
				-- Get page from url
				local nextUrl = self.Paging[pagingIndex - 1] and self.Paging[pagingIndex - 1]["NextUrl"]
				result = nextUrl and Http.GetCuratedSortByUrlAsync(nextUrl)
			end

			local data = result and result["data"]
			local paging = result and result["paging"]

			-- No data, but has nextUrl: loop loading next page until there's data or reach the end
			while not (data and #data > 0) and paging and paging["nextUrl"] and paging["nextUrl"] ~= "" do
				result = Http.GetCuratedSortByUrlAsync(paging["nextUrl"])
				data = result and result["data"]
				paging = result and result["paging"]
			end

			-- Still no data, flush current Paging and next pagings, return nil
			if not data or #data == 0 then
				self:FlushPagingDataBack(pagingIndex)
				return nil
			end

			-- Clean up pagings and games in cachedGamesData with PagingIndex >= current pagingIndex
			if #self.Paging >= pagingIndex then
				self:FlushPagingDataBack(pagingIndex)
			end

			-- Get new cachedGamesData_StartIndex and cachedGamesData_EndIndex, based on cachedGamesData_EndIndex of previous page
			-- Set cachedGamesData_StartIndex, cachedGamesData_EndIndex and pageUrl for current page
			local pagingData = {}
			pagingData["cachedGamesData_StartIndex"] = (pagingIndex == 1) and 1 or (self.Paging[pagingIndex - 1]["cachedGamesData_EndIndex"] + 1)
			pagingData["cachedGamesData_EndIndex"] = pagingData["cachedGamesData_StartIndex"] + #data - 1
			pagingData["PreviousUrl"] = paging and paging["previousUrl"]
			pagingData["NextUrl"] = paging and paging["nextUrl"]

			-- Append new pagingData to Paging
			table.insert(self.Paging, pagingData)

			return data
		end

		--Update previous paging(scroll left) for curated sort
		--Return data in current page, hasPrevUrl(whether there's prevUrl), and resetPagingIndex(whether current pagingIndex has been reset to 1)
		function sort:UpdatePreviousPaging(pagingIndex, pageSize, dataNeeded)
			local prevUrl = self.Paging[pagingIndex + 1] and self.Paging[pagingIndex + 1]["PreviousUrl"]
			local result = prevUrl and Http.GetCuratedSortByUrlAsync(prevUrl)
			local data = result and result["data"]
			local paging = result and result["paging"]

			--No data, but has previousUrl: loop loading next page until there's data or reach the end
			while not (data and #data > 0) and paging and paging["previousUrl"] and paging["previousUrl"] ~= "" do
				result = Http.GetCuratedSortByUrlAsync(paging["previousUrl"])
				data = result and result["data"]
				paging = result and result["paging"]
			end

			--Still no data, flush current Paging, return nil
			if not data or #data == 0 then
				if self.Paging[pagingIndex] then
					self.Paging[pagingIndex] = {}
				end
				return nil
			end

			-- Check if we need to insert new paging at front
			local resetPagingIndex = false
			if pagingIndex == 0 then
				--Insert new paging & change pagingIndex in cachedGamesData
				resetPagingIndex = true
				pagingIndex = 1
				table.insert(self.Paging, 1, {})

				--move all PagingIndex + 1 in cachedGamesData
				for index, game in pairs(cachedGamesData) do
					if cachedGamesData[index].PagingIndex then
						cachedGamesData[index].PagingIndex = cachedGamesData[index].PagingIndex + 1
					end
				end
			end

			--Get new cachedGamesData_StartIndex and cachedGamesData_EndIndex, based on cachedGamesData_StartIndex of next page
			local cachedGamesData_EndIndex = self.Paging[pagingIndex + 1]["cachedGamesData_StartIndex"] - 1
			local cachedGamesData_StartIndex = cachedGamesData_EndIndex - #data + 1

			--Check if we need data with index <= 0 in cachedGamesData, which is the situation when we request page 0 in CarouselController
			if cachedGamesData_StartIndex < 1 and dataNeeded > cachedGamesData_EndIndex then
				--Move the whole sort to next page, here page means the page in CarouselController, which has "pageSize"(25) games in each page
				local lowIndex, highIndex = GetRangeIndex()
				for i = highIndex, lowIndex, -1 do
					--move all cachedGamesData + pageSize
					cachedGamesData[i + pageSize] = cachedGamesData[i]
				end
				for i = 1, pageSize do
					cachedGamesData[i] = nil
				end

				--update all index + pageSize in self.Paging so that we can still get the correct index in cachedGamesData for current web paging
				cachedGamesData_StartIndex = cachedGamesData_StartIndex + pageSize
				cachedGamesData_EndIndex = cachedGamesData_EndIndex + pageSize
				for i = 1, #self.Paging do
					if self.Paging[i] then
						self.Paging[i]["cachedGamesData_StartIndex"] = self.Paging[i]["cachedGamesData_StartIndex"] + pageSize
						self.Paging[i]["cachedGamesData_EndIndex"] = self.Paging[i]["cachedGamesData_EndIndex"] + pageSize
					end
				end
			end

			-- Update cachedGamesData_StartIndex, cachedGamesData_EndIndex and pageUrl for current page
			self.Paging[pagingIndex]["cachedGamesData_StartIndex"] = cachedGamesData_StartIndex
			self.Paging[pagingIndex]["cachedGamesData_EndIndex"] = cachedGamesData_EndIndex
			self.Paging[pagingIndex]["PreviousUrl"] = paging and paging["previousUrl"]
			self.Paging[pagingIndex]["NextUrl"] = paging and paging["nextUrl"]

			local hasPrevUrl = self.Paging[pagingIndex]["PreviousUrl"] and self.Paging[pagingIndex]["PreviousUrl"] ~= ""

			-- No previous page, move all pages left
			if not hasPrevUrl and #data <= dataNeeded and pagingIndex > 1 then
				resetPagingIndex = true
				self:FlushPagingDataFront(pagingIndex, pageSize)
			end

			return data, hasPrevUrl, resetPagingIndex
		end

		-- Update cachedGamesData for curated sort
		function sort:UpdateCachedGamesData(data, pagingIndex, scrollLeft)
			-- If scrolls right, handle data from left to right, otherwise update data from right to left
			local cachedGamesData_StartIndex = self.Paging[pagingIndex] and self.Paging[pagingIndex]["cachedGamesData_StartIndex"]
			local cachedGamesData_EndIndex = self.Paging[pagingIndex] and self.Paging[pagingIndex]["cachedGamesData_EndIndex"]
			if cachedGamesData_StartIndex < 1 then
				-- We don't need the data with cachedGamesData_StartIndex < 1
				-- When we need those data, UpdatePreviousPaging() will move the whole page right, so we don't need to consider about it here
				cachedGamesData_StartIndex = 1
			end

			local indexFrom = scrollLeft and cachedGamesData_EndIndex or cachedGamesData_StartIndex
			local indexTo = scrollLeft and cachedGamesData_StartIndex or cachedGamesData_EndIndex
			local step = scrollLeft and -1 or 1
			for i = indexFrom, indexTo, step do
				local dataIndex = i - cachedGamesData_StartIndex + 1
				local creatorName = data[dataIndex]["CreatorName"]
				local iconId = data[dataIndex]["ImageId"]
				local name = data[dataIndex]["Name"]
				local placeId = data[dataIndex]["PlaceID"]
				local voteData = {
					UpVotes = data[dataIndex]["TotalUpVotes"];
					DownVotes = data[dataIndex]["TotalDownVotes"];
				}
				local creatorId = data[dataIndex]["CreatorID"]

				FlushGameData(i)
				GameData:UpdateGameData(placeId, name, creatorName, iconId, voteData, creatorId)

				cachedGamesData[i] = {}
				cachedGamesData[i].PlaceId = placeId
				cachedGamesData[i].PagingIndex = pagingIndex
				cachedGamesData[i].LastAccessTime = tick()
				currGameCount = currGameCount + 1

--				Utility.DebugLog("SortsData: cachedGamesData", i, placeId, pagingIndex, indexFrom, indexTo)
			end
			ClearCaching()
		end

		-- Return number of entries in current paging, hasPrevUrl(whether there's previousUrl), and resetPagingIndex(whether current pagingIndex has been reset to 1)
		function sort:GetPagingData(pagingIndex, pageSize, scrollLeft, dataNeeded)
			-- pagingIndex is the page number in self.Paging, which is the page returned from the http request(might have <= pageSize games in each page)
			local cachedGamesData_StartIndex = self.Paging[pagingIndex] and self.Paging[pagingIndex]["cachedGamesData_StartIndex"]
			local cachedGamesData_EndIndex = self.Paging[pagingIndex] and self.Paging[pagingIndex]["cachedGamesData_EndIndex"]
			local pagingHasCached = true
			local hasPrevUrl = false
			local resetPagingIndex = false
			if cachedGamesData_StartIndex and cachedGamesData_EndIndex and cachedGamesData_StartIndex > 0 and cachedGamesData_EndIndex >= cachedGamesData_StartIndex then
				for i = cachedGamesData_StartIndex, cachedGamesData_EndIndex do
					if not cachedGamesData[i] then
						pagingHasCached = false
						break
					end
				end
			else
				pagingHasCached = false
			end
--			Utility.DebugLog("SortsData: UpdateCachedGamesData.pagingHasCached", pagingIndex, pagingHasCached, cachedGamesData_StartIndex, cachedGamesData_EndIndex)

			-- The whole page has already in cachedGamesData
			if pagingHasCached then
				hasPrevUrl = self.Paging[pagingIndex]["PreviousUrl"] and self.Paging[pagingIndex]["PreviousUrl"] ~= ""
				return cachedGamesData_EndIndex - cachedGamesData_StartIndex + 1, hasPrevUrl, false
			end

			local data = nil
			if not scrollLeft then
				data = self:UpdateNextPaging(pagingIndex, pageSize)
			else
				data, hasPrevUrl, resetPagingIndex = self:UpdatePreviousPaging(pagingIndex, pageSize, dataNeeded)
				if resetPagingIndex then
					pagingIndex = 1
				end
			end

			if data then
				self:UpdateCachedGamesData(data, pagingIndex, scrollLeft)
				return #data, hasPrevUrl, resetPagingIndex
			end

			return 0
		end

		-- Get PlaceIds in current page, and whether there's previous page if scrolls left
		function sort:GetCuratedSortAsync(pageIndex, pageSize, scrollLeft)
			-- pageIndex is the page number in CarouselController, which has "pageSize"(25) games in each page unless it's the first or last page
			while isLoading do
				wait()
			end

			isLoading = true
			local gamesData = {}
			local hasCached = true
			local hasPrevPage = false
			local startIndex = (pageIndex - 1) * pageSize
			if pageIndex > 0 then
				for i = startIndex + 1, startIndex + pageSize do
					if not cachedGamesData[i] then
						hasCached = false
						break
					end
				end
			else
				hasCached = false
			end

			-- If we don't have full cached data, we fetch the games
			if not hasCached then
				-- Load next page
				if not scrollLeft then
					local webPagingIndex = 1 -- paging index based on web returns that we need to fetch
					local dataNeeded = pageSize -- How many games we need to fetch

					-- If page > 1, we should get current page based on the previous page
					if pageIndex > 1 then
						-- Get paging index from the previous game
						webPagingIndex = cachedGamesData[startIndex].PagingIndex
						if self.Paging[webPagingIndex]["cachedGamesData_EndIndex"] == startIndex then
							-- index from self.Paging[webPagingIndex]["cachedGamesData_StartIndex"] to self.Paging[webPagingIndex]["cachedGamesData_EndIndex"] in cachedGamesData has already been fetched in previous page
							webPagingIndex = webPagingIndex + 1
						else
							-- We need to add the amount of games in the same paging with cachedGamesData[startIndex].PagingIndex to dataNeeded
							-- If the whole paging is already in cache, it won't be fetch again, otherwise we'll fetch the whole paging. This part is handled in self:GetPagingData(), right now we assume current paging need to be fetched again
							for i = startIndex, 1, -1 do
								if cachedGamesData[i].PagingIndex == webPagingIndex then
									dataNeeded = dataNeeded + 1
								else
									break
								end
							end
						end
					end
--					Utility.DebugLog("SortsData: scroll right", pageIndex, startIndex, webPagingIndex, dataNeeded)

					-- Get & update paging data when we need more games
					while dataNeeded > 0 do
						local dataNum = self:GetPagingData(webPagingIndex, pageSize)
						dataNeeded = dataNeeded - dataNum
						webPagingIndex = webPagingIndex + 1
						if dataNum == 0 then
							break
						end
					end

					if dataNeeded > 0 then
						--We hit the edge, flush old data
						for i = pageSize - dataNeeded + 1, pageSize do
							FlushGameData(startIndex + i)
						end
					end
				else
					-- Scroll back: we should fetch page from right to left
					-- Get start paging index that we need to fetch from next item after the last one in current page
					local webPagingIndex = cachedGamesData[startIndex + pageSize + 1].PagingIndex
					local dataNeeded = pageSize -- How many games we need to fetch

					if self.Paging[webPagingIndex]["cachedGamesData_StartIndex"] == startIndex + pageSize + 1 then
						-- index from self.Paging[webPagingIndex]["cachedGamesData_StartIndex"] to self.Paging[webPagingIndex]["cachedGamesData_EndIndex"] in cachedGamesData has already been fetched in next page
						webPagingIndex = webPagingIndex - 1
					else
						-- We need to add the amount of games in the same paging with cachedGamesData[startIndex].PagingIndex to dataNeeded
						-- If the whole paging is already in cache, it won't be fetch again, otherwise we'll fetch the whole paging. This part is handled in self:GetPagingData(), right now we assume current paging need to be fetched again
						for i = startIndex + pageSize + 1, self.Paging[#self.Paging]["cachedGamesData_EndIndex"] do
							if cachedGamesData[i].PagingIndex == webPagingIndex then
								dataNeeded = dataNeeded + 1
							else
								break
							end
						end
					end

--					Utility.DebugLog("SortsData: scroll left", pageIndex, startIndex, webPagingIndex, dataNeeded)
					-- Get & update page data when we need more games
					while dataNeeded > 0 do
						local dataNum, hasPrevUrl, resetPagingIndex = self:GetPagingData(webPagingIndex, pageSize, scrollLeft, dataNeeded)
						dataNeeded = dataNeeded - dataNum

						-- When game numbers in current web paging > dataNeeded, even if current web paging doesn't have prevUrl, we still have prev page for CarouselController with the games left in current web paging
						hasPrevPage = (dataNeeded < 0) or hasPrevUrl

						if resetPagingIndex then
							-- current pagingIndex has been reset to 1
							webPagingIndex = 1
							-- pageIndex should be reset when 1)Insert page at front 2)All pages moved left because of no data at front
							startIndex = 0
							pageIndex = 1
						end
						webPagingIndex = webPagingIndex - 1

						if dataNum == 0 or not hasPrevUrl or webPagingIndex < 0 then
							break
						end
					end

					if dataNeeded > 0 then
						--We hit the edge, flush old data
						for i = 1, dataNeeded do
							FlushGameData(startIndex + i)
						end
					end
				end
			else
				hasPrevPage = pageIndex > 1
--				Utility.DebugLog("SortsData: has cached data", pageIndex, hasPrevPage)
			end

			local indexFrom = scrollLeft and startIndex + pageSize or startIndex + 1
			local indexTo = scrollLeft and startIndex + 1 or startIndex + pageSize
			local step = scrollLeft and -1 or 1
			for index = indexFrom, indexTo, step do
				if cachedGamesData[index] then
					--Update LastAccessTime for the requested section and the data in threshold
					cachedGamesData[index].LastAccessTime = tick()
					if not scrollLeft then
						table.insert(gamesData, cachedGamesData[index].PlaceId)
					else
						table.insert(gamesData, 1, cachedGamesData[index].PlaceId)
					end
				else
					break
				end
			end

			isLoading = false
			return gamesData, hasPrevPage
		end

		function sort:GetSortAsync(startIndex, pageSize)
			while isLoading do
				wait()
			end
			isLoading = true
			local gamesData = {}
			local hasCached = true
			for i = startIndex + 1, startIndex + pageSize do
				if not cachedGamesData[i] then
					hasCached = false
					break
				end
			end

			--If we don't have full cached data, we fetch the pages
			if not hasCached then
				local data = self.httpFunc(startIndex, pageSize, self.userId or self.Id, self.timeFilter)
				if data then
					for i = 1, #data do
						local creatorName = data[i]["CreatorName"]
						local iconId = data[i]["ImageId"]
						local name = data[i]["Name"]
						local placeId = data[i]["PlaceID"]
						local voteData = {
							UpVotes = data[i]["TotalUpVotes"];
							DownVotes = data[i]["TotalDownVotes"];
						}
						local creatorId = data[i]["CreatorID"]

						FlushGameData(startIndex + i)

						GameData:UpdateGameData(placeId, name, creatorName, iconId, voteData, creatorId)

						cachedGamesData[startIndex + i] = {}
						cachedGamesData[startIndex + i].HasData = true
						cachedGamesData[startIndex + i].PlaceId = placeId
						cachedGamesData[startIndex + i].LastAccessTime = tick()
						currGameCount = currGameCount + 1
					end

					--We hit the edge, store empty data
					for i = #data + 1, pageSize do
						cachedGamesData[startIndex + i] = {}
						cachedGamesData[startIndex + i].HasData = false
						cachedGamesData[startIndex + i].LastAccessTime = tick()
					end

					ClearCaching()
				end
			end
			for index = startIndex + 1, startIndex + pageSize do
				if cachedGamesData[index] then
					--Update LastAccessTime for the requested section and the data in threshold
					cachedGamesData[index].LastAccessTime = tick()
					if cachedGamesData[index].HasData then
						table.insert(gamesData, cachedGamesData[index].PlaceId)
					else
						break
					end
				end
			end
			isLoading = false
			return gamesData
		end

		function sort:InitSortAsync()
			if FFlagXboxUseCuratedGameSort and self.GameSetTargetId ~= 0 then
				-- Keep returning DEFAULT_PAGE_SIZE items in each page until there's no more page
				local loadPages = math.ceil(initLoadGameCount/DEFAULT_PAGE_SIZE)
				for i = 1, loadPages do
					local page = self:GetCuratedSortAsync(i, DEFAULT_PAGE_SIZE)
--					Utility.DebugLog("sortsData:InitSortAsync: pageIndex", i, "hasPage", page and #page)
					if not page or #page < DEFAULT_PAGE_SIZE then
						break
					end
				end
			else
				self:GetSortAsync(0, initLoadGameCount)
			end
		end

		function sort:FlushGamesData()
			for index in pairs(cachedGamesData) do
				GameData:ChangeGameDataAccessCount(cachedGamesData[index].PlaceId, -1)
				cachedGamesData[index] = nil
			end
			cachedGamesData = {}
			self.Paging = {}
			currGameCount = 0
		end

		function sort:Destroy()
			self:FlushGamesData()
			if self.eventString and self.objectIDString then
				EventHub:removeEventListener(self.eventString, self.objectIDString)
			end
		end

		return sort
	end


	--Internal utility function to get latest sort
	local function GetSortFromSortId(SortId, GameSetTargetId)
		local sort = nil
		if VisibleSortsDataCached and VisibleSortsDataCached.Data and VisibleSortsId_IndexMap and VisibleSortsId_IndexMap[SortId] and VisibleSortsId_IndexMap[SortId][GameSetTargetId or 0] then
			sort = VisibleSortsDataCached.Data[VisibleSortsId_IndexMap[SortId][GameSetTargetId or 0]]
		end

		return sort or createBaseSort()
	end

	-- Get all sorts used for Xbox
	local function GetSortsAsync(userId)
		local Sorts = {}

		local result = Http.GetGameSortsAsync()
		if result then
			for i = 1, #result do
				if FFlagXboxUseCuratedGameSort then
					local sortId = result[i]["Id"]
					local gameSetTargetId = result[i]["GameSetTargetId"] or 0
					local sortName = result[i]["Name"]
					local sort = createSort(sortId, sortName, gameSetTargetId == 0 and Http.GetSortAsync or Http.GetCuratedSortAsync, nil, gameSetTargetId)
					table.insert(Sorts, sort)
--					Utility.DebugLog(i, "/", #result, ".SortsData.GetSortsAsync", sortId, ", ", gameSetTargetId, ", ", sortName)
				else
					--ignore sort that GameSetTargetId ~= 0
					local gameSetTargetId = result[i]["GameSetTargetId"] or 0
					if gameSetTargetId == 0 then
						local sortId = result[i]["Id"]
						local sortName = result[i]["Name"]
						local sort = createSort(sortId, sortName, Http.GetSortAsync)
						table.insert(Sorts, sort)
					end
				end
			end
		end

		--The Custom Static Sorts will be created only once
		FavoritesSort = FavoritesSort or createSort(SortsData.DefaultSortId.Favorites, Strings:LocalizedString("FavoritesSortTitle"), Http.GetUserFavoritesAsync, userId)
		RecentSort = RecentSort or createSort(SortsData.DefaultSortId.RecentlyPlayed, Strings:LocalizedString("RecentlyPlayedSortTitle"), Http.GetUserRecentAsync, userId)
		MyGamesSort = MyGamesSort or createSort(SortsData.DefaultSortId.MyGames, Strings:LocalizedString("PlayMyPlaceMoreGamesTitle"), Http.GetUserPlacesAsync, userId)

		table.insert(Sorts, FavoritesSort)
		table.insert(Sorts, RecentSort)
		table.insert(Sorts, MyGamesSort)
		return Sorts
	end

	local debounceUpdateCachedData = false
	function SortsData:UpdateSorts()
		if debounceUpdateCachedData then
			while debounceUpdateCachedData do wait() end
		end
		debounceUpdateCachedData = true
		local userId = UserData:GetRbxUserId()
		local startCount = UserChangedCount
		local newSorts = GetSortsAsync(userId)
		--If BG update is suspended, the update shouldn't replace the internal data
		if startCount == UserChangedCount then
			--Update InternalSortsDataCached when it doesn't contain data or not UpdateSuspended
			if not InternalSortsDataCached or not UpdateSuspended then
				if #newSorts > 0 then
					InternalSortsId_IndexMap = {}
					for i = 1, #newSorts do
						spawn(function()
							if newSorts[i] then
								newSorts[i]:FlushGamesData()
								newSorts[i]:InitSortAsync()
							end
						end)
						if InternalSortsId_IndexMap[newSorts[i]["Id"]] == nil then
							InternalSortsId_IndexMap[newSorts[i]["Id"]] = {}
						end
						InternalSortsId_IndexMap[newSorts[i]["Id"]][newSorts[i]["GameSetTargetId"] or 0] = i
					end
					InternalSortsDataCached = {Data = newSorts, Version = tick()}
				end
			end
		end
		debounceUpdateCachedData = false
	end


	function SortsData:CallUpdate(manual)
		if manual then
			ReloaderManager:callReloaderFunc("SortsData", UpdateFuncId)
		else
			ReloaderManager:callReloaderFunc("SortsData", UpdateFuncId, true)
		end
	end

	function SortsData:SuspendUpdate()
		UpdateSuspended = true
		ReloaderManager:suspendReloaderFunc("SortsData", UpdateFuncId)
	end

	function SortsData:ResumeUpdate()
		UpdateSuspended = false
		ReloaderManager:resumeReloaderFunc("SortsData", UpdateFuncId)
	end

	local function CheckCachedData()
		local startCount = UserChangedCount
		--Check whether the cachedData exists, if not, fetch it manually
		if not InternalSortsDataCached then
			while debounceUpdateCachedData do wait() end
			--If still no data, try to fetch InternalSortsDataCached again manually
			if not InternalSortsDataCached then
				ReloaderManager:callReloaderFunc("SortsData", UpdateFuncId)
			end
		end

		if startCount == UserChangedCount then
			if VisibleSortsDataCached and InternalSortsDataCached then
				if VisibleSortsDataCached.Version ~= InternalSortsDataCached.Version then
					--Clear the data in old sorts, the static sorts won't be clear as they are static
					for i = 1, #VisibleSortsDataCached.Data - StaticSortsCount do
						VisibleSortsDataCached.Data[i]:Destroy()
						VisibleSortsDataCached.Data[i] = nil
					end
				end
			end
			VisibleSortsId_IndexMap = InternalSortsId_IndexMap
			VisibleSortsDataCached = InternalSortsDataCached
		end
	end

	--Get sort by sortId, we assume that the sortId corresponds to each sort won't change
	function SortsData:GetSort(sortId, gameSetTargetId)
		CheckCachedData()
		return GetSortFromSortId(sortId, gameSetTargetId)
	end

	function SortsData:GetUserFavorites()
		CheckCachedData()
		return GetSortFromSortId(SortsData.DefaultSortId.Favorites)
	end

	function SortsData:GetUserRecent()
		CheckCachedData()
		return GetSortFromSortId(SortsData.DefaultSortId.RecentlyPlayed)
	end

	function SortsData:GetUserPlaces()
		CheckCachedData()
		return GetSortFromSortId(SortsData.DefaultSortId.MyGames)
	end

	function SortsData:GetGameSearchSort(searchWord)
		if not GameSearchSort then
			GameSearchSort = createSort("GameSearch", "GameSearch", Http.SearchGamesAsync)
		end
		Analytics.SetRBXEventStream("GameSearch", {SearchWord = searchWord})
		GameSearchSort:FlushGamesData()
		GameSearchSort.Id = searchWord
		return GameSearchSort
	end

	function SortsData:GetSorts()
		CheckCachedData()
		return VisibleSortsDataCached
	end

	--Check whether the VisibleSortsDataCached has been initialized
	function SortsData:HasSorts()
		return VisibleSortsDataCached ~= nil
	end
end


return SortsData
