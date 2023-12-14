-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.AssertType)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var22 = var2
   var22 = arg1
   var22.assertNullableType(var22, "table", "SetGroupInfo arg")
   local var1 = arg1 or {}.groups
   local var30 = var2
   var30 = var1
   var30.assertType(var30, "table", "SetGroupInfo.groups")
   local var3 = {}
   local var4 = {}
   var4.groups = var1
   var3.groupInfo = var4
   return var3
end)
