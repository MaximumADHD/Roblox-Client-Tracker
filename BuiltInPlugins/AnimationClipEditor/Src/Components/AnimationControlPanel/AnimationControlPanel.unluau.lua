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
      local var1482 = arg1.props
      var1482 = arg1
      return var1482.LoadAnimationData(var1482, arg1.props.Analytics)
   end
   
   function arg1.skipBackwardWrapper()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function arg1.skipForwardWrapper()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function arg1.setPlayStateWrapper(arg1)
      local var1504 = arg1.props
      var1504 = arg1
      return var1504.SetPlayState(var1504, arg1.props.Analytics)
   end
   
   function arg1.goToFirstFrameWrapper()
      return arg1.props.StepAnimation(0)
   end
   
   function arg1.goToLastFrameWrapper()
      local var0 = arg1.props
      return var0.StepAnimation(var0.AnimationData.Metadata.EndTick)
   end
   
end

local function fun62(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1542 = {}
   var1542.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1542.BorderSizePixel = 1
   var1542.LayoutOrder = 0
   var1542.BackgroundColor3 = var1.backgroundColor
   var1542.BorderColor3 = var1.borderColor
   local var1554 = {}
   local var1558 = {}
   var1558.FillDirection = Enum.FillDirection.Horizontal
   var1558.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1558.SortOrder = Enum.SortOrder.LayoutOrder
   var1558.VerticalAlignment = Enum.VerticalAlignment.Center
   var1554.Layout = var1.createElement("UIListLayout", var1558)
   local var1567 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1567.AnimationName = ""
   var1567.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1567.RootInstance = var3
   local var1573 = arg1.loadAnimationDataWrapper
   var1567.LoadAnimationData = var1573
   var1573 = var3
   if var1573 then
      var1573 = var2
      local var0 = var1573 and var2.Instances.Root.Type
   end
   var1567.InstanceType = var1573
   var1567.LayoutOrder = 0
   var1567.IsChannelAnimation = var0.IsChannelAnimation
   var1554.AnimationClipDropdown = var1.createElement(var4, var1567)
   local var1583 = {}
   var1583.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1583.IsLooping = false
   var1583.SkipBackward = arg1.skipBackwardWrapper
   var1583.SkipForward = arg1.skipForwardWrapper
   var1583.SetPlayState = arg1.setPlayStateWrapper
   var1583.ToggleLooping = arg1.toggleLoopingWrapper
   var1583.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1583.GoToLastFrame = arg1.goToLastFrameWrapper
   var1583.LayoutOrder = 1
   var1554.MediaControls = var1.createElement(var5, var1583)
   local var1601 = {}
   var1601.StartTick = var0.StartTick
   var1601.EndTick = var0.EndTick
   var1601.FrameRate = var0.FrameRate
   var1601.ShowAsTime = var0.ShowAsSeconds
   var1601.AnimationData = var2
   var1601.Playhead = var0.Playhead
   var1601.EditingLength = var0.EditingLength
   var1601.StepAnimation = var0.StepAnimation
   var1601.UpdateEditingLength = var0.UpdateEditingLength
   var1601.ReadOnly = var0.ReadOnly
   var1601.LayoutOrder = 2
   var1554.TimeDisplay = var1.createElement(var6, var1601)
   return var1.createElement("Frame", var1542, var1554)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1542 = {}
   var1542.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1542.BorderSizePixel = 1
   var1542.LayoutOrder = 0
   var1542.BackgroundColor3 = var1.backgroundColor
   var1542.BorderColor3 = var1.borderColor
   local var1554 = {}
   local var1558 = {}
   var1558.FillDirection = Enum.FillDirection.Horizontal
   var1558.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1558.SortOrder = Enum.SortOrder.LayoutOrder
   var1558.VerticalAlignment = Enum.VerticalAlignment.Center
   var1554.Layout = var1.createElement("UIListLayout", var1558)
   local var1567 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1567.AnimationName = ""
   var1567.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1567.RootInstance = var3
   local var1573 = arg1.loadAnimationDataWrapper
   var1567.LoadAnimationData = var1573
   var1573 = var3
   if var1573 then
      var1573 = var2
      local var0 = var1573 and var2.Instances.Root.Type
   end
   var1567.InstanceType = var1573
   var1567.LayoutOrder = 0
   var1567.IsChannelAnimation = var0.IsChannelAnimation
   var1554.AnimationClipDropdown = var1.createElement(var4, var1567)
   local var1583 = {}
   var1583.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1583.IsLooping = false
   var1583.SkipBackward = arg1.skipBackwardWrapper
   var1583.SkipForward = arg1.skipForwardWrapper
   var1583.SetPlayState = arg1.setPlayStateWrapper
   var1583.ToggleLooping = arg1.toggleLoopingWrapper
   var1583.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1583.GoToLastFrame = arg1.goToLastFrameWrapper
   var1583.LayoutOrder = 1
   var1554.MediaControls = var1.createElement(var5, var1583)
   local var1601 = {}
   var1601.StartTick = var0.StartTick
   var1601.EndTick = var0.EndTick
   var1601.FrameRate = var0.FrameRate
   var1601.ShowAsTime = var0.ShowAsSeconds
   var1601.AnimationData = var2
   var1601.Playhead = var0.Playhead
   var1601.EditingLength = var0.EditingLength
   var1601.StepAnimation = var0.StepAnimation
   var1601.UpdateEditingLength = var0.UpdateEditingLength
   var1601.ReadOnly = var0.ReadOnly
   var1601.LayoutOrder = 2
   var1554.TimeDisplay = var1.createElement(var6, var1601)
   return var1.createElement("Frame", var1542, var1554)
end

fun62 = var3.withContext
local var1605 = {}
var1605.Stylizer = var3.Stylizer
var1605.Analytics = var3.Analytics
var14 = fun62(var1605)(var14)
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
      local var1632 = arg1.props
      var1632 = arg1
      return var1632.LoadAnimationData(var1632, arg1.props.Analytics)
   end
   
   function var0.SetPlayState()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function var0.LoadAnimationData()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function var0.UpdateEditingLength(arg1)
      local var1654 = arg1.props
      var1654 = arg1
      return var1654.SetPlayState(var1654, arg1.props.Analytics)
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
