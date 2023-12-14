-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash)
local var2 = var0.Src.Actions
function require(var2.UpdateEvents).name(arg1, arg2)
   local var188 = var1
   var188 = arg1
   return var188.join(var188, arg2.events)
end

function require(var2.ClearEvents).name(arg1, arg2)
   return {}
end

return require(var0.Packages.Rodux).createReducer({}, {})
