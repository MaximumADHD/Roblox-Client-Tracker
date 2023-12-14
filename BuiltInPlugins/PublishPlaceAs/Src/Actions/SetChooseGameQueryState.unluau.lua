-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.AssertType)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var85 = var2
   var85 = arg1
   var85.assertNullableType(var85, "string", "SetChooseGameQuery arg")
   local var1 = {}
   local var2 = {}
   var2.queryState = arg1
   var1.gameInfo = var2
   return var1
end)
