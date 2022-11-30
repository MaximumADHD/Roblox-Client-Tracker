local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local network = require(VirtualEvents.network)
local NetworkingSponsoredEvents = network.NetworkingSponsoredEvents
local legacyImpl = require(script.Parent["legacy.impl"])

return legacyImpl(NetworkingSponsoredEvents)
