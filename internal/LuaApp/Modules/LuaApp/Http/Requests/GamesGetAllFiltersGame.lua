local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
    This endpoint returns a promise that resolves to:

    [
        {
            "token": "0",
            "name": "Any"
        },
        {
            "token": "1",
            "name": "Classic"
        }
    ]
]]--

-- networkImpl - (Service) an object that implements httpGetJson
return function(networkImpl)
    local url = string.format("%sv1/games/all-game-filters", Url.GAME_URL)

	  -- return a promise of the result listed above
	  return networkImpl:httpGetJson(url)
end