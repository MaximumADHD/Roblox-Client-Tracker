-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = require(var0.Core.Util.DebugFlags)
local var57 = {}
var57.currentSoundId = 0
var57.elapsedTime = 0
var57.isPlaying = false
var57.isLoading = false
var57.totalTime = 0
function require(var0.Core.Actions.PlayPreviewSound).name(arg1, arg2)
   if arg1.currentSoundId == warn then
      if var3.shouldDebugWarnings() then
         warn("Trying to play the same sound instead of resuming it. Current SoundId : ", arg2.currentSoundId)
      end
   end
   local var76 = var2.Dictionary
   var76 = arg1
   local var78 = {}
   var78.currentSoundId = arg2.currentSoundId
   var78.isPlaying = true
   return var76.join(var76, var78)
end

function require(var0.Core.Actions.PausePreviewSound).name(arg1, arg2)
   if not arg1.isPlaying then
      if var3.shouldDebugWarnings() then
         warn(`Trying to pause a sound that is not playing! Current SoundId : {arg1.currentSoundId}`)
      end
   end
   local var95 = var2.Dictionary
   var95 = arg1
   local var97 = {}
   var97.isPlaying = false
   return var95.join(var95, var97)
end

function require(var0.Core.Actions.StopPreviewSound).name(arg1, arg2)
   if not arg1.isPlaying then
      if var3.shouldDebugWarnings() then
         warn(`Trying to stop a sound that is not playing! Current SoundId : {arg1.currentSoundId}`)
      end
   end
   local var113 = var2.Dictionary
   var113 = arg1
   local var115 = {}
   var115.currentSoundId = 0
   var115.elapsedTime = 0
   var115.isPlaying = false
   return var113.join(var113, var115)
end

function require(var0.Core.Actions.ResumePreviewSound).name(arg1, arg2)
   if arg1.isPlaying then
      if var3.shouldDebugWarnings() then
         warn(`Trying to resume a sound which is playing! Current SoundId : {arg1.currentSoundId}`)
      end
   end
   local var133 = var2.Dictionary
   var133 = arg1
   local var135 = {}
   var135.isPlaying = true
   return var133.join(var133, var135)
end

function require(var0.Core.Actions.StopAllSounds).name(arg1, arg2)
   local var142 = var2.Dictionary
   var142 = arg1
   local var144 = {}
   var144.currentSoundId = 0
   var144.isPlaying = false
   return var142.join(var142, var144)
end

function require(var0.Core.Actions.SetSoundLoading).name(arg1, arg2)
   local var152 = var2.Dictionary
   var152 = arg1
   local var154 = {}
   var154.isLoading = arg2.isLoading
   return var152.join(var152, var154)
end

function require(var0.Core.Actions.SetSoundElapsedTime).name(arg1, arg2)
   local var161 = var2.Dictionary
   var161 = arg1
   local var163 = {}
   var163.elapsedTime = arg2.elapsedTime
   return var161.join(var161, var163)
end

function require(var0.Core.Actions.SetSoundTotalTime).name(arg1, arg2)
   local var170 = var2.Dictionary
   var170 = arg1
   local var172 = {}
   var172.elapsedTime = 0
   var172.totalTime = arg2.totalTime
   return var170.join(var170, var172)
end

return require(var1.Rodux).createReducer(var57, {})
