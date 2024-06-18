-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Cryo)
local var2 = var0.Src.Actions
local var3 = require(var0.Src.Util.SaveInterface)
local function fun0()
   local var0 = {}
   var0.adapted = var3.GetAdapted()
   return var0
end

local var32 = {}
var32.adapted = var3.GetAdapted()
function require(var2.SetAdapted).name(arg1, arg2)
   local var38 = var1.Dictionary
   var38 = arg1
   local var40 = {}
   var40.adapted = arg2.adapted
   return var38.join(var38, var40)
end

function require(var2.ResetAllAdapter).name(arg1)
   local var46 = var1.Dictionary
   var46 = arg1
   local var51 = {}
   var51.adapted = var3.GetAdapted()
   return var46.join(var46, var51)
end

return require(var0.Packages.Rodux).createReducer(var32, {})
