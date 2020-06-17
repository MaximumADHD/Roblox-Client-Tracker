--[[
	Call the corressponding functions to make the network request
]]

local Plugin = script.Parent.Parent.Parent
local Games = require(Plugin.Src.Networking.Requests.Games)

return function()
	return function(store)
		Games.ShutdownGame():await()
	end
end
