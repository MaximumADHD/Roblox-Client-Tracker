-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Thunks.Playback.StepAnimation)
local var2 = require(var0.Src.Util.KeyframeUtils)
return function(arg1)
   return function(arg1)
      local var0 = var1(var2.getNearestFrame(arg1, arg1:getState().Status.FrameRate))
      arg1:dispatch()
   end
end
