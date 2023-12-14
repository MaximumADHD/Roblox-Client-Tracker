-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TelemetryProtocol)
local var1 = {}
var1.eventName = "windsockOrigin"
local var9 = var0.TelemetryBackends.EventIngest
var1.backends = {}
var1.throttlingPercentage = var0.ONE_HUNDRED_PERCENT
local var3 = 7
var1.lastUpdated = { 23, 8 }
var1.description = "Open the Windsock widget in Studio. Does not fire when dismissing the widdget"
var1.links = "https://roblox.atlassian.net/l/cp/ysYjQfcq"
return var1
