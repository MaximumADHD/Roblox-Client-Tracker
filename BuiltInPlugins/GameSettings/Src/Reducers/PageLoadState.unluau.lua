-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var14 = {}
function var14.ResetStore(arg1, arg2)
   return {}
end

function var14.SetPageLoadState(arg1, arg2)
   local var21 = var1.Dictionary
   var21 = arg1
   arg2.pageId = arg2.loadState
   return var21.join(var21, {})
end

return require(var0.Packages.Rodux).createReducer({}, var14)
