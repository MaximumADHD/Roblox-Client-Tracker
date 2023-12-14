-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.deepCopy)
local var3 = require(var0.Src.Util.AnimationData)
local var4 = require(var0.Src.Thunks.UpdateAnimationData)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var0 = arg1:getState().AnimationData
      if var0 then
         if not var0.Instances[arg1] then
         end
      end
      local var34 = var1
      var34 = var0
      local var1 = var34.Dictionary.join({}, var34)
      var1.Instances = var1.Dictionary.join({}, var1.Instances)
      local var45 = var1.Instances
      arg1 = var1.Dictionary.join({}, var1.Instances[arg1])
      var1.Instances[arg1].Tracks = var1.Dictionary.join({}, var1.Instances[arg1].Tracks)
      local var70 = var1.Instances[arg1].Tracks
      arg2[1] = var2(var1.Instances[arg1].Tracks[arg2[1]])
      local var82 = var3
      var82 = var1
      local var4 = var82.getTrack(var82, arg1, arg2)
      if var4 then
         if var4.Data then
            if var4.Data[arg3] then
               local var91 = var3
               var91 = var4
               var91.setKeyframeData(var91, arg3, arg4)
               local var0 = var4(var1)
               arg1:dispatch()
            end
         end
      end
   end
end
