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
      local var1485 = arg1.props
      var1485 = arg1
      return var1485.LoadAnimationData(var1485, arg1.props.Analytics)
   end
   
   function arg1.skipBackwardWrapper()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function arg1.skipForwardWrapper()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function arg1.setPlayStateWrapper(arg1)
      local var1507 = arg1.props
      var1507 = arg1
      return var1507.SetPlayState(var1507, arg1.props.Analytics)
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
   local var1545 = {}
   var1545.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1545.BorderSizePixel = 1
   var1545.LayoutOrder = 0
   var1545.BackgroundColor3 = var1.backgroundColor
   var1545.BorderColor3 = var1.borderColor
   local var1557 = {}
   local var1561 = {}
   var1561.FillDirection = Enum.FillDirection.Horizontal
   var1561.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1561.SortOrder = Enum.SortOrder.LayoutOrder
   var1561.VerticalAlignment = Enum.VerticalAlignment.Center
   var1557.Layout = var1.createElement("UIListLayout", var1561)
   local var1570 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1570.AnimationName = ""
   var1570.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1570.RootInstance = var3
   local var1576 = arg1.loadAnimationDataWrapper
   var1570.LoadAnimationData = var1576
   var1576 = var3
   if var1576 then
      var1576 = var2
      local var0 = var1576 and var2.Instances.Root.Type
   end
   var1570.InstanceType = var1576
   var1570.LayoutOrder = 0
   var1570.IsChannelAnimation = var0.IsChannelAnimation
   var1557.AnimationClipDropdown = var1.createElement(var4, var1570)
   local var1586 = {}
   var1586.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1586.IsLooping = false
   var1586.SkipBackward = arg1.skipBackwardWrapper
   var1586.SkipForward = arg1.skipForwardWrapper
   var1586.SetPlayState = arg1.setPlayStateWrapper
   var1586.ToggleLooping = arg1.toggleLoopingWrapper
   var1586.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1586.GoToLastFrame = arg1.goToLastFrameWrapper
   var1586.LayoutOrder = 1
   var1557.MediaControls = var1.createElement(var5, var1586)
   local var1604 = {}
   var1604.StartTick = var0.StartTick
   var1604.EndTick = var0.EndTick
   var1604.FrameRate = var0.FrameRate
   var1604.ShowAsTime = var0.ShowAsSeconds
   var1604.AnimationData = var2
   var1604.Playhead = var0.Playhead
   var1604.EditingLength = var0.EditingLength
   var1604.StepAnimation = var0.StepAnimation
   var1604.UpdateEditingLength = var0.UpdateEditingLength
   var1604.ReadOnly = var0.ReadOnly
   var1604.LayoutOrder = 2
   var1557.TimeDisplay = var1.createElement(var6, var1604)
   return var1.createElement("Frame", var1545, var1557)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.AnimationData
   local var3 = var0.RootInstance
   local var1545 = {}
   var1545.Size = UDim2.new(1, 0, 0, var2.TIMELINE_HEIGHT)
   var1545.BorderSizePixel = 1
   var1545.LayoutOrder = 0
   var1545.BackgroundColor3 = var1.backgroundColor
   var1545.BorderColor3 = var1.borderColor
   local var1557 = {}
   local var1561 = {}
   var1561.FillDirection = Enum.FillDirection.Horizontal
   var1561.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1561.SortOrder = Enum.SortOrder.LayoutOrder
   var1561.VerticalAlignment = Enum.VerticalAlignment.Center
   var1557.Layout = var1.createElement("UIListLayout", var1561)
   local var1570 = {}
   if var2 then
      local var0 = var2.Metadata.Name or ""
   end
   var1570.AnimationName = ""
   var1570.IsLegacyAnimSaves = var0.IsLegacyAnimSaves
   var1570.RootInstance = var3
   local var1576 = arg1.loadAnimationDataWrapper
   var1570.LoadAnimationData = var1576
   var1576 = var3
   if var1576 then
      var1576 = var2
      local var0 = var1576 and var2.Instances.Root.Type
   end
   var1570.InstanceType = var1576
   var1570.LayoutOrder = 0
   var1570.IsChannelAnimation = var0.IsChannelAnimation
   var1557.AnimationClipDropdown = var1.createElement(var4, var1570)
   local var1586 = {}
   var1586.PlayState = var0.PlayState
   if var2 then
      if var2.Metadata then
         local var0 = var2.Metadata.Looping or false
      end
   end
   var1586.IsLooping = false
   var1586.SkipBackward = arg1.skipBackwardWrapper
   var1586.SkipForward = arg1.skipForwardWrapper
   var1586.SetPlayState = arg1.setPlayStateWrapper
   var1586.ToggleLooping = arg1.toggleLoopingWrapper
   var1586.GoToFirstFrame = arg1.goToFirstFrameWrapper
   var1586.GoToLastFrame = arg1.goToLastFrameWrapper
   var1586.LayoutOrder = 1
   var1557.MediaControls = var1.createElement(var5, var1586)
   local var1604 = {}
   var1604.StartTick = var0.StartTick
   var1604.EndTick = var0.EndTick
   var1604.FrameRate = var0.FrameRate
   var1604.ShowAsTime = var0.ShowAsSeconds
   var1604.AnimationData = var2
   var1604.Playhead = var0.Playhead
   var1604.EditingLength = var0.EditingLength
   var1604.StepAnimation = var0.StepAnimation
   var1604.UpdateEditingLength = var0.UpdateEditingLength
   var1604.ReadOnly = var0.ReadOnly
   var1604.LayoutOrder = 2
   var1557.TimeDisplay = var1.createElement(var6, var1604)
   return var1.createElement("Frame", var1545, var1557)
end

fun62 = var3.withContext
local var1608 = {}
var1608.Stylizer = var3.Stylizer
var1608.Analytics = var3.Analytics
var14 = fun62(var1608)(var14)
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
      local var1635 = arg1.props
      var1635 = arg1
      return var1635.LoadAnimationData(var1635, arg1.props.Analytics)
   end
   
   function var0.SetPlayState()
      return arg1.props.SkipBackward(arg1.props.Analytics)
   end
   
   function var0.LoadAnimationData()
      return arg1.props.SkipForward(arg1.props.Analytics)
   end
   
   function var0.UpdateEditingLength(arg1)
      local var1657 = arg1.props
      var1657 = arg1
      return var1657.SetPlayState(var1657, arg1.props.Analytics)
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
