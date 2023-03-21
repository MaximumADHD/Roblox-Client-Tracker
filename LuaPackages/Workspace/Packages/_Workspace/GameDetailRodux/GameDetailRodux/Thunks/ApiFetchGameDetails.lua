--!nonstrict
local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Packages = GameDetailRodux.Parent

local Promise = require(Packages.Promise)
local ArgCheck = require(Packages.ArgCheck)
local Result = require(Packages.Result)
local PerformFetch = require(Packages.Http).PerformFetch

local GamesMultigetDetails = require(script.Parent.GamesMultigetDetails)
local AddGameDetails = require(GameDetailRodux.Actions.AddGameDetails)
local GameDetail = require(GameDetailRodux.Models.GameDetailModel)

local Logger = require(GameDetailRodux.Logger)

local ApiFetchGameDetails = {}

local keyMapper = function(universeId)
	return "luaapp.gamesapi.games." .. universeId
end

ApiFetchGameDetails.KeyMapper = keyMapper

function ApiFetchGameDetails.GetFetchingStatus(state, universeId)
	return PerformFetch.GetStatus(state, keyMapper(universeId))
end

function ApiFetchGameDetails.Fetch(networkImpl, universeIds)
	ArgCheck.isType(universeIds, "table", "ApiFetchGameDetails: universeIds")

	return PerformFetch.Batch(universeIds, keyMapper, function(store, filteredUniverseIds)
		return GamesMultigetDetails(networkImpl, filteredUniverseIds):andThen(function(result)
			local results = {}

			local data = result and result.responseBody and result.responseBody.data
			if data ~= nil then
				local decodedGameDetails = {}

				for _, gameDetails in ipairs(data) do
					local decodedGameDetail = GameDetail.fromJsonData(gameDetails)
					decodedGameDetails[decodedGameDetail.id] = decodedGameDetail
					results[keyMapper(decodedGameDetail.id)] = Result.new(true, decodedGameDetail)
				end

				if next(decodedGameDetails) then
					store:dispatch(AddGameDetails(decodedGameDetails))
				end
			else
				Logger:warning("Response from GamesMultigetDetails is malformed!")
			end

			return Promise.resolve(results)
		end, function(err)
			return Promise.resolve({})
		end)
	end)
end

return ApiFetchGameDetails
