-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Cryo)
local var211 = var0.Src
local var2 = require(var211.DataTypes.QueuedSession)
local var3 = {}
var3.sessionQueue = {}
var211 = var3
function require(var0.Src.Actions.SetSessionQueue).name(arg1, arg2)
   local var223 = var1.Dictionary
   var223 = arg1
   local var225 = {}
   var225.sessionQueue = arg2.sessionQueue
   return var223.join(var223, var225)
end

return require(var0.Packages.Rodux).createReducer(var211, {})
