-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Cryo)
local var201 = var0.Src
local var2 = require(var201.DataTypes.QueuedSession)
local var3 = {}
var3.sessionQueue = {}
var201 = var3
function require(var0.Src.Actions.SetSessionQueue).name(arg1, arg2)
   local var213 = var1.Dictionary
   var213 = arg1
   local var215 = {}
   var215.sessionQueue = arg2.sessionQueue
   return var213.join(var213, var215)
end

return require(var0.Packages.Rodux).createReducer(var201, {})
