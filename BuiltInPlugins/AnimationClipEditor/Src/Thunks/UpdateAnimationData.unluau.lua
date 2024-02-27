-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Actions.SetHorizontalScrollZoom)
local var2 = require(var0.Src.Util.AnimationData)
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Util.TrackUtils)
local var5 = require(var0.Src.Actions.SetAnimationData)
local var6 = require(var0.Src.Thunks.Playback.StepAnimation)
local var7 = require(var0.Src.Actions.SetNotification)
local var8 = require(var0.Src.Thunks.UpdateEditingLength)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState()
      if not arg1 then
      end
      if not arg1.Metadata then
         local var0 = var5(arg1)
         arg1:dispatch()
      end
      local var1 = var0.Status.Playhead
      local var2 = var0.Status.EditingLength
      local var3 = arg1.Metadata.StartTick
      local var4 = var4.getZoomRange(arg1, var0.Status.HorizontalScroll, var0.Status.HorizontalZoom, var2)
      if var2.removeExtraKeyframes(arg1) then
         local var0 = var7("ClippedWarning", true)
         arg1:dispatch()
      end
      var2.setEndTick(arg1)
      local var5 = arg1.Metadata.EndTick
      local var6 = arg1
      local var116 = ipairs(var6.Events.Keyframes)
      if var5 < var6 then
         arg1.Metadata.EndTick = var6
         var5 = var6
      end
      var2.validateKeyframeNames(arg1)
      local var124 = var5(arg1)
      arg1:dispatch()
      if var3 ~= var5 then
         var124 = var3
         var1 = math.clamp(var1, var124, var5)
      end
      local var9 = var6(var1)
      arg1:dispatch()
      local var10 = var5 - var3
      if var2 < var10 then
         var6 = var10
         local var136 = var8(var6)
         arg1:dispatch()
         local var0 = math.ceil((var10) * var3.LENGTH_PADDING)
         local var1 = var4.End - var4.Start
         local var2 = 0
         if var0 ~= var1 then
            var2 = math.clamp((var4.Start - var3) / (var0 - var1), 0, 1)
         end
         local var3 = var1(var2, 1 - math.clamp((var1) / var0, 0, 1))
         arg1:dispatch()
      end
   end
end
