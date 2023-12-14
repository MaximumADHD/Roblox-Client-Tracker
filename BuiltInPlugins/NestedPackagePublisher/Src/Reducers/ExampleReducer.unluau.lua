-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var292 = {}
var292.DefaultStateObject = ""
function require(var0.Src.Actions.ExampleAction).name(arg1, arg2)
   local var299 = var1.Dictionary
   var299 = arg1
   local var301 = {}
   var301.DefaultStateObject = arg2.something
   return var299.join(var299, var301)
end

return require(var0.Packages.Rodux).createReducer(var292, {})
