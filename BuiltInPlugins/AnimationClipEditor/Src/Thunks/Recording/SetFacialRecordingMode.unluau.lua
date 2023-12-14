-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Src.Actions.SetPlayState)
return function(arg1)
   return function(arg1)
      if arg1 then
         local var0 = var1.PLAY_STATE.Record or var1.PLAY_STATE.Pause
      end
      local var0 = var2(var1.PLAY_STATE.Pause)
      arg1:dispatch()
   end
end
