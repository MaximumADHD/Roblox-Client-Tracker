-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.Playhead = 0
var13.SliderPlayhead = 65535
var13.IsPlaying = false
var13.TrackLengh = 0
local var18 = {}
function var18.SetPlayhead(arg1, arg2)
   local var22 = var1.Dictionary
   var22 = arg1
   local var24 = {}
   var24.Playhead = arg2.playhead
   return var22.join(var22, var24)
end

function var18.SetSliderPlayhead(arg1, arg2)
   local var30 = var1.Dictionary
   var30 = arg1
   local var32 = {}
   var32.SliderPlayhead = arg2.sliderPlayhead
   return var30.join(var30, var32)
end

function var18.SetIsPlaying(arg1, arg2)
   local var38 = var1.Dictionary
   var38 = arg1
   local var40 = {}
   var40.IsPlaying = arg2.isPlaying
   return var38.join(var38, var40)
end

function var18.SetTrackLength(arg1, arg2)
   local var46 = var1.Dictionary
   var46 = arg1
   local var48 = {}
   var48.TrackLength = arg2.trackLength
   return var46.join(var46, var48)
end

return require(var0.Packages.Rodux).createReducer(var13, var18)
