-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.AssertType)
return require(script.Parent.Action)(script.Name, function(arg1)
   local var18 = var0
   var18 = arg1
   var18.assertNullableType(var18, "number", "SetSelectedGroup arg")
   local var0 = {}
   var0.selectedGroup = arg1
   return var0
end)
