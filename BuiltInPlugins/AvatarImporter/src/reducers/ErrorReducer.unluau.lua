-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
function require(var0.src.actions.SetError).name(arg1, arg2)
   local var24 = var1.Dictionary
   var24 = arg1
   local var26 = {}
   var26.name = arg2.name
   var26.message = arg2.message
   return var24.join(var24, var26)
end

return require(var0.Packages.Rodux).createReducer({}, {})
