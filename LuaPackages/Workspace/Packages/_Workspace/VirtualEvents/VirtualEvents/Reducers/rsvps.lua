local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Players = game:GetService("Players")

local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local rsvpsImpl = require(script.Parent["rsvps.impl"])

return rsvpsImpl(NetworkingVirtualEvents, Players)
