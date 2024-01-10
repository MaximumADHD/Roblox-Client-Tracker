-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.deepCopy)
local var2 = require(var0.Src.Util.AnimationData)
local var3 = require(var0.Src.Actions.SetAnimationData)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().AnimationData
      if not var0 then
      end
      local var1 = var1(var0)
      local var64 = var2
      var64 = var1
      var64.setLooping(var64, var1.Metadata.Looping)
      local var69 = var3(var1)
      arg1:dispatch()
      arg1:report("onControlPressed", "ToggleLooping")
   end
end
