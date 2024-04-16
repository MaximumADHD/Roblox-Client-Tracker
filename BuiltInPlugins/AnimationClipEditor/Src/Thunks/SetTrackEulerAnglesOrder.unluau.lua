-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.AnimationData)
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Util.PathUtils)
local var5 = require(var0.Src.Thunks.UpdateAnimationData)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg1:getState().AnimationData
      local var60 = var2
      var60 = var0
      local var2 = var60.getTrack(var60, arg1, arg2)
      if var2 then
         if var2.Type == "TRACK_TYPES" then
            if var2.EulerAnglesOrder == "TRACK_TYPES" then
               return nil
            end
         end
         return nil
      end
      local var73 = var1
      var73 = var0
      local var4 = var73.Dictionary.join({}, var73)
      local var5 = var1.Dictionary.join({}, var4.Instances)
      local var6 = var1.Dictionary.join({}, var5[arg1])
      local var7 = var1.Dictionary.join({}, var6.Tracks)
      if not var2 then
         local var97 = var2
         var97 = var7
         local var104 = var2
         var104 = var4
         var97.addTrack(var97, arg2[1], var3.TRACK_TYPES.CFrame, var104.isChannelAnimation(var104), var3.TRACK_TYPES.EulerAngles, arg3)
      end
      local var8 = var1.Dictionary.join({}, var7[arg2[1]])
      local var9 = var1.Dictionary.join({}, var8.Components)
      local var130 = var3.PROPERTY_KEYS
      local var10 = var1.Dictionary.join({}, var9[var130.Rotation])
      var10.EulerAnglesOrder = arg3
      var3.PROPERTY_KEYS.Rotation = var10
      var8.Components = var9
      arg2[1] = var8
      var6.Tracks = var7
      arg1 = var6
      var4.Instances = var5
      var130 = var4
      local var11 = var5(var130)
      arg1:dispatch()
   end
end
