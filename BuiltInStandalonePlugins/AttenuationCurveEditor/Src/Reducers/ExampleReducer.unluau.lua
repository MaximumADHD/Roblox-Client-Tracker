-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
local var1 = require(var0.Packages.Dash).join
local var25 = {}
var25.ExampleCount = 0
var25.ExampleString = ""
function require(var0.Src.Actions.ExampleIncrementCount).name(arg1, arg2)
   local var34 = {}
   var34.ExampleCount = arg1.ExampleCount + 1
   var34.ExampleString = arg2.something
   return var1(arg1, var34)
end

return require(var0.Packages.Rodux).createReducer(var25, {})
