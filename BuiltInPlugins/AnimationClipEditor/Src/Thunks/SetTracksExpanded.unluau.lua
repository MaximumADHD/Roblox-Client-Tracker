-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.deepCopy)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Src.Util.TrackUtils)
local var4 = require(var0.Src.Util.AnimationData)
local var5 = require(var0.Src.Actions.SetTracks)
return function(arg1, arg2, arg3)
   return function(arg1)
      if var1 then
         if not arg1.Components then
            if arg1.Type == "TRACK_TYPES" then
               arg1.Expanded = arg1
               if var2 then
                  if arg1.Components then
                     local var0 = pairs(arg1.Components)
                     arg2(var238)
                  end
               end
            end
         end
      end
      if arg1.Type == "TRACK_TYPES" then
         arg1.Expanded = arg1
         if var2 then
            if arg1.Components then
               local var0 = pairs(arg1.Components)
               arg2(var250)
            end
         end
      end
   end
end
