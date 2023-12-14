-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TelemetryProtocol)
local var1 = {}
var1.eventName = "StudioTutorialStartStep"
local var9 = var0.TelemetryBackends.EventIngest
var1.backends = {}
var1.throttlingPercentage = var0.ONE_HUNDRED_PERCENT
local var3 = 14
var1.lastUpdated = { 23, 6 }
var1.description = "Start a step in a Studio Tutorial."
var1.links = "https://roblox.atlassian.net/wiki/spaces/developer/pages/2076443597/Onboarding+API+Discussion"
return var1
