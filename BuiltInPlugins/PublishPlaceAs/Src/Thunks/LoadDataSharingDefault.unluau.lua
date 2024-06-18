-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.AddChange)
local var2 = require(var0.Src.Actions.AddErrors)
local var3 = require(var0.Src.Flags.getFFlagCAP1107)
local var4 = require(var0.Src.Network.Requests.ApiFetchUniverseOptOut)
local var5 = require(var0.Src.Types.DataSharingFetchState)
local var6 = require(var0.Packages.Cryo)
local var7 = require(var0.Packages.Framework).Util.Promise
return function()
   return function(arg1)
      local var0 = var3()
      assert()
      local var48 = var1("dataSharingDefault", var5.LOADING)
      arg1:dispatch()
      local var54 = var1("dataSharingEnabled", var6.None)
      arg1:dispatch()
      local var57 = {}
      var57.dataSharingDefault = "Loading"
      local var59 = var2(var57)
      arg1:dispatch()
      var4():andThen(function(arg1, arg2)
         if not arg2 then
            return var7.reject()
         end
         local var0 = arg1[1].isOptOut
         if var0 then
            local var0 = var5.OPT_OUT or var5.OPT_IN
         end
         local var81 = var1("dataSharingDefault", var5.OPT_IN)
         arg1:dispatch()
         local var2 = var1("dataSharingEnabled", var0)
         arg1:dispatch()
      end):catch(function()
         local var0 = var1("dataSharingDefault", var5.INELIGIBLE)
         arg1:dispatch()
      end)
   end
end
