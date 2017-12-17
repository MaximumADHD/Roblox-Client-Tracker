--[[
			// GameData.lua

			// Fetches data for a game to be used to fill out
			// the details of that game
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Http = require(ShellModules:FindFirstChild('Http'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local UserData = require(ShellModules:FindFirstChild('UserData'))
local ConvertMyPlaceNameInXboxAppFlag = Utility.IsFastFlagEnabled("ConvertMyPlaceNameInXboxApp")
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local CreateCacheData = require(ShellModules:FindFirstChild('CachedData'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))

local ThirdPartyUserService = nil
pcall(function()ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)

local GameData = {}

local gameCreatorCache = {}
function GameData:GetGameCreatorAsync(placeId)
	if placeId then
		if not gameCreatorCache[placeId] then
			local gameDataByPlaceId = self:GetGameDataAsync(placeId)
			gameCreatorCache[placeId] = gameDataByPlaceId:GetCreatorName()
		end
		return gameCreatorCache[placeId]
	end
end

function GameData:ExtractGeneratedUsername(gameName)
	local tempUsername = string.match(gameName, "^([0-9a-fA-F]+)'s Place$")
	if tempUsername and #tempUsername == 32 then
		return tempUsername
	end
end

-- Fix places that have been made with incorrect temporary usernames
-- creatorName is optional and must be used when querying a game that is
-- not the current user's creation
function GameData:GetFilteredGameName(gameName, creatorName)
	if ConvertMyPlaceNameInXboxAppFlag and gameName and type(gameName) == 'string' then
		local tempUsername = self:ExtractGeneratedUsername(gameName)
		if tempUsername then
			local realUsername = creatorName or UserData:GetRobloxName()
			if realUsername then
				local newGameName = string.gsub(gameName, tempUsername, realUsername, 1)
				if newGameName then
					return newGameName
				end
			end
		end
	end
	return gameName
end

function GameData:GetGameDataAsync(placeId)
	local this = {}

	local result = Http.GetGameDetailsAsync(placeId)
	if not result then
		Utility.DebugLog("GameData:GetGameDataAsync() failed to get web response for placeId "..tostring(placeId))
		result = {}
	end

	this.Data = result

	--[[ Public API ]]--
	function this:GetCreatorName()
		return self.Data["Builder"] or ""
	end
	function this:GetDescription()
		return self.Data["Description"] or ""
	end
	function this:GetIsFavoritedByUser()
		return self.Data["IsFavoritedByUser"] or false
	end
	function this:GetLastUpdated()
		return self.Data["Updated"] or ""
	end
	function this:GetCreationDate()
		return self.Data["Created"] or ""
	end
	function this:GetMaxPlayers()
		return self.Data["MaxPlayers"] or 0
	end
	function this:GetOverridesDefaultAvatar()
		return self.Data["OverridesDefaultAvatar"] or false
	end
	--IsExperimental means not Filtering Enabled
	function this:GetIsExperimental()
		return self.Data["IsExperimental"] or false
	end
	function this:GetCreatorUserId()
		return self.Data["BuilderId"]
	end

	--[[ Async Public API ]]--
	function this:GetVoteDataAsync()
		local result = Http.GetGameVotesAsync(placeId)
		if not result then
			Utility.DebugLog("GameData:GetVoteDataAsync() failed to get web response for placeId "..tostring(placeId))
		end

		local voteData = {}
		local voteTable = result and result["VotingModel"] or nil

		if voteTable then
			voteData.UpVotes = voteTable["UpVotes"] or 0
			voteData.DownVotes = voteTable["DownVotes"] or 0
			voteData.UserVote = voteTable["UserVote"]
			voteData.CanVote = voteTable["CanVote"] or false
			voteData.CantVoteReason = voteTable["ReasonForNotVoteable"] or "PlayGame"
		end

		return voteData
	end

	function this:GetGameIconIdAsync()
		local iconId = nil
		local result = Http.GetGameIconIdAsync(placeId)
		if result then
			iconId = result["ImageId"]
			-- use placeId as backup
			if not iconId then
				iconId = placeId
			end
		end

		return iconId
	end

	function this:GetRecommendedGamesAsync()
		local result = Http.GetRecommendedGamesAsync(placeId)
		if not result then
			Utility.DebugLog("GameData:GetRecommendedGamesAsync() failed to get web response for placeId "..tostring(placeId))
			return {}
		end

		local recommendedGames = {}
		for i = 1, #result do
			local data = result[i]
			if data then
				local game = {}
				-- Temp fix for fixing game names
				game.Name = GameData:GetFilteredGameName(data["GameName"], data["Creator"] and data["Creator"]["CreatorName"])
				game.PlaceId = data["PlaceId"]
				game.IconId = data["ImageId"]
				table.insert(recommendedGames, game)
			end
		end

		return recommendedGames
	end

	function this:GetThumbnailIdsAsync()
		local result = Http.GetGameThumbnailsAsync(placeId)
		if not result then
			Utility.DebugLog("GameData:GetThumbnailIdsAsync() failed to get web response for placeId "..tostring(placeId))
			return {}
		end

		local thumbIds = {}
		local thumbIdTable = result["thumbnails"]
		if thumbIdTable then
			for i = 1, #thumbIdTable do
				local data = thumbIdTable[i]
				-- AssetTypeId of 1 is a Image (33 is a video if can ever play videos)
				if data and data["AssetTypeId"] == 1 then
					local assetId = data["AssetId"]
					if assetId then
						table.insert(thumbIds, assetId)
					end
				end
			end
		end

		return thumbIds
	end

	function this:GetBadgeDataAsync()
		local result = Http.GetGameBadgeDataAsync(placeId)
		if not result then
			Utility.DebugLog("GameData:GetBadgeDataAsync() failed to get web response for placeId "..tostring(placeId))
			return {}
		end

		local badgeData = {}
		local badgeTable = result["GameBadges"]
		if badgeTable then
			for i = 1, #badgeTable do
				local data = badgeTable[i]
				if data then
					local badge = {}
					badge.Name = data["Name"]
					badge.Description = data["Description"]
					badge.AssetId = data["BadgeAssetId"]
					badge.IsOwned = data["IsOwned"]
					badge.Order = i
					table.insert(badgeData, badge)
				end
			end
		end

		table.sort(badgeData, function(a, b)
			if a["IsOwned"] == true and b["IsOwned"] == true then
				return a.Order < b.Order
			elseif a["IsOwned"] then
				return true
			elseif b["IsOwned"] then
				return false
			end
			return a.Order < b.Order
		end)

		return badgeData
	end

	--[[ Post Public API ]]--
	function this:PostFavoriteAsync()
		local result = Http.PostFavoriteToggleAsync(placeId)
		local success = result and result["success"] == true
		EventHub:dispatchEvent(EventHub.Notifications["FavoriteToggle"], success)
		if not success then
			local reason = "Failed"
			-- the floodcheck message is "Whoa. Slow Down.". So if there is a message,
			-- let's just say flood check?
			if result and result["message"] then
				reason = "FloodCheck"
			end
			return success, reason
		else
			self.Data["IsFavoritedByUser"] = not self:GetIsFavoritedByUser()
		end
		return success
	end

	function this:PostVoteAsync(status)
		local result = Http.PostGameVoteAsync(placeId, status)
		if not result then
			return nil
		end

		local success = result["Success"] == true
		if not success then
			return success, result["ModalType"]
		end

		return success
	end

	-- Temp fix for fixing game names
	if this.Data then
		this.Data.Name = GameData:GetFilteredGameName(this.Data.Name, this:GetCreatorName())
	end

	return this
end


--New GameData Cached
local UserChangedCount = 0
local maxGameCachedDataCount = 5000
local currGameCachedDataCount = 0
local gameCachedData = {}

if ThirdPartyUserService then
	ThirdPartyUserService.ActiveUserSignedOut:connect(function()
		GameData:FlushGameData()
		UserChangedCount = UserChangedCount + 1
	end)
end


--Currently, UpdateGameData will be called in three places:
--1. When we request the games in sort, we UpdateGameData with full args(placeId, name, creatorName, iconId, voteData, creatorId)
--2. When we request the Recommended Games in sort, we UpdateGameData with first 4 args(placeId, name, creatorName, iconId)
--3. When we try to GameData:GetGameData(placeId) but found the data has been flushed out, we will UpdateGameData with placeId and re-fetch the data
--args order: placeId, name, creatorName, iconId, voteData, creatorId
function GameData:UpdateGameData(...)
	local args = { n = select("#", ...); ... }
	if args.n >= 1 then
		local placeId = args[1]
		local name = args[2]
		local creatorName = args[3]
		local iconId = args[4]
		local voteData = args[5]
		local creatorId = args[6]

		if not gameCachedData[placeId] then
			gameCachedData[placeId] = {}

			local this = gameCachedData[placeId]
			this.UpdateDebounce = true
			this.RelatedGuiObjects = {}
			this.AccessCount = 1

			local function GetGameDetailsRefreshInterval()
				return GlobalSettings.GameDetailsRefreshInterval
			end

			--Game Details Data
			local function RefreshGameDetailsAsync(gameData)
				local startCount = UserChangedCount
				local Valid = false
				local result = Http.GetGameDetailsAsync(gameData.PlaceId)
				if not result then
					Utility.DebugLog("RefreshGameDetailsAsync() failed to get web response for placeId "..tostring(gameData.PlaceId))
				else
					if startCount == UserChangedCount then
						--for CreatorName and Name, we use the data from initialization unless they were not provided when init
						gameData.CreatorName = gameData.CreatorName or result["Builder"] or ""
						gameData.Name = gameData.Name or GameData:GetFilteredGameName(result["Name"], gameData.CreatorName)

						gameData.Description = result["Description"] or ""
						gameData.IsFavorited = result["IsFavoritedByUser"] or false
						gameData.LastUpdated = result["Updated"] or ""
						gameData.CreationDate = result["Created"] or ""
						gameData.MaxPlayers = result["MaxPlayers"] or 0
						gameData.OverridesDefaultAvatar = result["OverridesDefaultAvatar"] or false
						gameData.IsExperimental = result["IsExperimental"] or false
						gameData.CreatorUserId = result["BuilderId"]
						Valid = true
					end
				end

				return Valid
			end
			local GameDetailsCachedData = CreateCacheData(this, nil, GetGameDetailsRefreshInterval, RefreshGameDetailsAsync)

			--Vote Data
			local function RefreshVoteDataAsync(gameData)
				local startCount = UserChangedCount
				local Valid = false
				local result = Http.GetGameVotesAsync(gameData.PlaceId)
				if not result then
					Utility.DebugLog("RefreshVoteDataAsync() failed to get web response for placeId "..tostring(gameData.PlaceId))
				else
					if startCount == UserChangedCount then
						local voteData = {}
						local voteTable = result and result["VotingModel"] or nil

						if voteTable then
							voteData.UpVotes = voteTable["UpVotes"] or 0
							voteData.DownVotes = voteTable["DownVotes"] or 0
							voteData.UserVote = voteTable["UserVote"]
							voteData.CanVote = voteTable["CanVote"] or false
							voteData.CantVoteReason = voteTable["ReasonForNotVoteable"] or "PlayGame"
							gameData.VoteData = voteData
							Valid = true
						end
					end
				end

				return Valid
			end

			local VoteCachedData = CreateCacheData(this, nil, GetGameDetailsRefreshInterval, RefreshVoteDataAsync)

			--Recommended Games
			local function RefreshRecommendedGamesAsync(gameData)
				local startCount = UserChangedCount
				local Valid = false
				local result = Http.GetRecommendedGamesAsync(gameData.PlaceId)
				if not result then
					Utility.DebugLog("RefreshRecommendedGamesAsync() failed to get web response for placeId "..tostring(gameData.PlaceId))
				else
					if startCount == UserChangedCount then
						--clear old data
						if gameData.RecommendedGames then
							for i = 1, #gameData.RecommendedGames do
								local recommendedGamePlaceId = gameData.RecommendedGames[i]
								if recommendedGamePlaceId then
									local recommendedGameData = GameData:GetGameData(recommendedGamePlaceId)
									if recommendedGameData then
										recommendedGameData.AccessCount = recommendedGameData.AccessCount - 1
									end
								end
								gameData.RecommendedGames[i]= nil
							end
						end

						local recommendedGames = {}
						for i = 1, #result do
							local data = result[i]
							if data then
								local game = {}
								-- Temp fix for fixing game names
								local creatorName = data["Creator"] and data["Creator"]["CreatorName"]
								local name = GameData:GetFilteredGameName(data["GameName"], creatorName)
								local placeId = data["PlaceId"]
								local iconId = data["ImageId"]

								GameData:UpdateGameData(placeId, name, creatorName, iconId)
								table.insert(recommendedGames, placeId)
							end
						end

						gameData.RecommendedGames = recommendedGames
						Valid = true
					end
				end

				return Valid
			end

			local RecommendedGamesCachedData = CreateCacheData(this, nil, GetGameDetailsRefreshInterval, RefreshRecommendedGamesAsync)

			--ThumbnailIds
			local function RefreshThumbnailIdsAsync(gameData)
				local startCount = UserChangedCount
				local Valid = false
				local result = Http.GetGameThumbnailsAsync(gameData.PlaceId)
				if not result then
					Utility.DebugLog("RefreshThumbnailIdsAsync() failed to get web response for placeId "..tostring(gameData.PlaceId))
				else
					if startCount == UserChangedCount then
						local thumbIds = {}
						local thumbIdTable = result["thumbnails"]
						if thumbIdTable then
							for i = 1, #thumbIdTable do
								local data = thumbIdTable[i]
								-- AssetTypeId of 1 is a Image (33 is a video if can ever play videos)
								if data and data["AssetTypeId"] == 1 then
									local assetId = data["AssetId"]
									if assetId then
										table.insert(thumbIds, assetId)
									end
								end
							end
						end

						gameData.ThumbnailIds = thumbIds
						Valid = true
					end
				end
				return Valid
			end

			local ThumbnailIdsCachedData = CreateCacheData(this, nil, GetGameDetailsRefreshInterval, RefreshThumbnailIdsAsync)


			--Badges
			local function RefreshBadgeDataAsync(gameData)
				local startCount = UserChangedCount
				local Valid = false
				local result = Http.GetGameBadgeDataAsync(gameData.PlaceId)
				if not result then
					Utility.DebugLog("GameData:GetBadgeDataAsync() failed to get web response for placeId "..tostring(gameData.PlaceId))
				else
					if startCount == UserChangedCount then
						local badgeData = {}
						local badgeTable = result["GameBadges"]
						if badgeTable then
							for i = 1, #badgeTable do
								local data = badgeTable[i]
								if data then
									local badge = {}
									badge.Name = data["Name"]
									badge.Description = data["Description"]
									badge.AssetId = data["BadgeAssetId"]
									badge.IsOwned = data["IsOwned"]
									badge.Order = i
									table.insert(badgeData, badge)
								end
							end
						end

						table.sort(badgeData, function(a, b)
							if a["IsOwned"] == true and b["IsOwned"] == true then
								return a.Order < b.Order
							elseif a["IsOwned"] then
								return true
							elseif b["IsOwned"] then
								return false
							end
							return a.Order < b.Order
						end)

						gameData.BadgeData = badgeData
						Valid = true
					end
				end
				return Valid
			end

			local BadgeCachedData = CreateCacheData(this, nil, GetGameDetailsRefreshInterval, RefreshBadgeDataAsync)

			--[[ Async Public API ]]--
			--We don't want to run so many loading funcs in the BG at intervals,
			--so, these reload will be made when the data is requested
			function this:GetGameDetailsAsync()
				GameDetailsCachedData:Refresh()
				local gameData = self or {}
				self.OnGetGameDetailsEnd:fire(gameData)
				return gameData
			end

			function this:GetVoteDataAsync()
				VoteCachedData:Refresh()
				local voteData = self.VoteData or {}
				self.OnGetVoteDataEnd:fire(voteData)
				return voteData
			end

			function this:GetRecommendedGamesAsync()
				RecommendedGamesCachedData:Refresh()
				local recommendedGames = self.RecommendedGames or {}
				self.OnGetRecommendedGamesEnd:fire(recommendedGames)
				return recommendedGames
			end

			function this:GetThumbnailIdsAsync()
				ThumbnailIdsCachedData:Refresh()
				local thumbnailIds = self.ThumbnailIds or {}
				self.OnGetThumbnailIdsEnd:fire(thumbnailIds)
				return thumbnailIds
			end

			function this:GetBadgeDataAsync()
				BadgeCachedData:Refresh()
				local badgeData = self.BadgeData or {}
				self.OnGetBadgeDataEnd:fire(badgeData)
				return badgeData
			end

			--We force update IconId whenever it get called
			local debounceGetGameIconIdAsync = false
			function this:GetGameIconIdAsync()
				while debounceGetGameIconIdAsync do
					wait()
				end
				debounceGetGameIconIdAsync = true

				local startCount = UserChangedCount
				local iconId = nil
				local result = Http.GetGameIconIdAsync(placeId)
				if result then
					iconId = result["ImageId"]
					-- use placeId as backup
					if not iconId then
						iconId = placeId
					end
				end

				if startCount == UserChangedCount then
					self.IconId = iconId
				end
				debounceGetGameIconIdAsync = false
				return iconId
			end

			function this:SetCanVote(value)
				local voteData = self.VoteData
				voteData.CanVote = value
				voteData.CantVoteReason = value and "" or "PlayGame"
			end


			--[[ Post Public API ]]--
			function this:PostFavoriteAsync()
				local result = Http.PostFavoriteToggleAsync(placeId)
				local success = result and result["success"] == true
				local reason = nil
				if not success then
					reason = "Failed"
					-- the floodcheck message is "Whoa. Slow Down.". So if there is a message,
					-- let's just say flood check?
					if result and result["message"] then
						reason = "FloodCheck"
					end
				else
					self.IsFavorited = not self.IsFavorited
				end
				EventHub:dispatchEvent(EventHub.Notifications["FavoriteToggle"], success, self.PlaceId)

				if not success then
					return success, reason
				else
					return success
				end
			end

			function this:PostVoteAsync(newVote)
				local result = Http.PostGameVoteAsync(placeId, newVote)
				if not result then
					return nil
				end

				local success = result["Success"] == true
				if not success then
					return success, result["ModalType"]
				else
					local voteData = self.VoteData
					local prevVote = voteData.UserVote
					if newVote == true then
						voteData.UpVotes = (voteData.UpVotes or 0) + 1
						if prevVote == false then
							voteData.DownVotes = (voteData.DownVotes or 0) - 1
						end
					elseif newVote == false then
						voteData.DownVotes = (voteData.DownVotes or 0) + 1
						if prevVote == true then
							voteData.UpVotes = (voteData.UpVotes or 0) - 1
						end
					elseif newVote == nil then
						if prevVote == true then
							voteData.UpVotes = (voteData.UpVotes or 0) - 1
						elseif prevVote == false then
							voteData.DownVotes = (voteData.DownVotes or 0) - 1
						end
					end
					voteData.UserVote = newVote
				end

				return success
			end

			--Init Data and Signals
			this.OnGetGameDetailsEnd = Utility.Signal()
			this.OnGetVoteDataEnd = Utility.Signal()
			this.OnGetRecommendedGamesEnd = Utility.Signal()
			this.OnGetThumbnailIdsEnd = Utility.Signal()
			this.OnGetBadgeDataEnd = Utility.Signal()

			if args.n > 1 then
				if args.n > 3 then
					this.PlaceId = placeId
					this.Name = GameData:GetFilteredGameName(name, creatorName)
					this.CreatorName = creatorName
					this.IconId = iconId
				end

				--these two are optional
				if args.n > 5 then
					this.VoteData = voteData
					this.CreatorUserId = creatorId
				end
			else
				this.PlaceId = placeId
				--No init data, we fetch the essential ones (name, creatorName, iconId)
				this:GetGameDetailsAsync()
				this:GetGameIconIdAsync()
			end

			this.UpdateDebounce = false
			currGameCachedDataCount = currGameCachedDataCount + 1

			--Need to clear Cached Data now
			if currGameCachedDataCount > maxGameCachedDataCount then
				local gameCachedDataSorted = {}
				for key in pairs(gameCachedData) do
					--Add key attribute
					gameCachedData[key].Key = key
					--Recalc the Total AccessCount for every cached data
					gameCachedData[key].TotalAccessCount = 0
					if gameCachedData[key].RelatedGuiObjects then
						local newRelatedGuiObjects = {}
						for i = 1, #gameCachedData[key].RelatedGuiObjects do
							local relatedGuiObject = gameCachedData[key].RelatedGuiObjects[i]
							if relatedGuiObject and relatedGuiObject:IsA("GuiObject") and relatedGuiObject.Parent then
								gameCachedData[key].TotalAccessCount = gameCachedData[key].TotalAccessCount + 1
								table.insert(newRelatedGuiObjects, relatedGuiObject)
							end
						end
						gameCachedData[key].TotalAccessCount = gameCachedData[key].TotalAccessCount + gameCachedData[key].AccessCount
						gameCachedData[key].RelatedGuiObjects = newRelatedGuiObjects
					end
					table.insert(gameCachedDataSorted, gameCachedData[key])
				end

				currGameCachedDataCount = #gameCachedDataSorted
				--Double check, in case we miscounted the currGameCachedDataCount
				if currGameCachedDataCount > maxGameCachedDataCount then
					--Put not used data in the back
					table.sort(gameCachedDataSorted, function(a, b)
						return a.TotalAccessCount > b.TotalAccessCount
					end)

					--Make sure the removed data is not used anywhere and clear all not in use cached data
					--kind of optimization so we don't clear caching for each single overloaded item
					while gameCachedDataSorted[#gameCachedDataSorted] and gameCachedDataSorted[#gameCachedDataSorted].TotalAccessCount <= 0 do
						local RemovingKey = gameCachedDataSorted[#gameCachedDataSorted].Key
						--Clear RecommendedGames Access
						if gameCachedData[RemovingKey].RecommendedGames then
							local recommendedGames = gameCachedData[RemovingKey].RecommendedGames
							for i = 1, #recommendedGames do
								local recommendedGamePlaceId = recommendedGames[i]
								if recommendedGamePlaceId then
									local recommendedGameData = GameData:GetGameData(recommendedGamePlaceId)
									if recommendedGameData then
										recommendedGameData.AccessCount = recommendedGameData.AccessCount - 1
									end
								end
								recommendedGames[i]= nil
							end
						end
						gameCachedData[RemovingKey] = nil
						gameCachedDataSorted[#gameCachedDataSorted] = nil
					end
					currGameCachedDataCount = #gameCachedDataSorted
				end
			end
		else
			local gameData = gameCachedData[placeId]
			gameData.UpdateDebounce = true
			gameData.AccessCount = gameData.AccessCount and gameData.AccessCount + 1 or 1

			--Update Data
			if args.n > 3 then
				gameData.PlaceId = placeId
				gameData.Name = GameData:GetFilteredGameName(name, creatorName)
				gameData.CreatorName = creatorName

				--We only use the IconId comes with init to avoid game button icon updates
				if not gameData.IconId then
					gameData.IconId = iconId
				end
			end

			--these two are optional
			if args.n > 5 then
				gameData.VoteData = voteData
				gameData.CreatorUserId = creatorId
			end

			gameData.UpdateDebounce = false
		end
	end
end


function GameData:GetGameData(placeId, asyncFetch)
	if placeId then
		if asyncFetch then
			if gameCachedData[placeId] then
				--if asyncFetch, we wait until the update is done
				while gameCachedData[placeId] and gameCachedData[placeId].UpdateDebounce do
					wait()
				end
			else
				--Will refetch data if the data has been flushed from cached data,
				--should never happen, as we don't clear cached data as long as there is still any access to it
				GameData:UpdateGameData(placeId)
			end
		end
		return gameCachedData[placeId]
	end
end

--This is the most robust way to ensure that we don't flush cached gamedata when it's still used on some guiObject.
--Make sure the guiObject already has Parent set up when added
function GameData:AddRelatedGuiObject(placeId, guiObject)
	if placeId and guiObject and guiObject:IsA("GuiObject") and guiObject.Parent then
		local gameData = GameData:GetGameData(placeId)
		if gameData then
			table.insert(gameData.RelatedGuiObjects, guiObject)
		end
	end
end

--This is the most robust way to ensure that we don't flush cached gamedata when it's still used on sort pages.
function GameData:ChangeGameDataAccessCount(placeId, changeValue)
	if placeId then
		local gameData = GameData:GetGameData(placeId)
		if gameData then
			gameData.AccessCount = gameData.AccessCount + changeValue
		end
	end
end

function GameData:FlushGameData()
	for placeId, data in pairs(gameCachedData) do
		gameCachedData[placeId] = nil
	end
	gameCachedData = {}
	currGameCachedDataCount = 0
end

return GameData
