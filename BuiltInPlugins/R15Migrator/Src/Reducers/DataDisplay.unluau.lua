-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Cryo)
local function fun0()
   local var0 = {}
   var0.sortSelection = nil
   return var0
end

local var20 = {}
var20.sortSelection = nil
function require(var0.Src.Actions.SetSortSelection).name(arg1, arg2)
   local var27 = var1.Dictionary
   var27 = arg1
   local var29 = {}
   var29.sortSelection = arg2.sortSelection
   return var27.join(var27, var29)
end

return require(var0.Packages.Rodux).createReducer(var20, {})
