-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var193 = {}
var193.DefaultStateObject = ""
function require(var0.Src.Actions.ExampleAction).name(arg1, arg2)
   local var200 = var1.Dictionary
   var200 = arg1
   local var202 = {}
   var202.DefaultStateObject = arg2.something
   return var200.join(var200, var202)
end

return require(var0.Packages.Rodux).createReducer(var193, {})
