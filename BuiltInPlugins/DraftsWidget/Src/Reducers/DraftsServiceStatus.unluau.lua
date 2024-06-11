-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var125 = {}
var125.Enabled = nil
var125.Error = nil
local var128 = {}
function var128.DraftsServiceLoaded(arg1, arg2)
   local var134 = var1.Dictionary
   var134 = arg1
   local var136 = {}
   var136.Enabled = arg2.isEnabled
   var136.Error = arg2.errorMessage
   return var134.join(var134, var136)
end

return require(var0.Packages.Rodux).createReducer(var125, var128)
