-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Cryo)
local function fun0()
   local var0 = {}
   var0.sortSelection = nil
   return var0
end

local var80 = {}
var80.sortSelection = nil
function require(var0.Src.Actions.SetSortSelection).name(arg1, arg2)
   local var87 = var1.Dictionary
   var87 = arg1
   local var89 = {}
   var89.sortSelection = arg2.sortSelection
   return var87.join(var87, var89)
end

return require(var0.Packages.Rodux).createReducer(var80, {})
