-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Src.Actions.SetCreatingAnimationFromVideo)
return function(arg1)
   return function(arg1)
      local var248 = var0(false)
      arg1:dispatch()
      local var1 = arg1:getState()
      if not var1.Status.AnimationFromVideoErroredOut then
         local var254 = var1.Status
         local var1 = var254.AnimationFromVideoUploadStartTime
         var254 = var1
         arg1:report("onAnimationEditorImportVideoUploadCancel", var254 and os.clock() - var1)
      end
   end
end
