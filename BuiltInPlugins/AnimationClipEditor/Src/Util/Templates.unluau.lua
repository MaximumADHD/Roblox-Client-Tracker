-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = require(script:FindFirstAncestor("AnimationClipEditor").Src.Types)
local var2 = {}
function var2.animationData()
   local var0 = {}
   local var14 = {}
   var14.Name = ""
   var14.StartTick = 0
   var14.EndTick = 0
   var14.Looping = false
   var14.Priority = Enum.AnimationPriority.Core
   var14.FrameRate = 30
   var14.Guid = var0:GenerateGUID()
   var0.Metadata = var14
   local var24 = {}
   var24.NamedKeyframes = {}
   var24.Keyframes = {}
   var24.Data = {}
   var0.Events = var24
   local var3 = {}
   local var4 = {}
   var4.Type = nil
   var4.Tracks = {}
   var3.Root = var4
   var0.Instances = var3
   return var0
end

function var2.instance()
   local var0 = {}
   var0.Type = nil
   var0.Tracks = {}
   return var0
end

function var2.track(arg1)
   local var0 = {}
   var0.Type = arg1
   var0.IsCurveTrack = false
   return var0
end

function var2.trackListEntry(arg1)
   local var0 = {}
   var0.Name = ""
   var0.Depth = 0
   var0.Expanded = false
   var0.Selected = false
   var0.Type = arg1
   return var0
end

function var2.keyframe()
   local var0 = {}
   var0.Value = nil
   var0.EasingStyle = nil
   var0.EasingDirection = nil
   var0.InterpolationMode = nil
   var0.LeftSlope = nil
   var0.RightSlope = nil
   return var0
end

return var2
