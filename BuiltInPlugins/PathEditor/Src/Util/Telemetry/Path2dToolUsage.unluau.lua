-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TelemetryProtocol)
local var1 = {}
var1.eventName = "Path2DToolUsage"
local var9 = var0.TelemetryBackends.EventIngest
var1.backends = {}
var1.throttlingPercentage = var0.ONE_HUNDRED_PERCENT
local var3 = 15
var1.lastUpdated = { 24, 3 }
var1.description = "Reports aggregate counts of our main interactions with the PathEditor tool"
var1.links = "https://roblox.atlassian.net/wiki/x/jwG0gw"
return var1
