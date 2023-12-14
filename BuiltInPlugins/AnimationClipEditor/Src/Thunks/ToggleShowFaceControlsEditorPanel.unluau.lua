-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AnimationClipEditor").Src.Actions.SetShowFaceControlsEditorPanel)
return function()
   return function(arg1)
      local var0 = arg1:getState()
      if not var0.Status.RootInstance then
      end
      local var1 = var0(var0.Status.ShowFaceControlsEditorPanel)
      arg1:dispatch()
   end
end
