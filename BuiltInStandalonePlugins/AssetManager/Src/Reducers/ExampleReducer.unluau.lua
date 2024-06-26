-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetManager")
local var1 = require(var0.Packages.Dash).join
local var58 = {}
var58.ExampleCount = 0
var58.ExampleString = ""
function require(var0.Src.Actions.ExampleIncrementCount).name(arg1, arg2)
   local var67 = {}
   var67.ExampleCount = arg1.ExampleCount + 1
   var67.ExampleString = arg2.something
   return var1(arg1, var67)
end

return require(var0.Packages.Rodux).createReducer(var58, {})
