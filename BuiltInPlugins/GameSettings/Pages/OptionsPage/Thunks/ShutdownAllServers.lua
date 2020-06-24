--[[
	Call the corressponding functions to make the network request
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Games = require(Plugin.Src.Networking.Requests.Games)

return function(placeId)
	return function(store)
		Games.ShutdownPlace(placeId):await()
	end
end
