--!nonstrict
local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local Packages = PlayabilityRodux.Parent

-- TODO remove with FFlagLuaAppWorkspaceUseLumberyakLogger
local CorePackages = game:GetService("CorePackages")
local Logging = require(CorePackages.Logging)

local Promise = require(Packages.Promise)
local Result = require(Packages.Result)
local PerformFetch = require(Packages.Http).PerformFetch
local GamesMultigetPlayabilityStatus = require(PlayabilityRodux.Requests.GamesMultigetPlayabilityStatus)
local SetPlayabilityStatus = require(PlayabilityRodux.Actions).SetPlayabilityStatus
local PlayabilityStatus = require(PlayabilityRodux.Models).PlayabilityStatusModel
local MAX_UNIVERSE_IDS = 100

local Logger = require(PlayabilityRodux.Logger)

local GetFFlagLuaAppWorkspaceUseLumberyakLogger =
	require(Packages.SharedFlags).GetFFlagLuaAppWorkspaceUseLumberyakLogger

local function keyMapper(universeId)
	return "luaapp.gamesapi.playabilitystatus." .. universeId
end

local ApiFetchPlayabilityStatus = {}

ApiFetchPlayabilityStatus.KeyMapper = keyMapper

function ApiFetchPlayabilityStatus.Fetch(networkImpl, universeIds)
	assert(type(universeIds) == "table", "ApiFetchPlayabilityStatus thunk expects universeIds to be a table")
	assert(#universeIds > 0, "ApiFetchPlayabilityStatus thunk expects universeIds count to be greater than 0")
	assert(
		#universeIds <= MAX_UNIVERSE_IDS,
		"ApiFetchPlayabilityStatus thunk expects universeIds count to not exceed " .. MAX_UNIVERSE_IDS
	)

	return PerformFetch.Batch(universeIds, keyMapper, function(store, filteredUniverseIds)
		return GamesMultigetPlayabilityStatus(networkImpl, filteredUniverseIds):andThen(function(result)
			local results = {}
			for _, universeId in ipairs(filteredUniverseIds) do
				results[keyMapper(universeId)] = Result.new(false, nil)
			end

			local data = result and result.responseBody
			if data ~= nil then
				local playabilityStatusTable = {}
				for _, playabilityStatus in pairs(data) do
					local decodedPlayabilityStatusResult = PlayabilityStatus.fromJsonData(playabilityStatus)

					decodedPlayabilityStatusResult
						:match(function(decodedPlayabilityStatus)
							playabilityStatusTable[decodedPlayabilityStatus.universeId] = decodedPlayabilityStatus
							results[keyMapper(tostring(playabilityStatus.universeId))] = Result.new(true, nil)
						end)
						:matchError(function(decodeError)
							warn(decodeError)
						end)
				end

				if next(playabilityStatusTable) then
					store:dispatch(SetPlayabilityStatus(playabilityStatusTable))
				end
			else
				if GetFFlagLuaAppWorkspaceUseLumberyakLogger() then
					Logger:warning("Response from GameGetVotes is malformed!")
				else
					Logging.warn("Response from GameGetVotes is malformed!")
				end
			end

			return Promise.resolve(results)
		end, function(err)
			local results = {}
			for _, universeId in ipairs(filteredUniverseIds) do
				results[keyMapper(universeId)] = Result.new(false, nil)
			end
			return Promise.resolve(results)
		end)
	end)
end

function ApiFetchPlayabilityStatus.GetFetchingStatus(state, universeId)
	return PerformFetch.GetStatus(state, keyMapper(universeId))
end

return ApiFetchPlayabilityStatus
