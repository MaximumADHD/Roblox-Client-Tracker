local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local network = require(VirtualEvents.network)
local NetworkingGames = network.NetworkingGames
local experienceDetailsImpl = require(script.Parent["experienceDetails.impl"])

return experienceDetailsImpl(NetworkingGames)
