-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Actions.SetBoneVisualization)
local var2 = require(var0.Src.Util.RigUtils)
local var3 = require(var0.Src.Util.RigVisualization)
local var4 = require(var0.LuaFlags.GetFFlagRigVisualization)
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
      local var36 = var1(var1)
      arg1:dispatch()
      if var4() then
         local var40 = var3
         var40 = var2
         var36 = var1
         var40.updateMicrobones(var40, var36)
      end
      local var42 = var2
      var42 = var2
      var36 = var1
      var42.updateMicrobones(var42, var36)
   end
end
