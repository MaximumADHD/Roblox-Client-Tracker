-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Enum.GenerationErrorType)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1, arg2)
   local var20 = var1
   var20 = arg1
   assert(var20.isEnumValue(var20), "Bad generationErrorType")
   local var0 = {}
   var0.generationErrorType = arg1
   var0.message = arg2
   return var0
end)
