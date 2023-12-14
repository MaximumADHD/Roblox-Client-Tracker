-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Reducers.MorpherEditorSettings)
local var2 = require(var0.Reducers.MorpherEditorTemplates)
return function(arg1, arg2)
   local var675 = arg1
   if not var675 then
      {}.StateMorpher = {}
   end
   arg1 = var675
   local var1 = {}
   local var2 = {}
   local var681 = arg1.StateMorpher
   var681 = arg2
   var2.StateTemplates = var2(var681.StateTemplates, var681)
   local var685 = arg1.StateMorpher
   var685 = arg2
   var2.StateSettings = var1(var685.StateSettings, var685)
   var1.StateMorpher = var2
   return var1
end
