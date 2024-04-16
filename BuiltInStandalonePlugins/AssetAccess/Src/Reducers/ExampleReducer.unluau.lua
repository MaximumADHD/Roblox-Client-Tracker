-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetAccess")
local var1 = require(var0.Packages.Dash).join
local var28 = {}
var28.ExampleCount = 0
var28.ExampleString = ""
function require(var0.Src.Actions.ExampleIncrementCount).name(arg1, arg2)
   local var60 = {}
   var60.ExampleCount = arg1.ExampleCount + 1
   var60.ExampleString = arg2.something
   return var1(arg1, var60)
end

return require(var0.Packages.Rodux).createReducer(var28, {})
