-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Src.Flags.getFFlagCAP1107)
local var3 = require(var1.Src.Flags.getFIntCAP1107TimeoutInMs)
local var4 = require(var1.Src.Network.Http)
return function()
   local var25 = var2()
   assert()
   local var1 = {}
   var1.Url = var4.BuildRobloxUrl("apis", "resource-settings/v1/preferences:batchGet?preferenceTypes=Universes")
   var1.Method = "GET"
   var1.Timeout = var3()
   local var36 = var4
   var36 = var1
   return var36.RequestInternal(var36):andThen(function(arg1)
      local var0 = var0:JSONDecode(arg1)
      return var0.configurationsvar0.isEligible,
   end)
end
