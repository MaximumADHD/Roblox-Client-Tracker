-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.Dash).join
local var48 = {}
var48.ExampleCount = 0
var48.ExampleString = ""
function require(var0.Src.Actions.ExampleIncrementCount).name(arg1, arg2)
   local var57 = {}
   var57.ExampleCount = arg1.ExampleCount + 1
   var57.ExampleString = arg2.something
   return var1(arg1, var57)
end

return require(var0.Packages.Rodux).createReducer(var48, {})
