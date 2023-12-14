-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var12 = var0.Src
local var3 = {}
var3.networkError = nil
var3.networkErrorAction = nil
var12 = var3
function require(var12.Actions.NetworkError).name(arg1, arg2)
   local var25 = var2.Dictionary
   var25 = arg1
   local var27 = {}
   var27.networkError = arg2.response
   var27.networkErrorAction = arg2.networkErrorAction
   return var25.join(var25, var27)
end

return require(var1.Rodux).createReducer(var12, {})
