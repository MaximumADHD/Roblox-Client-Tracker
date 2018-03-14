local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
  This endpoint returns a promise that resolves to:

  [
    {
      "token": "string",
      "name": "string",
      "timeOptionsAvailable": true,
      "genreOptionsAvailable": true,
      "numberOfRows": 0,
      "isDefaultSort": true
    }, {...}, ...
  ]

]]--

-- networkImpl - (Service) an object that implements httpGetJson
return function(networkImpl)
	local url = string.format("%sv1/games/all-sorts", Url.GAME_URL)

	-- return a promise of the result listed above
	return networkImpl:httpGetJson(url)
end