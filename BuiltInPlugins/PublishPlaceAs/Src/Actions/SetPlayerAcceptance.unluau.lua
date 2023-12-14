-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Util.AssertType)
return require(var0.Src.Actions.Action)(script.Name, function(arg1)
   local var18 = var1
   var18 = arg1
   var18.assertType(var18, "boolean", "SetPlayerAcceptance")
   local var0 = {}
   var0.playerAcceptance = arg1
   return var0
end)
