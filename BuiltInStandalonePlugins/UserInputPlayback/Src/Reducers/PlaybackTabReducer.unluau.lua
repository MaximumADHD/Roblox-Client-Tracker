-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo).Dictionary.join
local var2 = require(var0.Src.Actions.PlaybackTab.SetShouldSetEmulationDevice)
local var3 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingDurationSec)
local var4 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingNumEvents)
local var5 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingResolution)
local var6 = require(var0.Src.Actions.PlaybackTab.SetCurrentRecordingDeviceId)
local var144 = var0.Src.Actions
local var7 = require(var144.PlaybackTab.SetCurrentRecordingDeviceOrientation)
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
var144 = var8
local var160 = {}
function var160.SetCurrentRecordingDurationSec(arg1, arg2)
   local var165 = {}
   var165.currentRecordingDurationSec = arg2.currentRecordingDurationSec
   return var1(arg1, var165)
end

function var160.SetCurrentRecordingNumEvents(arg1, arg2)
   local var172 = {}
   var172.currentRecordingNumEvents = arg2.currentRecordingNumEvents
   return var1(arg1, var172)
end

function var160.SetCurrentRecordingResolution(arg1, arg2)
   local var179 = {}
   var179.currentRecordingResolution = arg2.currentRecordingResolution
   return var1(arg1, var179)
end

function var160.SetCurrentRecordingDeviceId(arg1, arg2)
   local var186 = {}
   var186.currentRecordingDeviceId = arg2.currentRecordingDeviceId
   return var1(arg1, var186)
end

function var160.SetCurrentRecordingDeviceOrientation(arg1, arg2)
   local var193 = {}
   var193.currentRecordingDeviceOrientation = arg2.currentRecordingDeviceOrientation
   return var1(arg1, var193)
end

function var160.SetShouldSetEmulationDevice(arg1, arg2)
   local var200 = {}
   var200.shouldSetEmulationDevice = arg2.shouldSetEmulationDevice
   return var1(arg1, var200)
end

return require(var0.Packages.Rodux).createReducer(var144, var160)
