-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Actions.SetFaceControlsEditorEnabled)
local var2 = require(var0.Src.Actions.SetFaceControlsEditorOpenedTimestamp)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState()
      if not var0.Status.RootInstance then
      end
      local var1 = var0.Status.FaceControlsEditorEnabled
      local var25 = var1(var1)
      arg1:dispatch()
      if var1 then
         arg1:report("onFaceControlsEditorEnabled")
         local var0 = var2(os.time())
         arg1:dispatch()
      end
      arg1:report("onFaceControlsEditorDisabled", os.time() - var0.Status.FaceControlsEditorOpenedTimestamp)
      var0.Status.FaceControlsEditorOpenedTimestamp = nil
   end
end
