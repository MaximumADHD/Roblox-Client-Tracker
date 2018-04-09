local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
  This endpoint returns a promise that resolves to:

{
  "games": [
    {
      "creatorId": 0,
      "creatorName": "string",
      "creatorType": "string",
      "totalUpVotes": 0,
      "totalDownVotes": 0,
      "universeId": 0,
      "name": "string",
      "placeId": 0,
      "playerCount": 0,
      "imageToken": "string",
      "imageTokenExpiryInSeconds": 0,
      "users": [
        {
          "userId": 0,
          "gameId": "string"
        }
      ],
      "isSponsored": true,
      "nativeAdData": "string"
    }
  ],
  "suggestedKeyword": "string",
  "correctedKeyword": "string",
  "filteredKeyword": "string",
  "hasMoreRows": true
}

 networkImpl - (Service) an object that implements httpGetJson
 argTable - (Table) of argument that is passed into the request

 A sample argTable:
 {
  sortToken = "SOME_SORT_TOKEN",
  gameFilter = "SOME_GAME_FILTER",
  timeFilter = "SOME_TIMER_FILTER",
  genreFilter = "SOME_GENRE_FILTER",
  exclusiveStartId = 1298471975,
  sortOrder = 1,
  keyword = "WHAT_YOU_SEARCH_FOR",
  startRows = 10,
  maxRows = 100,
  isKeywordSuggestionEnabled = true,
  contextCountryRegionId = 50,
  contextUniverseId = 192146914,
 }

]]--


return function(networkImpl, argTable)

  -- construct the url
  local args = Url:makeQueryString(argTable)
	local url = string.format("%sv1/games/list?%s", Url.GAME_URL, args)

	-- return a promise of the result listed above
	return networkImpl:httpGetJson(url)
end