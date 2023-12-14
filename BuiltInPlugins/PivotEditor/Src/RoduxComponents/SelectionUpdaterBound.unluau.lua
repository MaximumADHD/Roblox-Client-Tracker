-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SelectObjectForEditing)
local var2 = require(var0.Src.Actions.SelectInvalidSelection)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.targetObject = arg1.targetObject
   return var0
end, function(arg1)
   local var0 = {}
   function var0.selectObjectForEditing(arg1, arg2)
      local var0 = {}
      var0.targetObject = arg1.targetObject
      return var0
   end
   
   function var0.selectInvalidSelection(arg1)
      arg1(var2(arg1))
   end
   
   return var0
end)(require(var0.Src.Components.SelectionUpdater))
