-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var14 = {}
function var14.SetComponentLoadState(arg1, arg2)
   local var18 = var1.Dictionary
   var18 = arg1
   arg2.componentName = arg2.loadState
   return var18.join(var18, {})
end

return require(var0.Packages.Rodux).createReducer({}, var14)
