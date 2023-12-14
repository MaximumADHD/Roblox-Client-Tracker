-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Resources.Constants)
local var3 = require(var0.Src.Util.AssertType)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var62 = var3
   var62 = arg1
   var62.assertNullableType(var62, "table", "SetSelectedGame arg")
   local var0 = {}
   var0.selectedGame = arg1
   return var0
end)
