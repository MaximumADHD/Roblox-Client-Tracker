-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var19 = {}
function var19.ResetStore(arg1, arg2)
   return {}
end

function require(var0.Src.Actions.SetSaveState).name(arg1, arg2)
   local var27 = var1.Dictionary
   var27 = arg1
   local var29 = {}
   var29.CurrentSaveState = arg2.saveState
   return var27.join(var27, var29)
end

return require(var0.Packages.Rodux).createReducer({}, var19)
