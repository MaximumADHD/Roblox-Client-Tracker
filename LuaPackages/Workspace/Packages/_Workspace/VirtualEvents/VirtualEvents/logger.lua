local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local RobloxAppLoggers = require(VirtualEvents.Parent.RobloxAppLoggers)

local logger = RobloxAppLoggers.Logger:new("VirtualEvents")

return logger
