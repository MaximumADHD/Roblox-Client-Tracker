-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TelemetryProtocol)
local var1 = {}
var1.eventName = "StudioTutorialExtraAction"
local var9 = var0.TelemetryBackends.EventIngest
var1.backends = {}
var1.throttlingPercentage = var0.ONE_HUNDRED_PERCENT
local var3 = 3
var1.lastUpdated = { 23, 7 }
var1.description = "Perform an extra action in a Studio Tutorial."
var1.links = "https://roblox.atlassian.net/wiki/spaces/developer/pages/2076443597/Onboarding+API+Discussion"
return var1
