local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
    This endpoint returns a promise that resolves to:
    {
        sorts : [
        {
            "token": "flgk4234Gad",
            "name": "Popular",
            "timeOptionsAvailable": false,
            "genreOptionsAvailable": true,
            "numberOfRows": 0,
            "isDefaultSort" : true
        }, {...}, ... ],

        timeFilters : [
        {
            "token": "adfGad23",
            "name": "All Time",
        }, {...}, ... ],

        genreFilters : [
        {
             "token": "fgjfdl23f",
             "name": "Adventure",
        }, {...}, ...],

        gameFilters : [
        {
            "token": "SDFGjkd3",
            "name": "Classic",
        }, {...}, ... ]
    }
]]

-- networkImpl - (Service) an object that implements httpGetJson
return function(networkImpl)
	local url = string.format("%sv1/games/games-page-metadata", Url.GAME_URL)

	-- return a promise of the result listed above
	return networkImpl:httpGetJson(url)
end