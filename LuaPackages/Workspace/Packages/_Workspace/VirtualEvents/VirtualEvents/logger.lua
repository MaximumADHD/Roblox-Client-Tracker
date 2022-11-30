local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Lumberyak = require(VirtualEvents.Parent.Lumberyak)

local logger = Lumberyak.Logger.new(nil, "VirtualEvents")

return logger
