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
      local var931 = arg1.props
      var931 = arg1
      return var931.LoadAnimationData(var931, arg1.props.Analytics)
   end
   
   function arg1.skipBackwardWrapper()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function arg1.skipForwardWrapper()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function arg1.setPlayStateWrapper(arg1)
      local var953 = arg1.props
      var953 = arg1
      return var953.SetPlayState(var953, arg1.props.Analytics)
   end
   
   function arg1.goToFirstFrameWrapper()
      return arg1.props.StepAnimation(0)
   end
   
   function arg1.goToLastFrameWrapper()
      local var0 = arg1.props
      return var0.StepAnimation(var0.AnimationData.Metadata.EndTick)
   end
   
end

local function fun49(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var991 = {}
   var991.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var991.BorderSizePixel = 1
   var991.LayoutOrder = 0
   var991.BackgroundColor3 = var1.backgroundColor
   var991.BorderColor3 = var1.borderColor
   local var1003 = {}
   local var1007 = {}
   var1007.FillDirection = Enum.FillDirection.Horizontal
   var1007.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1007.SortOrder = Enum.SortOrder.LayoutOrder
   var1007.VerticalAlignment = Enum.VerticalAlignment.Center
   var1003.Layout = var1.createElement("UIListLayout", var1007)
   local var1016 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1016.AnimationName = ""
   var1016.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1016.RootInstance = var3
   local var1022 = arg1.loadAnimationDataWrapper
   var1016.LoadAnimationData = var1022
   var1022 = var3
   if var1022 then
      var1022 = var2
      local var0 = var1022 and var2.Instances.Root.Type
   end
   var1016.InstanceType = var1022
   var1016.LayoutOrder = 0
   var1016.IsChannelAnimation = var0.IsChannelAnimation
   var1003.AnimationClipDropdown = var1.createElement(var4, var1016)
   local var1032 = {}
   var1032.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1032.IsLooping = false
   var1032.SkipBackward = arg1.skipBackwardWrapper
   var1032.SkipForward = arg1.skipForwardWrapper
   var1032.SetPlayState = arg1.setPlayStateWrapper
   var1032.ToggleLooping = arg1.toggleLoopingWrapper
   var1032.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1032.GoToLastFrame = arg1.goToLastFrameWrapper
   var1032.LayoutOrder = 1
   var1003.MediaControls = var1.createElement(var5, var1032)
   local var1050 = {}
   var1050.StartTick = var0.StartTick
   var1050.EndTick = var0.EndTick
   var1050.FrameRate = var0.FrameRate
   var1050.ShowAsTime = var0.ShowAsSeconds
   var1050.AnimationData = var2
   var1050.Playhead = var0.Playhead
   var1050.EditingLength = var0.EditingLength
   var1050.StepAnimation = var0.StepAnimation
   var1050.UpdateEditingLength = var0.UpdateEditingLength
   var1050.ReadOnly = var0.ReadOnly
   var1050.LayoutOrder = 2
   var1003.TimeDisplay = var1.createElement(var6, var1050)
   return var1.createElement("Frame", var991, var1003)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var991 = {}
   var991.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var991.BorderSizePixel = 1
   var991.LayoutOrder = 0
   var991.BackgroundColor3 = var1.backgroundColor
   var991.BorderColor3 = var1.borderColor
   local var1003 = {}
   local var1007 = {}
   var1007.FillDirection = Enum.FillDirection.Horizontal
   var1007.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1007.SortOrder = Enum.SortOrder.LayoutOrder
   var1007.VerticalAlignment = Enum.VerticalAlignment.Center
   var1003.Layout = var1.createElement("UIListLayout", var1007)
   local var1016 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1016.AnimationName = ""
   var1016.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1016.RootInstance = var3
   local var1022 = arg1.loadAnimationDataWrapper
   var1016.LoadAnimationData = var1022
   var1022 = var3
   if var1022 then
      var1022 = var2
      local var0 = var1022 and var2.Instances.Root.Type
   end
   var1016.InstanceType = var1022
   var1016.LayoutOrder = 0
   var1016.IsChannelAnimation = var0.IsChannelAnimation
   var1003.AnimationClipDropdown = var1.createElement(var4, var1016)
   local var1032 = {}
   var1032.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1032.IsLooping = false
   var1032.SkipBackward = arg1.skipBackwardWrapper
   var1032.SkipForward = arg1.skipForwardWrapper
   var1032.SetPlayState = arg1.setPlayStateWrapper
   var1032.ToggleLooping = arg1.toggleLoopingWrapper
   var1032.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1032.GoToLastFrame = arg1.goToLastFrameWrapper
   var1032.LayoutOrder = 1
   var1003.MediaControls = var1.createElement(var5, var1032)
   local var1050 = {}
   var1050.StartTick = var0.StartTick
   var1050.EndTick = var0.EndTick
   var1050.FrameRate = var0.FrameRate
   var1050.ShowAsTime = var0.ShowAsSeconds
   var1050.AnimationData = var2
   var1050.Playhead = var0.Playhead
   var1050.EditingLength = var0.EditingLength
   var1050.StepAnimation = var0.StepAnimation
   var1050.UpdateEditingLength = var0.UpdateEditingLength
   var1050.ReadOnly = var0.ReadOnly
   var1050.LayoutOrder = 2
   var1003.TimeDisplay = var1.createElement(var6, var1050)
   return var1.createElement("Frame", var991, var1003)
end

fun49 = var3.withContext
local var1054 = {}
var1054.Stylizer = var3.Stylizer
var1054.Analytics = var3.Analytics
var14 = fun49(var1054)(var14)
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
      local var1081 = arg1.props
      var1081 = arg1
      return var1081.LoadAnimationData(var1081, arg1.props.Analytics)
   end
   
   function var0.SetPlayState()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function var0.LoadAnimationData()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function var0.UpdateEditingLength(arg1)
      local var1103 = arg1.props
      var1103 = arg1
      return var1103.SetPlayState(var1103, arg1.props.Analytics)
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
