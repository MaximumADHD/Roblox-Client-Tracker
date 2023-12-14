-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Actions.SetPlaybackSpeed)
local var2 = require(var0.Src.Actions.SetPlaybackStartInfo)
local var3 = require(var0.Src.Util.Constants)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().AnimationData
      local var1 = var1(arg1)
      arg1:dispatch()
      if var0 then
         if var0.Metadata then
            if 0 < var0.Metadata.EndTick then
               if arg1:getState().Status.PlayState == "Status" then
                  local var0 = false
               end
               if true then
                  local var0 = {}
                  var0.startTime = tick()
                  var0.startPlayhead = arg1:getState().Status.Playhead
                  local var1 = var2(var0)
                  arg1:dispatch()
               end
            end
         end
      end
   end
end
