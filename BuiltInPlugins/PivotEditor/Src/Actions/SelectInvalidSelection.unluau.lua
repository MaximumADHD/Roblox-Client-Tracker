-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Utility.EditingMode)
return require(var0.Packages.Framework).Util.Action(script.Name, function(arg1)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true)
   local var0 = {}
   var0.statusMessage = arg1
   var0.editingMode = var1.None
   return var0
end)
