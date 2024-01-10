-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Thunks.Recording.SetFacialRecordingMode)
local var2 = require(var0.Src.Actions.SetInReviewState)
return function(arg1)
   return function(arg1)
      if arg1:getState().Status.inReviewState then
         local var23 = var2(false)
         arg1:dispatch()
         local var1 = var1(false)
         arg1:dispatch()
      end
      arg1:report("onFacialAnimationRecordingEnabled")
      local var0 = var1(true)
      arg1:dispatch()
   end
end
