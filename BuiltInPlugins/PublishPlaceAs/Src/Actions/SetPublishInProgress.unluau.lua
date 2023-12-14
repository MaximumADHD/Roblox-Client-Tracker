-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.AssertType)
local var118 = require(var0.Src.Util.PublishPlaceAsUtilities)
local var3 = var118.shouldShowDevPublishLocations
var118 = require(script.Parent.Action)
return var118(script.Name, function(arg1)
   local var123 = var1
   var123 = arg1
   var123.assertNullableType(var123, "table", "SetPublishInProgress arg")
   local var1 = arg1 or {}
   local var2 = {}
   local var3 = {}
   var3.universe = var1.universe
   var3.place = var1.place
   var3.isPublish = var1.isPublish
   var3.failCount = var1.failCount
   var3.requestInFlight = var1.requestInFlight
   var2.publishInProgress = var3
   return var2
end)
