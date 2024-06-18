-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Src.Network.Http)
local var3 = require(var1.Src.Flags.getFFlagCAP1107)
return function(arg1)
   local var21 = var3()
   assert()
   local var1 = {}
   var1.Url = var2.BuildRobloxUrl("apis", "resource-settings/v1/universes")
   var1.Method = "POST"
   local var31 = {}
   local var2 = {}
   var2.universeId = arg1
   local var3 = "RobloxGlobal"
   var2.dataSharingLicenseTypes = {}
   var31.configurations = {}
   var1.Body = var0:JSONEncode(var31)
   local var38 = var2
   var38 = var1
   return var38.Request(var38):catch(function(arg1)
      warn("Error setting universe data sharing configuration", arg1)
      return nil
   end)
end
