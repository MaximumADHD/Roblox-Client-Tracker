-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = require(var0.Src.Actions.RecordTab.SetScreenSize)
local var3 = require(var0.Src.Actions.RecordTab.SetEmulationDeviceId)
local var28 = var0.Src.Actions
local var4 = require(var28.RecordTab.SetEmulationDeviceOrientation)
local var5 = {}
var5.screenSize = Vector2.new()
var5.emulationDeviceId = "Unknown"
var5.emulationDeviceOrientation = "Unknown"
var28 = var5
local var38 = {}
function var38.SetScreenSize(arg1, arg2)
   local var43 = {}
   var43.screenSize = arg2.screenSize
   return var1(arg1, var43)
end

function var38.SetEmulationDeviceId(arg1, arg2)
   local var50 = {}
   var50.emulationDeviceId = arg2.emulationDeviceId
   return var1(arg1, var50)
end

function var38.SetEmulationDeviceOrientation(arg1, arg2)
   local var57 = {}
   var57.emulationDeviceOrientation = arg2.orientation
   return var1(arg1, var57)
end

return require(var0.Packages.Rodux).createReducer(var28, var38)
