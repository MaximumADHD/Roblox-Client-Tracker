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
      local var1480 = arg1.props
      var1480 = arg1
      return var1480.LoadAnimationData(var1480, arg1.props.Analytics)
   end
   
   function arg1.skipBackwardWrapper()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function arg1.skipForwardWrapper()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function arg1.setPlayStateWrapper(arg1)
      local var1502 = arg1.props
      var1502 = arg1
      return var1502.SetPlayState(var1502, arg1.props.Analytics)
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
   local var1540 = {}
   var1540.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1540.BorderSizePixel = 1
   var1540.LayoutOrder = 0
   var1540.BackgroundColor3 = var1.backgroundColor
   var1540.BorderColor3 = var1.borderColor
   local var1552 = {}
   local var1556 = {}
   var1556.FillDirection = Enum.FillDirection.Horizontal
   var1556.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1556.SortOrder = Enum.SortOrder.LayoutOrder
   var1556.VerticalAlignment = Enum.VerticalAlignment.Center
   var1552.Layout = var1.createElement("UIListLayout", var1556)
   local var1565 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1565.AnimationName = ""
   var1565.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1565.RootInstance = var3
   local var1571 = arg1.loadAnimationDataWrapper
   var1565.LoadAnimationData = var1571
   var1571 = var3
   if var1571 then
      var1571 = var2
      local var0 = var1571 and var2.Instances.Root.Type
   end
   var1565.InstanceType = var1571
   var1565.LayoutOrder = 0
   var1565.IsChannelAnimation = var0.IsChannelAnimation
   var1552.AnimationClipDropdown = var1.createElement(var4, var1565)
   local var1581 = {}
   var1581.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1581.IsLooping = false
   var1581.SkipBackward = arg1.skipBackwardWrapper
   var1581.SkipForward = arg1.skipForwardWrapper
   var1581.SetPlayState = arg1.setPlayStateWrapper
   var1581.ToggleLooping = arg1.toggleLoopingWrapper
   var1581.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1581.GoToLastFrame = arg1.goToLastFrameWrapper
   var1581.LayoutOrder = 1
   var1552.MediaControls = var1.createElement(var5, var1581)
   local var1599 = {}
   var1599.StartTick = var0.StartTick
   var1599.EndTick = var0.EndTick
   var1599.FrameRate = var0.FrameRate
   var1599.ShowAsTime = var0.ShowAsSeconds
   var1599.AnimationData = var2
   var1599.Playhead = var0.Playhead
   var1599.EditingLength = var0.EditingLength
   var1599.StepAnimation = var0.StepAnimation
   var1599.UpdateEditingLength = var0.UpdateEditingLength
   var1599.ReadOnly = var0.ReadOnly
   var1599.LayoutOrder = 2
   var1552.TimeDisplay = var1.createElement(var6, var1599)
   return var1.createElement("Frame", var1540, var1552)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1540 = {}
   var1540.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1540.BorderSizePixel = 1
   var1540.LayoutOrder = 0
   var1540.BackgroundColor3 = var1.backgroundColor
   var1540.BorderColor3 = var1.borderColor
   local var1552 = {}
   local var1556 = {}
   var1556.FillDirection = Enum.FillDirection.Horizontal
   var1556.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1556.SortOrder = Enum.SortOrder.LayoutOrder
   var1556.VerticalAlignment = Enum.VerticalAlignment.Center
   var1552.Layout = var1.createElement("UIListLayout", var1556)
   local var1565 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1565.AnimationName = ""
   var1565.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1565.RootInstance = var3
   local var1571 = arg1.loadAnimationDataWrapper
   var1565.LoadAnimationData = var1571
   var1571 = var3
   if var1571 then
      var1571 = var2
      local var0 = var1571 and var2.Instances.Root.Type
   end
   var1565.InstanceType = var1571
   var1565.LayoutOrder = 0
   var1565.IsChannelAnimation = var0.IsChannelAnimation
   var1552.AnimationClipDropdown = var1.createElement(var4, var1565)
   local var1581 = {}
   var1581.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1581.IsLooping = false
   var1581.SkipBackward = arg1.skipBackwardWrapper
   var1581.SkipForward = arg1.skipForwardWrapper
   var1581.SetPlayState = arg1.setPlayStateWrapper
   var1581.ToggleLooping = arg1.toggleLoopingWrapper
   var1581.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1581.GoToLastFrame = arg1.goToLastFrameWrapper
   var1581.LayoutOrder = 1
   var1552.MediaControls = var1.createElement(var5, var1581)
   local var1599 = {}
   var1599.StartTick = var0.StartTick
   var1599.EndTick = var0.EndTick
   var1599.FrameRate = var0.FrameRate
   var1599.ShowAsTime = var0.ShowAsSeconds
   var1599.AnimationData = var2
   var1599.Playhead = var0.Playhead
   var1599.EditingLength = var0.EditingLength
   var1599.StepAnimation = var0.StepAnimation
   var1599.UpdateEditingLength = var0.UpdateEditingLength
   var1599.ReadOnly = var0.ReadOnly
   var1599.LayoutOrder = 2
   var1552.TimeDisplay = var1.createElement(var6, var1599)
   return var1.createElement("Frame", var1540, var1552)
end

fun62 = var3.withContext
local var1603 = {}
var1603.Stylizer = var3.Stylizer
var1603.Analytics = var3.Analytics
var14 = fun62(var1603)(var14)
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
      local var1630 = arg1.props
      var1630 = arg1
      return var1630.LoadAnimationData(var1630, arg1.props.Analytics)
   end
   
   function var0.SetPlayState()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function var0.LoadAnimationData()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function var0.UpdateEditingLength(arg1)
      local var1652 = arg1.props
      var1652 = arg1
      return var1652.SetPlayState(var1652, arg1.props.Analytics)
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
