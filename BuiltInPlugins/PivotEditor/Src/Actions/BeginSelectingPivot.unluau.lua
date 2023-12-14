-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Utility.EditingMode)
local var2 = {}
var1.SelectGeometry = true
var1.SelectSurface = true
local var21 = var1.SelectPart
var1.SelectPart = true
var21 = require(var0.Packages.Framework).Util.Action
return var21(script.Name, function(arg1, arg2)
   local var27 = var1
   var27 = arg1
   local var29 = var27.isEnumValue(var27)
   assert()
   assert(var2[arg1])
   if type(arg2) == "string" then
      local var0 = false
   end
   assert(true)
   local var1 = {}
   var1.editingMode = arg1
   var1.statusMessage = arg2
   return var1
end)
