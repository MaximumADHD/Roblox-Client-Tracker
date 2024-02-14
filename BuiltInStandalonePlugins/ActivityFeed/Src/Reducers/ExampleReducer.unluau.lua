-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash).join
local var326 = {}
var326.DefaultStateObject = ""
function require(var0.Src.Actions.ExampleAction).name(arg1, arg2)
   local var334 = {}
   var334.DefaultStateObject = arg2.something
   return var1(arg1, var334)
end

return require(var0.Packages.Rodux).createReducer(var326, {})
