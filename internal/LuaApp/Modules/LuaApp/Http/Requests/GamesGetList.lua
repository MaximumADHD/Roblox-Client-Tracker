local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
  This endpoint returns a promise that resolves to:

  [
    {
      "creatorId": 0,
      "creatorName": "string",
      "creatorType": "string",
      "totalUpvotes": 0,
      "totalDownVotes": 0,
      "universeId": 0,
      "name": "string",
      "placeId": 0,
      "playerCount": 0,
      "imageToken": "string"
    }, {...}, ...
  ]

]]--

-- networkImpl - (Service) an object that implements httpGetJson
-- sortId - (string)
-- gameFilterId - (string, optional)
-- timeFilterId - (string, optional)
-- genreFilterId - (string, optional)
-- exclusiveStartId - (long, optional)
-- sortOrder - (int, optional)
-- keyword - (string, optional)
-- useFakeResults - (bool, optional) returns fake results on the test sites
return function(networkImpl,
  sortId,
  gameFilterId,
  timeFilterId,
  genreFilterId,
  exclusiveStartId,
  sortOrder,
  keyword,
  useFakeResults)

   local argTable = {
    sortToken = sortId
  }

  -- append optional parameters
  if gameFilterId then
    argTable.gameFilter = gameFilterId
  end

  if timeFilterId then
    argTable.timeFilter = timeFilterId
  end

  if genreFilterId then
    argTable.genreFilter = genreFilterId
  end

  if exclusiveStartId then
    argTable.exclusiveStartId = exclusiveStartId
  end

  if sortOrder then
    argTable.sortOrder = sortOrder
  end

  if keyword then
    argTable.keyword = keyword
  end

  if useFakeResults then
    argTable.useFakeResults = useFakeResults
  end

  -- construct the url
  local args = Url:makeQueryString(argTable)
	local url = string.format("%sv1/games/list?%s", Url.GAME_URL, args)

	-- return a promise of the result listed above
	return networkImpl:httpGetJson(url)
end