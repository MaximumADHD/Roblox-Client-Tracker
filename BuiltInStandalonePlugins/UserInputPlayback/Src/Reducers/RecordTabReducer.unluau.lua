-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = require(var0.Src.Actions.RecordTab.SetScreenSize)
local var3 = require(var0.Src.Actions.RecordTab.SetEmulationDeviceId)
local var149 = var0.Src.Actions
local var4 = require(var149.RecordTab.SetEmulationDeviceOrientation)
local var5 = {}
var5.screenSize = Vector2.new()
var5.emulationDeviceId = "Unknown"
var5.emulationDeviceOrientation = "Unknown"
var149 = var5
local var159 = {}
function var159.SetScreenSize(arg1, arg2)
   local var164 = {}
   var164.screenSize = arg2.screenSize
   return var1(arg1, var164)
end

function var159.SetEmulationDeviceId(arg1, arg2)
   local var171 = {}
   var171.emulationDeviceId = arg2.emulationDeviceId
   return var1(arg1, var171)
end

function var159.SetEmulationDeviceOrientation(arg1, arg2)
   local var178 = {}
   var178.emulationDeviceOrientation = arg2.orientation
   return var1(arg1, var178)
end

return require(var0.Packages.Rodux).createReducer(var149, var159)
