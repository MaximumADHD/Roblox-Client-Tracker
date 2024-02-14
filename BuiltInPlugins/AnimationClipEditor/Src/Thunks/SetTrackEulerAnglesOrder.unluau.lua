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
      local var120 = var2
      var120 = var0
      local var2 = var120.getTrack(var120, arg1, arg2)
      if var2 then
         if var2.Type == "TRACK_TYPES" then
            if var2.EulerAnglesOrder == "TRACK_TYPES" then
               return nil
            end
         end
         return nil
      end
      local var133 = var1
      var133 = var0
      local var4 = var133.Dictionary.join({}, var133)
      local var5 = var1.Dictionary.join({}, var4.Instances)
      local var6 = var1.Dictionary.join({}, var5[arg1])
      local var7 = var1.Dictionary.join({}, var6.Tracks)
      if not var2 then
         local var157 = var2
         var157 = var7
         local var164 = var2
         var164 = var4
         var157.addTrack(var157, arg2[1], var3.TRACK_TYPES.CFrame, var164.isChannelAnimation(var164), var3.TRACK_TYPES.EulerAngles, arg3)
      end
      local var8 = var1.Dictionary.join({}, var7[arg2[1]])
      local var9 = var1.Dictionary.join({}, var8.Components)
      local var190 = var3.PROPERTY_KEYS
      local var10 = var1.Dictionary.join({}, var9[var190.Rotation])
      var10.EulerAnglesOrder = arg3
      var3.PROPERTY_KEYS.Rotation = var10
      var8.Components = var9
      arg2[1] = var8
      var6.Tracks = var7
      arg1 = var6
      var4.Instances = var5
      var190 = var4
      local var11 = var5(var190)
      arg1:dispatch()
   end
end
