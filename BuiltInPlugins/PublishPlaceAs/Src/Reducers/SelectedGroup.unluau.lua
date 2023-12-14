-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
var2.selectedGroup = 0
local var16 = {}
function var16.SetSelectedGroup(arg1, arg2)
   local var20 = var1.Dictionary
   var20 = arg1
   local var22 = {}
   var22.selectedGroup = arg2.selectedGroup
   return var20.join(var20, var22)
end

return require(var0.Packages.Rodux).createReducer(var2, var16)
