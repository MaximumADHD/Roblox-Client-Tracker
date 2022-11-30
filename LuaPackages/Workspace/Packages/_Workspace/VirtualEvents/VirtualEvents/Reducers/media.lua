local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local network = require(VirtualEvents.network)
local NetworkingGames = network.NetworkingGames
local mediaImpl = require(script.Parent["media.impl"])

return mediaImpl(NetworkingGames)
