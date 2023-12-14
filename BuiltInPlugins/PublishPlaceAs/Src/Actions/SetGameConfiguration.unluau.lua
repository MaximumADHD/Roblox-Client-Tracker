-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.AssertType)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var18 = var0
   var18 = arg1
   var18.assertNullableType(var18, "table", "SetGameConfiguration arg")
   local var1 = arg1 or {}
   local var2 = {}
   local var3 = {}
   var3.optInRegions = arg1.optInRegions or {}
   var2.gameConfiguration = var3
   return var2
end)
