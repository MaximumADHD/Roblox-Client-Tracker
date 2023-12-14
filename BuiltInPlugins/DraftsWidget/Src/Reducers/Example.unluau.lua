-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.message = nil
local var15 = {}
function var15.ExampleAction(arg1, arg2)
   local var20 = var1.Dictionary
   var20 = arg1
   local var22 = {}
   var22.message = arg2.message
   return var20.join(var20, var22)
end

return require(var0.Packages.Rodux).createReducer(var13, var15)
