-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Components.AnimationControlPanel.AnimationClipDropdown)
local var5 = require(var0.Src.Components.AnimationControlPanel.MediaControls)
local var6 = require(var0.Src.Components.AnimationControlPanel.TimeDisplay)
local var7 = require(var0.Src.Thunks.Playback.TogglePlay)
local var8 = require(var0.Src.Thunks.Playback.ToggleLooping)
local var9 = require(var0.Src.Thunks.Playback.StepAnimation)
local var10 = require(var0.Src.Thunks.LoadAnimationData)
local var11 = require(var0.Src.Thunks.Playback.SkipAnimation)
local var12 = require(var0.Src.Thunks.UpdateEditingLength)
local var13 = require(var0.Src.Actions.SetPlayState)
local var14 = var1.PureComponent:extend("AnimationControlPanel")
function var14.init(arg1)
   function arg1.toggleLoopingWrapper()
      return arg1.props.ToggleLooping(arg1.props.Analytics)
   end
   
   function arg1.loadAnimationDataWrapper(arg1)
      local var94 = arg1.props
      var94 = arg1
      return var94.LoadAnimationData(var94, arg1.props.Analytics)
   end
   
   function arg1.skipBackwardWrapper()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function arg1.skipForwardWrapper()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function arg1.setPlayStateWrapper(arg1)
      local var116 = arg1.props
      var116 = arg1
      return var116.SetPlayState(var116, arg1.props.Analytics)
   end
   
   function arg1.goToFirstFrameWrapper()
      return arg1.props.StepAnimation(0)
   end
   
   function arg1.goToLastFrameWrapper()
      local var0 = arg1.props
      return var0.StepAnimation(var0.AnimationData.Metadata.EndTick)
   end
   
end

local function fun8(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var154 = {}
   var154.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var154.BorderSizePixel = 1
   var154.LayoutOrder = 0
   var154.BackgroundColor3 = var1.backgroundColor
   var154.BorderColor3 = var1.borderColor
   local var166 = {}
   local var170 = {}
   var170.FillDirection = Enum.FillDirection.Horizontal
   var170.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var170.SortOrder = Enum.SortOrder.LayoutOrder
   var170.VerticalAlignment = Enum.VerticalAlignment.Center
   var166.Layout = var1.createElement("UIListLayout", var170)
   local var179 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var179.AnimationName = ""
   var179.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var179.RootInstance = var3
   local var185 = arg1.loadAnimationDataWrapper
   var179.LoadAnimationData = var185
   var185 = var3
   if var185 then
      var185 = var2
      local var0 = var185 and var2.Instances.Root.Type
   end
   var179.InstanceType = var185
   var179.LayoutOrder = 0
   var179.IsChannelAnimation = var0.IsChannelAnimation
   var166.AnimationClipDropdown = var1.createElement(var4, var179)
   local var195 = {}
   var195.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var195.IsLooping = false
   var195.SkipBackward = arg1.skipBackwardWrapper
   var195.SkipForward = arg1.skipForwardWrapper
   var195.SetPlayState = arg1.setPlayStateWrapper
   var195.ToggleLooping = arg1.toggleLoopingWrapper
   var195.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var195.GoToLastFrame = arg1.goToLastFrameWrapper
   var195.LayoutOrder = 1
   var166.MediaControls = var1.createElement(var5, var195)
   local var213 = {}
   var213.StartTick = var0.StartTick
   var213.EndTick = var0.EndTick
   var213.FrameRate = var0.FrameRate
   var213.ShowAsTime = var0.ShowAsSeconds
   var213.AnimationData = var2
   var213.Playhead = var0.Playhead
   var213.EditingLength = var0.EditingLength
   var213.StepAnimation = var0.StepAnimation
   var213.UpdateEditingLength = var0.UpdateEditingLength
   var213.ReadOnly = var0.ReadOnly
   var213.LayoutOrder = 2
   var166.TimeDisplay = var1.createElement(var6, var213)
   return var1.createElement("Frame", var154, var166)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var154 = {}
   var154.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var154.BorderSizePixel = 1
   var154.LayoutOrder = 0
   var154.BackgroundColor3 = var1.backgroundColor
   var154.BorderColor3 = var1.borderColor
   local var166 = {}
   local var170 = {}
   var170.FillDirection = Enum.FillDirection.Horizontal
   var170.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var170.SortOrder = Enum.SortOrder.LayoutOrder
   var170.VerticalAlignment = Enum.VerticalAlignment.Center
   var166.Layout = var1.createElement("UIListLayout", var170)
   local var179 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var179.AnimationName = ""
   var179.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var179.RootInstance = var3
   local var185 = arg1.loadAnimationDataWrapper
   var179.LoadAnimationData = var185
   var185 = var3
   if var185 then
      var185 = var2
      local var0 = var185 and var2.Instances.Root.Type
   end
   var179.InstanceType = var185
   var179.LayoutOrder = 0
   var179.IsChannelAnimation = var0.IsChannelAnimation
   var166.AnimationClipDropdown = var1.createElement(var4, var179)
   local var195 = {}
   var195.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var195.IsLooping = false
   var195.SkipBackward = arg1.skipBackwardWrapper
   var195.SkipForward = arg1.skipForwardWrapper
   var195.SetPlayState = arg1.setPlayStateWrapper
   var195.ToggleLooping = arg1.toggleLoopingWrapper
   var195.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var195.GoToLastFrame = arg1.goToLastFrameWrapper
   var195.LayoutOrder = 1
   var166.MediaControls = var1.createElement(var5, var195)
   local var213 = {}
   var213.StartTick = var0.StartTick
   var213.EndTick = var0.EndTick
   var213.FrameRate = var0.FrameRate
   var213.ShowAsTime = var0.ShowAsSeconds
   var213.AnimationData = var2
   var213.Playhead = var0.Playhead
   var213.EditingLength = var0.EditingLength
   var213.StepAnimation = var0.StepAnimation
   var213.UpdateEditingLength = var0.UpdateEditingLength
   var213.ReadOnly = var0.ReadOnly
   var213.LayoutOrder = 2
   var166.TimeDisplay = var1.createElement(var6, var213)
   return var1.createElement("Frame", var154, var166)
end

fun8 = var3.withContext
local var217 = {}
var217.Stylizer = var3.Stylizer
var217.Analytics = var3.Analytics
var14 = fun8(var217)(var14)
return require(var0.Packages.RoactRodux).connect(function(arg1)
   local var0 = {}
   var0.FrameRate = arg1.Status.FrameRate
   var0.PlayState = arg1.Status.PlayState
   var0.ReadOnly = arg1.Status.ReadOnly
   var0.RootInstance = arg1.Status.RootInstance
   return var0
end, function(arg1)
   local var0 = {}
   function var0.ToggleLooping()
      return arg1.props.ToggleLooping(arg1.props.Analytics)
   end
   
   function var0.StepAnimation(arg1)
      local var244 = arg1.props
      var244 = arg1
      return var244.LoadAnimationData(var244, arg1.props.Analytics)
   end
   
   function var0.SetPlayState()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function var0.LoadAnimationData()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function var0.UpdateEditingLength(arg1)
      local var266 = arg1.props
      var266 = arg1
      return var266.SetPlayState(var266, arg1.props.Analytics)
   end
   
   function var0.SkipBackward()
      return arg1.props.StepAnimation(0)
   end
   
   function var0.SkipForward()
      local var0 = arg1.props
      return var0.StepAnimation(var0.AnimationData.Metadata.EndTick)
   end
   
   return var0
end)(var14)
