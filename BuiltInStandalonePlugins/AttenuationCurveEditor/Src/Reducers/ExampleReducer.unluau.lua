-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
local var1 = require(var0.Packages.Dash).join
local var19 = {}
var19.ExampleCount = 0
var19.ExampleString = ""
function require(var0.Src.Actions.ExampleIncrementCount).name(arg1, arg2)
   local var28 = {}
   var28.ExampleCount = arg1.ExampleCount + 1
   var28.ExampleString = arg2.something
   return var1(arg1, var28)
end

return require(var0.Packages.Rodux).createReducer(var19, {})
