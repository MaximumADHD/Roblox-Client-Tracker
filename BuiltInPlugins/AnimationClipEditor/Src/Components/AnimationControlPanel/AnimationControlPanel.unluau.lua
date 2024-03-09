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
      local var1484 = arg1.props
      var1484 = arg1
      return var1484.LoadAnimationData(var1484, arg1.props.Analytics)
   end
   
   function arg1.skipBackwardWrapper()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function arg1.skipForwardWrapper()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function arg1.setPlayStateWrapper(arg1)
      local var1506 = arg1.props
      var1506 = arg1
      return var1506.SetPlayState(var1506, arg1.props.Analytics)
   end
   
   function arg1.goToFirstFrameWrapper()
      return arg1.props.StepAnimation(0)
   end
   
   function arg1.goToLastFrameWrapper()
      local var0 = arg1.props
      return var0.StepAnimation(var0.AnimationData.Metadata.EndTick)
   end
   
end

local function fun65(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1544 = {}
   var1544.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1544.BorderSizePixel = 1
   var1544.LayoutOrder = 0
   var1544.BackgroundColor3 = var1.backgroundColor
   var1544.BorderColor3 = var1.borderColor
   local var1556 = {}
   local var1560 = {}
   var1560.FillDirection = Enum.FillDirection.Horizontal
   var1560.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1560.SortOrder = Enum.SortOrder.LayoutOrder
   var1560.VerticalAlignment = Enum.VerticalAlignment.Center
   var1556.Layout = var1.createElement("UIListLayout", var1560)
   local var1569 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1569.AnimationName = ""
   var1569.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1569.RootInstance = var3
   local var1575 = arg1.loadAnimationDataWrapper
   var1569.LoadAnimationData = var1575
   var1575 = var3
   if var1575 then
      var1575 = var2
      local var0 = var1575 and var2.Instances.Root.Type
   end
   var1569.InstanceType = var1575
   var1569.LayoutOrder = 0
   var1569.IsChannelAnimation = var0.IsChannelAnimation
   var1556.AnimationClipDropdown = var1.createElement(var4, var1569)
   local var1585 = {}
   var1585.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1585.IsLooping = false
   var1585.SkipBackward = arg1.skipBackwardWrapper
   var1585.SkipForward = arg1.skipForwardWrapper
   var1585.SetPlayState = arg1.setPlayStateWrapper
   var1585.ToggleLooping = arg1.toggleLoopingWrapper
   var1585.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1585.GoToLastFrame = arg1.goToLastFrameWrapper
   var1585.LayoutOrder = 1
   var1556.MediaControls = var1.createElement(var5, var1585)
   local var1603 = {}
   var1603.StartTick = var0.StartTick
   var1603.EndTick = var0.EndTick
   var1603.FrameRate = var0.FrameRate
   var1603.ShowAsTime = var0.ShowAsSeconds
   var1603.AnimationData = var2
   var1603.Playhead = var0.Playhead
   var1603.EditingLength = var0.EditingLength
   var1603.StepAnimation = var0.StepAnimation
   var1603.UpdateEditingLength = var0.UpdateEditingLength
   var1603.ReadOnly = var0.ReadOnly
   var1603.LayoutOrder = 2
   var1556.TimeDisplay = var1.createElement(var6, var1603)
   return var1.createElement("Frame", var1544, var1556)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1544 = {}
   var1544.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1544.BorderSizePixel = 1
   var1544.LayoutOrder = 0
   var1544.BackgroundColor3 = var1.backgroundColor
   var1544.BorderColor3 = var1.borderColor
   local var1556 = {}
   local var1560 = {}
   var1560.FillDirection = Enum.FillDirection.Horizontal
   var1560.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1560.SortOrder = Enum.SortOrder.LayoutOrder
   var1560.VerticalAlignment = Enum.VerticalAlignment.Center
   var1556.Layout = var1.createElement("UIListLayout", var1560)
   local var1569 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1569.AnimationName = ""
   var1569.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1569.RootInstance = var3
   local var1575 = arg1.loadAnimationDataWrapper
   var1569.LoadAnimationData = var1575
   var1575 = var3
   if var1575 then
      var1575 = var2
      local var0 = var1575 and var2.Instances.Root.Type
   end
   var1569.InstanceType = var1575
   var1569.LayoutOrder = 0
   var1569.IsChannelAnimation = var0.IsChannelAnimation
   var1556.AnimationClipDropdown = var1.createElement(var4, var1569)
   local var1585 = {}
   var1585.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1585.IsLooping = false
   var1585.SkipBackward = arg1.skipBackwardWrapper
   var1585.SkipForward = arg1.skipForwardWrapper
   var1585.SetPlayState = arg1.setPlayStateWrapper
   var1585.ToggleLooping = arg1.toggleLoopingWrapper
   var1585.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1585.GoToLastFrame = arg1.goToLastFrameWrapper
   var1585.LayoutOrder = 1
   var1556.MediaControls = var1.createElement(var5, var1585)
   local var1603 = {}
   var1603.StartTick = var0.StartTick
   var1603.EndTick = var0.EndTick
   var1603.FrameRate = var0.FrameRate
   var1603.ShowAsTime = var0.ShowAsSeconds
   var1603.AnimationData = var2
   var1603.Playhead = var0.Playhead
   var1603.EditingLength = var0.EditingLength
   var1603.StepAnimation = var0.StepAnimation
   var1603.UpdateEditingLength = var0.UpdateEditingLength
   var1603.ReadOnly = var0.ReadOnly
   var1603.LayoutOrder = 2
   var1556.TimeDisplay = var1.createElement(var6, var1603)
   return var1.createElement("Frame", var1544, var1556)
end

fun65 = var3.withContext
local var1607 = {}
var1607.Stylizer = var3.Stylizer
var1607.Analytics = var3.Analytics
var14 = fun65(var1607)(var14)
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
      local var1634 = arg1.props
      var1634 = arg1
      return var1634.LoadAnimationData(var1634, arg1.props.Analytics)
   end
   
   function var0.SetPlayState()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function var0.LoadAnimationData()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function var0.UpdateEditingLength(arg1)
      local var1656 = arg1.props
      var1656 = arg1
      return var1656.SetPlayState(var1656, arg1.props.Analytics)
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
