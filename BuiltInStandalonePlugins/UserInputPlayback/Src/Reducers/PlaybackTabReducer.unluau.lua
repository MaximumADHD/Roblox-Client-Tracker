-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = require(var0.Src.Actions.PlaybackTab.SetShouldSetEmulationDevice)
local var3 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingDurationSec)
local var4 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingNumEvents)
local var5 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingResolution)
local var6 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingDeviceId)
local var46 = var0.Src.Actions
local var7 = require(var46.PlaybackTab.SetCurrentRecordingDeviceOrientation)
local var8 = {}
var8.selectedRecordingIndex = 1
var8.playbackFileNameOptions = {}
var8.currentPlaybackRecordingDataValid = false
var8.currentRecordingDurationSec = 0
var8.currentRecordingNumEvents = 0
var8.currentRecordingResolution = Vector2.new()
var8.currentRecordingDeviceId = "Unknown"
var8.currentRecordingDeviceOrientation = "Unknown"
var8.shouldSetEmulationDevice = true
var46 = var8
local var62 = {}
function var62.SetCurrentRecordingDurationSec(arg1, arg2)
   local var67 = {}
   var67.currentRecordingDurationSec = arg2.currentRecordingDurationSec
   return var1(arg1, var67)
end

function var62.SetCurrentRecordingNumEvents(arg1, arg2)
   local var74 = {}
   var74.currentRecordingNumEvents = arg2.currentRecordingNumEvents
   return var1(arg1, var74)
end

function var62.SetCurrentRecordingResolution(arg1, arg2)
   local var81 = {}
   var81.currentRecordingResolution = arg2.currentRecordingResolution
   return var1(arg1, var81)
end

function var62.SetCurrentRecordingDeviceId(arg1, arg2)
   local var88 = {}
   var88.currentRecordingDeviceId = arg2.currentRecordingDeviceId
   return var1(arg1, var88)
end

function var62.SetCurrentRecordingDeviceOrientation(arg1, arg2)
   local var95 = {}
   var95.currentRecordingDeviceOrientation = arg2.currentRecordingDeviceOrientation
   return var1(arg1, var95)
end

function var62.SetShouldSetEmulationDevice(arg1, arg2)
   local var102 = {}
   var102.shouldSetEmulationDevice = arg2.shouldSetEmulationDevice
   return var1(arg1, var102)
end

return require(var0.Packages.Rodux).createReducer(var46, var62)
