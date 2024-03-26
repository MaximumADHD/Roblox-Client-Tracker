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
      local var1414 = arg1.props
      var1414 = arg1
      return var1414.LoadAnimationData(var1414, arg1.props.Analytics)
   end
   
   function arg1.skipBackwardWrapper()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function arg1.skipForwardWrapper()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function arg1.setPlayStateWrapper(arg1)
      local var1436 = arg1.props
      var1436 = arg1
      return var1436.SetPlayState(var1436, arg1.props.Analytics)
   end
   
   function arg1.goToFirstFrameWrapper()
      return arg1.props.StepAnimation(0)
   end
   
   function arg1.goToLastFrameWrapper()
      local var0 = arg1.props
      return var0.StepAnimation(var0.AnimationData.Metadata.EndTick)
   end
   
end

local function fun68(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1474 = {}
   var1474.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1474.BorderSizePixel = 1
   var1474.LayoutOrder = 0
   var1474.BackgroundColor3 = var1.backgroundColor
   var1474.BorderColor3 = var1.borderColor
   local var1486 = {}
   local var1490 = {}
   var1490.FillDirection = Enum.FillDirection.Horizontal
   var1490.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1490.SortOrder = Enum.SortOrder.LayoutOrder
   var1490.VerticalAlignment = Enum.VerticalAlignment.Center
   var1486.Layout = var1.createElement("UIListLayout", var1490)
   local var1499 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1499.AnimationName = ""
   var1499.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1499.RootInstance = var3
   local var1505 = arg1.loadAnimationDataWrapper
   var1499.LoadAnimationData = var1505
   var1505 = var3
   if var1505 then
      var1505 = var2
      local var0 = var1505 and var2.Instances.Root.Type
   end
   var1499.InstanceType = var1505
   var1499.LayoutOrder = 0
   var1499.IsChannelAnimation = var0.IsChannelAnimation
   var1486.AnimationClipDropdown = var1.createElement(var4, var1499)
   local var1515 = {}
   var1515.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1515.IsLooping = false
   var1515.SkipBackward = arg1.skipBackwardWrapper
   var1515.SkipForward = arg1.skipForwardWrapper
   var1515.SetPlayState = arg1.setPlayStateWrapper
   var1515.ToggleLooping = arg1.toggleLoopingWrapper
   var1515.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1515.GoToLastFrame = arg1.goToLastFrameWrapper
   var1515.LayoutOrder = 1
   var1486.MediaControls = var1.createElement(var5, var1515)
   local var1533 = {}
   var1533.StartTick = var0.StartTick
   var1533.EndTick = var0.EndTick
   var1533.FrameRate = var0.FrameRate
   var1533.ShowAsTime = var0.ShowAsSeconds
   var1533.AnimationData = var2
   var1533.Playhead = var0.Playhead
   var1533.EditingLength = var0.EditingLength
   var1533.StepAnimation = var0.StepAnimation
   var1533.UpdateEditingLength = var0.UpdateEditingLength
   var1533.ReadOnly = var0.ReadOnly
   var1533.LayoutOrder = 2
   var1486.TimeDisplay = var1.createElement(var6, var1533)
   return var1.createElement("Frame", var1474, var1486)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1474 = {}
   var1474.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1474.BorderSizePixel = 1
   var1474.LayoutOrder = 0
   var1474.BackgroundColor3 = var1.backgroundColor
   var1474.BorderColor3 = var1.borderColor
   local var1486 = {}
   local var1490 = {}
   var1490.FillDirection = Enum.FillDirection.Horizontal
   var1490.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1490.SortOrder = Enum.SortOrder.LayoutOrder
   var1490.VerticalAlignment = Enum.VerticalAlignment.Center
   var1486.Layout = var1.createElement("UIListLayout", var1490)
   local var1499 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1499.AnimationName = ""
   var1499.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1499.RootInstance = var3
   local var1505 = arg1.loadAnimationDataWrapper
   var1499.LoadAnimationData = var1505
   var1505 = var3
   if var1505 then
      var1505 = var2
      local var0 = var1505 and var2.Instances.Root.Type
   end
   var1499.InstanceType = var1505
   var1499.LayoutOrder = 0
   var1499.IsChannelAnimation = var0.IsChannelAnimation
   var1486.AnimationClipDropdown = var1.createElement(var4, var1499)
   local var1515 = {}
   var1515.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1515.IsLooping = false
   var1515.SkipBackward = arg1.skipBackwardWrapper
   var1515.SkipForward = arg1.skipForwardWrapper
   var1515.SetPlayState = arg1.setPlayStateWrapper
   var1515.ToggleLooping = arg1.toggleLoopingWrapper
   var1515.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1515.GoToLastFrame = arg1.goToLastFrameWrapper
   var1515.LayoutOrder = 1
   var1486.MediaControls = var1.createElement(var5, var1515)
   local var1533 = {}
   var1533.StartTick = var0.StartTick
   var1533.EndTick = var0.EndTick
   var1533.FrameRate = var0.FrameRate
   var1533.ShowAsTime = var0.ShowAsSeconds
   var1533.AnimationData = var2
   var1533.Playhead = var0.Playhead
   var1533.EditingLength = var0.EditingLength
   var1533.StepAnimation = var0.StepAnimation
   var1533.UpdateEditingLength = var0.UpdateEditingLength
   var1533.ReadOnly = var0.ReadOnly
   var1533.LayoutOrder = 2
   var1486.TimeDisplay = var1.createElement(var6, var1533)
   return var1.createElement("Frame", var1474, var1486)
end

fun68 = var3.withContext
local var1537 = {}
var1537.Stylizer = var3.Stylizer
var1537.Analytics = var3.Analytics
var14 = fun68(var1537)(var14)
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
      local var1564 = arg1.props
      var1564 = arg1
      return var1564.LoadAnimationData(var1564, arg1.props.Analytics)
   end
   
   function var0.SetPlayState()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function var0.LoadAnimationData()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function var0.UpdateEditingLength(arg1)
      local var1586 = arg1.props
      var1586 = arg1
      return var1586.SetPlayState(var1586, arg1.props.Analytics)
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
