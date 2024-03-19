-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Actions.SetBoneVisualization)
local var2 = require(var0.Src.Util.RigUtils)
local var3 = require(var0.Src.Util.RigVisualization)
return function()
   return function(arg1)
      local var0 = arg1:getState()
      local var1 = var0.Status.VisualizeBones
      local var2 = var0.Status.RootInstance
      if var0.AnimationData then
         if var2 then
            if not var0.Status.Active then
            end
         end
      end
      local var32 = var1(var1)
      arg1:dispatch()
      local var34 = var3
      var34 = var2
      var32 = var1
      var34.updateMicrobones(var34, var32)
   end
end
