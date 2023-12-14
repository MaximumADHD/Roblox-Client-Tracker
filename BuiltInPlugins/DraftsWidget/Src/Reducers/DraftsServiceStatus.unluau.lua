-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var120 = {}
var120.Enabled = nil
var120.Error = nil
local var123 = {}
function var123.DraftsServiceLoaded(arg1, arg2)
   local var129 = var1.Dictionary
   var129 = arg1
   local var131 = {}
   var131.Enabled = arg2.isEnabled
   var131.Error = arg2.errorMessage
   return var129.join(var129, var131)
end

return require(var0.Packages.Rodux).createReducer(var120, var123)
