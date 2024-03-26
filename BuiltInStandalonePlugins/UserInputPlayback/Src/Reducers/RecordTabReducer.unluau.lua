-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = require(var0.Src.Actions.RecordTab.SetScreenSize)
local var3 = require(var0.Src.Actions.RecordTab.SetEmulationDeviceId)
local var54 = var0.Src.Actions
local var4 = require(var54.RecordTab.SetEmulationDeviceOrientation)
local var5 = {}
var5.screenSize = Vector2.new()
var5.emulationDeviceId = "Unknown"
var5.emulationDeviceOrientation = "Unknown"
var54 = var5
local var64 = {}
function var64.SetScreenSize(arg1, arg2)
   local var69 = {}
   var69.screenSize = arg2.screenSize
   return var1(arg1, var69)
end

function var64.SetEmulationDeviceId(arg1, arg2)
   local var76 = {}
   var76.emulationDeviceId = arg2.emulationDeviceId
   return var1(arg1, var76)
end

function var64.SetEmulationDeviceOrientation(arg1, arg2)
   local var83 = {}
   var83.emulationDeviceOrientation = arg2.orientation
   return var1(arg1, var83)
end

return require(var0.Packages.Rodux).createReducer(var54, var64)
