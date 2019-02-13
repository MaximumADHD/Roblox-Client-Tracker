local Modules = game:GetService("CoreGui").RobloxGui.Modules
local CorePackages = game:GetService("CorePackages")
local LuaApp = CorePackages.AppTempCommon.LuaApp
local ArgCheck = require(Modules.LuaApp.ArgCheck)

local GamesGetIcons = require(LuaApp.Http.Requests.GamesGetIcons)
local GameIcon = require(LuaApp.Models.GameIcon)
local SetGameIcons = require(LuaApp.Actions.SetGameIcons)

local PerformFetch = require(Modules.LuaApp.Thunks.Networking.Util.PerformFetch)
local Promise = require(LuaApp.Promise)
local Result = require(LuaApp.Result)

local TableUtilities = require(LuaApp.TableUtilities)

local RETRY_MAX_COUNT = math.max(0, settings():GetFVariable("LuaAppNonFinalThumbnailMaxRetries"))
local RETRY_TIME_MULTIPLIER = 2 -- seconds

local function convertToId(value)
	return tostring(value)
end

local FetchSubdividedGameIcons = {}

function FetchSubdividedGameIcons._fetchIcons(store, networkImpl, universeIds, iconSize, keyMapper)
	return GamesGetIcons(networkImpl, universeIds, iconSize):andThen(
		function(result)
			local results = {}
			for _, universeId in ipairs(universeIds) do
				results[keyMapper({universeId = universeId, iconSize = iconSize})] = Result.new(false, {})
			end

			local validIcons = {}
			local data = result and result.responseBody and result.responseBody.data
			if data ~= nil then
				for _, iconInfo in pairs(data) do
					local success = false
					-- The request is only successful if the icon is in a completed state.
					if iconInfo.state == "Completed" then
						validIcons[convertToId(iconInfo.targetId)] = GameIcon.fromGameIconData(iconInfo)
						success = true
					end
					results[keyMapper({universeId = iconInfo.targetId, iconSize = iconSize})] = Result.new(success, iconInfo)
				end
			end
			store:dispatch(SetGameIcons(validIcons))
			return Promise.resolve(results)
		end,
		function(err)
			local results = {}
			for _, universeId in ipairs(universeIds) do
				results[keyMapper({universeId = universeId, iconSize = iconSize})] = Result.new(false, {})
			end
			return Promise.resolve(results)
		end)
end

function FetchSubdividedGameIcons._fetch(store, networkImpl, universeIds, size, keyMapper)
	return FetchSubdividedGameIcons._fetchIcons(store, networkImpl, universeIds, size, keyMapper):andThen(function(results)
		local completedIcons = {}
		local iconResults = results
		for retryCount = 1, RETRY_MAX_COUNT do
			local remainingUnfinalizedIcons = {}
			for k, result in pairs(iconResults) do
				local _, iconInfo = result:unwrap()
				-- Retry icon request for universeId that failed.
				if iconInfo.state == "Completed" then
					completedIcons[k] = result
				else
					table.insert(remainingUnfinalizedIcons, iconInfo)
				end
			end
			if TableUtilities.FieldCount(remainingUnfinalizedIcons) == 0 then
				--All requests are successful
				return Promise.resolve(completedIcons)
			end
			-- exp retry for remining icons
			wait(RETRY_TIME_MULTIPLIER * math.pow(2, retryCount - 1))
			iconResults = FetchSubdividedGameIcons._fetchIcons(store, networkImpl,
				remainingUnfinalizedIcons, size, keyMapper):await()
		end
		return Promise.resolve(completedIcons)
	end)
end

function FetchSubdividedGameIcons.Fetch(networkImpl, requests, keyMapper)
	ArgCheck.isType(requests, "table", "requests")
	ArgCheck.isNonNegativeNumber(#requests, "requests count")

	FetchSubdividedGameIcons.KeyMapper = keyMapper

	return PerformFetch.Batch(requests, keyMapper, function(store, filteredrequests)
		local universeIdsNeeded = {}
		local size
		-- Filter out the icons that are already in the store.
		for _, request in ipairs(filteredrequests) do
			local universeId = request.universeId
			size = request.iconSize
			table.insert(universeIdsNeeded, universeId)
		end
		return FetchSubdividedGameIcons._fetch(store, networkImpl, universeIdsNeeded, size, keyMapper)
	end)
end

return FetchSubdividedGameIcons