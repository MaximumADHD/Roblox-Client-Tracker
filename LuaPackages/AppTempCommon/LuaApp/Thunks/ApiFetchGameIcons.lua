local Modules = game:GetService("CoreGui").RobloxGui.Modules
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local ArgCheck = require(Modules.LuaApp.ArgCheck)

local FetchSubdividedGameIcons = require(script.Parent.FetchSubdividedGameIcons)

local PerformFetch = require(Modules.LuaApp.Thunks.Networking.Util.PerformFetch)

local ICON_PAGE_COUNT = 100
local ICON_SIZE = "150x150"

local function convertToId(value)
	return tostring(value)
end

local ApiFetchGameIcons = {}

local keyMapper = function (request)
	local universeId = request.universeId
	local size = request.iconSize and "."..request.iconSize or ""
	return "luaapp.thumbnails.games.icons." .. convertToId(universeId)..size
end

ApiFetchGameIcons.KeyMapper = keyMapper

local function subdivideUniverseIdsArray(requests, limit)
	local someTokens = {}
	for i = 1, #requests, limit do
		local subArray = Cryo.List.getRange(requests, i, i + limit - 1)
		table.insert(someTokens, subArray)
	end
	return someTokens
end

function ApiFetchGameIcons.Fetch(networkImpl, universeIds, imageSize)
	return function(store)
		local size = imageSize or ICON_SIZE
		ArgCheck.isType(universeIds, "table", "universeIds")
		ArgCheck.isNonNegativeNumber(#universeIds, "universeIds count")

		local requests = {}
		local state = store:getState()
		local gameIcons = state.GameIcons

		-- Filter out the icons that are already in the store.
		for _, universeId in pairs(universeIds) do
			if gameIcons[universeId] == nil then
				table.insert(requests, {
					universeId = universeId,
					iconSize = size,
				})
			end
		end
		local subdividedRequestsArray = subdivideUniverseIdsArray(requests, ICON_PAGE_COUNT)
		for _, subdividedRequests in ipairs(subdividedRequestsArray) do
			store:dispatch(FetchSubdividedGameIcons.Fetch(networkImpl, subdividedRequests, keyMapper))
		end
	end
end


function ApiFetchGameIcons.GetFetchingStatus(state, universeId, iconSize)
	return PerformFetch.GetStatus(state, keyMapper({universeId = universeId, iconSize = iconSize}))
end

return ApiFetchGameIcons