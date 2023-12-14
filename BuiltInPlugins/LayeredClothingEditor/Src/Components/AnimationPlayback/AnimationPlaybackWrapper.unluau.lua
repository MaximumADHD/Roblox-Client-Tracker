-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.AvatarToolsShared)
local var3 = var2.Util.AccessoryAndBodyToolShared.PreviewingInfo
local var4 = var2.Components.PreviewAnimationPlayback
local var5 = require(var0.Packages.Framework)
local var6 = var1.PureComponent:extend("AnimationPlaybackWrapper")
local var7 = require(var0.Src.Actions.SetPlayhead)
local var8 = require(var0.Src.Actions.SetTrackLength)
local var9 = require(var0.Src.Actions.SetIsPlaying)
var5.Util.Typecheck.wrap(var6, script)
function var6.init(arg1)
   arg1.previewAvatar = {}
end

function var6.updatePreviewAvatar(arg1)
   local var0 = arg1.props.PreviewContext
   local var1 = {}
   local var66 = var0:getAvatars()[var0:getCurrentPreviewAvatarIndex()]
   if var1 ~= arg1.previewAvatar then
      arg1.previewAvatar = var1
      local var68 = {}
      var68.temp = {}
      arg1:setState(var68)
   end
end

function var6.didMount(arg1)
   arg1.previewModelChangedConnection = arg1.props.PreviewContext:getAnimationTargetChangedSignal():Connect(function(arg1)
      arg1.previewAvatar = {}
   end)
   arg1:updatePreviewAvatar()
end

function var6.render(arg1)
   local var0 = arg1.props
   local var92 = {}
   var92.AnimationId = var0.AnimationId
   var92.IsPlayingOverride = var0.IsPlaying
   var92.PreviewAvatars = arg1.previewAvatar
   var92.PlayheadOverride = var0.SliderPlayhead
   var92.OnPlayheadChanged = var0.SetPlayhead
   var92.OnIsPlayingChanged = var0.SetIsPlaying
   var92.OnTrackLengthChanged = var0.SetTrackLength
   return var1.createElement(var4, var92)
end

local function fun5(arg1)
   if arg1.previewModelChangedConnection then
      arg1.previewModelChangedConnection:Disconnect()
      arg1.previewModelChangedConnection = nil
   end
end

function var6.willUnmount(arg1)
   if arg1.previewModelChangedConnection then
      arg1.previewModelChangedConnection:Disconnect()
      arg1.previewModelChangedConnection = nil
   end
end

fun5 = var5.ContextServices.withContext
local var100 = {}
var100.EditingItemContext = var2.Contexts.EditingItemContext
var100.PreviewContext = var2.Contexts.PreviewContext
var6 = fun5(var100)(var6)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = arg1.animation
   local var1 = {}
   local var108 = var3
   var108 = arg1
   var1.AnimationId = var108.getPreviewingAnimationId(var108)
   var1.IsPlaying = var0.IsPlaying
   var1.Playhead = var0.Playhead
   var1.SliderPlayhead = var0.SliderPlayhead
   return var1
end, function(arg1)
   local var0 = {}
   function var0.SetPlayhead(arg1)
      arg1.previewAvatar = {}
   end
   
   function var0.SetTrackLength(arg1)
      local var0 = arg1.props.PreviewContext
      local var1 = {}
      local var126 = var0:getAvatars()[var0:getCurrentPreviewAvatarIndex()]
      if var1 ~= arg1.previewAvatar then
         arg1.previewAvatar = var1
         local var128 = {}
         var128.temp = {}
         arg1:setState(var128)
      end
   end
   
   function var0.SetIsPlaying()
      arg1:updatePreviewAvatar()
   end
   
   return var0
end)(var6)
