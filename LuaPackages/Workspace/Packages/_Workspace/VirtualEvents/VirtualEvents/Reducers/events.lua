local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local eventsImpl = require(script.Parent["events.impl"])

return eventsImpl(NetworkingVirtualEvents)
