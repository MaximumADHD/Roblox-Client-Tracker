-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = require(var0.Core.Util.DebugFlags)
local var90 = {}
var90.currentSoundId = 0
var90.elapsedTime = 0
var90.isPlaying = false
var90.isLoading = false
var90.totalTime = 0
function require(var0.Core.Actions.PlayPreviewSound).name(arg1, arg2)
   if arg1.currentSoundId == warn then
      if var3.shouldDebugWarnings() then
         warn("Trying to play the same sound instead of resuming it. Current SoundId : ", arg2.currentSoundId)
      end
   end
   local var109 = var2.Dictionary
   var109 = arg1
   local var111 = {}
   var111.currentSoundId = arg2.currentSoundId
   var111.isPlaying = true
   return var109.join(var109, var111)
end

function require(var0.Core.Actions.PausePreviewSound).name(arg1, arg2)
   if not arg1.isPlaying then
      if var3.shouldDebugWarnings() then
         warn(`Trying to pause a sound that is not playing! Current SoundId : {arg1.currentSoundId}`)
      end
   end
   local var128 = var2.Dictionary
   var128 = arg1
   local var130 = {}
   var130.isPlaying = false
   return var128.join(var128, var130)
end

function require(var0.Core.Actions.StopPreviewSound).name(arg1, arg2)
   if not arg1.isPlaying then
      if var3.shouldDebugWarnings() then
         warn(`Trying to stop a sound that is not playing! Current SoundId : {arg1.currentSoundId}`)
      end
   end
   local var146 = var2.Dictionary
   var146 = arg1
   local var148 = {}
   var148.currentSoundId = 0
   var148.elapsedTime = 0
   var148.isPlaying = false
   return var146.join(var146, var148)
end

function require(var0.Core.Actions.ResumePreviewSound).name(arg1, arg2)
   if arg1.isPlaying then
      if var3.shouldDebugWarnings() then
         warn(`Trying to resume a sound which is playing! Current SoundId : {arg1.currentSoundId}`)
      end
   end
   local var166 = var2.Dictionary
   var166 = arg1
   local var168 = {}
   var168.isPlaying = true
   return var166.join(var166, var168)
end

function require(var0.Core.Actions.StopAllSounds).name(arg1, arg2)
   local var175 = var2.Dictionary
   var175 = arg1
   local var177 = {}
   var177.currentSoundId = 0
   var177.isPlaying = false
   return var175.join(var175, var177)
end

function require(var0.Core.Actions.SetSoundLoading).name(arg1, arg2)
   local var185 = var2.Dictionary
   var185 = arg1
   local var187 = {}
   var187.isLoading = arg2.isLoading
   return var185.join(var185, var187)
end

function require(var0.Core.Actions.SetSoundElapsedTime).name(arg1, arg2)
   local var194 = var2.Dictionary
   var194 = arg1
   local var196 = {}
   var196.elapsedTime = arg2.elapsedTime
   return var194.join(var194, var196)
end

function require(var0.Core.Actions.SetSoundTotalTime).name(arg1, arg2)
   local var203 = var2.Dictionary
   var203 = arg1
   local var205 = {}
   var205.elapsedTime = 0
   var205.totalTime = arg2.totalTime
   return var203.join(var203, var205)
end

return require(var1.Rodux).createReducer(var90, {})
