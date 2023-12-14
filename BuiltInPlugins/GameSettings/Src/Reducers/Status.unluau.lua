-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var62 = var0.Src
local var1 = require(var62.Util.CurrentStatus).Closed
var62 = var1
local var68 = {}
function var68.ResetStore(arg1, arg2)
   return var1
end

function var68.SetCurrentStatus(arg1, arg2)
   return arg2.currentStatus
end

return require(var0.Packages.Rodux).createReducer(var62, var68)
