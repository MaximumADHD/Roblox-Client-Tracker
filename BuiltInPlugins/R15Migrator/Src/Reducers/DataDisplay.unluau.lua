-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Cryo)
local function fun0()
   local var0 = {}
   var0.sortSelection = nil
   return var0
end

local var128 = {}
var128.sortSelection = nil
function require(var0.Src.Actions.SetSortSelection).name(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.sortSelection = arg2.sortSelection
   return var135.join(var135, var137)
end

return require(var0.Packages.Rodux).createReducer(var128, {})
