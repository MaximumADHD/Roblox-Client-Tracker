-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var358 = {}
var358.DefaultStateObject = ""
function require(var0.Src.Actions.ExampleAction).name(arg1, arg2)
   local var365 = var1.Dictionary
   var365 = arg1
   local var367 = {}
   var367.DefaultStateObject = arg2.something
   return var365.join(var365, var367)
end

return require(var0.Packages.Rodux).createReducer(var358, {})
