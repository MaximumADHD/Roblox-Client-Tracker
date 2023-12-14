-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.Constants)
local var2 = require(var0.Src.Actions.SetPlayState)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().AnimationData
      if var0 then
         if var0.Metadata then
            if 0 < var0.Metadata.EndTick then
               if arg1:getState().Status.PlayState == "Status" then
                  local var0 = var2(var1.PLAY_STATE.Play)
                  arg1:dispatch()
               else
                  local var0 = var2(var1.PLAY_STATE.Pause)
                  arg1:dispatch()
               end
            end
         end
      end
      arg1:report("onControlPressed", "TogglePlay")
   end
end
