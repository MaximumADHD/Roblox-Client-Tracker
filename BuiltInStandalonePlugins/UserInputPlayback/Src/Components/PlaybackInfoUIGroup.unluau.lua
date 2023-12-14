-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.Pane
local var7 = require(var0.Src.Components.UIKeyValueTextLabel)
local var8 = require(var0.Src.Util.StringFormatters)
local var9 = require(var0.Src.Util.DMBridge)
local var10 = require(var0.Src.Types)
local var11 = var0.Src.Actions.PlaybackTab
local var12 = require(var11.SetCurrentRecordingDurationSec)
local var13 = require(var11.SetCurrentRecordingNumEvents)
local var14 = require(var11.SetCurrentRecordingResolution)
local var15 = require(var11.SetCurrentRecordingDeviceId)
local var16 = require(var11.SetCurrentRecordingDeviceOrientation)
local var17 = var1.PureComponent:extend("PlaybackInfoUIGroup")
function var17.init(arg1)
   local var285 = {}
   var285.dataValid = false
   arg1.state = var285
   function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
      if arg1 == "props" then
         local var0 = arg1.props
         var0.SetCurrentRecordingDurationSec(arg2)
         var0.SetCurrentRecordingNumEvents(arg3)
         var0.SetCurrentRecordingDeviceId(arg1.deviceId)
         var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
         local var1 = arg1.resolution
         var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
         local var308 = {}
         var308.dataValid = true
         arg1:setState(var308)
      end
      local var312 = {}
      var312.dataValid = false
      arg1:setState(var312)
   end
   
end

function var17.didMount(arg1)
   var9.connectPlaybackInfoChangedCallback(arg1.onPlaybackInfoChanged)
end

function var17.willUnmount(arg1)
   var9.disconnectPlaybackInfoChangedCallback()
end

function var17.render(arg1)
   if not arg1.state.dataValid then
      return nil
   end
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var332 = {}
   var332.LayoutOrder = var0.LayoutOrder
   var332.Style = "CornerBox"
   var332.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var332.AutomaticSize = Enum.AutomaticSize.Y
   var332.Layout = Enum.FillDirection.Vertical
   var332.Spacing = UDim.new(0, var2.PaddingPx)
   var332.Padding = var2.PaddingPx
   var332.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var332.VerticalAlignment = Enum.VerticalAlignment.Top
   local var348 = {}
   local var352 = {}
   var352.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
   var352.Size = UDim2.fromScale(1, 0)
   var352.AutomaticSize = Enum.AutomaticSize.Y
   var352.LayoutOrder = 0
   var352.TextXAlignment = Enum.TextXAlignment.Left
   var352.TextYAlignment = Enum.TextYAlignment.Top
   var348.Label = var1.createElement(var5, var352)
   local var369 = {}
   var369.Size = UDim2.fromScale(1, 0)
   var369.AutomaticSize = Enum.AutomaticSize.Y
   var369.LayoutOrder = 1
   var369.Layout = Enum.FillDirection.Vertical
   var369.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var369.VerticalAlignment = Enum.VerticalAlignment.Top
   local var379 = {}
   local var383 = {}
   var383.Label = var1:getText("PlaybackTabView", "RecordingDuration")
   var383.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
   var383.LayoutOrder = 1
   var379.RecordingDuration = var1.createElement(var7, var383)
   local var403 = {}
   var403.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
   var403.Value = tostring(var0.CurrentRecordingNumEvents)
   var403.LayoutOrder = 2
   var379.NumberOfEvents = var1.createElement(var7, var403)
   local var416 = {}
   var416.Label = var1:getText("PlaybackTabView", "RecordingDevice")
   var416.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
   var416.LayoutOrder = 3
   var379.RecordingDeviceId = var1.createElement(var7, var416)
   local var431 = {}
   var431.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
   var431.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
   var431.LayoutOrder = 4
   var379.RecordingOrientation = var1.createElement(var7, var431)
   local var447 = {}
   var447.Label = var1:getText("PlaybackTabView", "RecordingResolution")
   var447.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var447.LayoutOrder = 5
   var379.RecordingResolution = var1.createElement(var7, var447)
   var348.KeyValuePairs = var1.createElement(var6, var369, var379)
   return var1.createElement(var6, var332, var348)
end

local var465 = {}
var465.Stylizer = var3.Stylizer
var465.Localization = var3.Localization
var17 = var3.withContext(var465)(var17)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.CurrentRecordingDurationSec = arg1.playbackTab.currentRecordingDurationSec
   var0.CurrentRecordingNumEvents = arg1.playbackTab.currentRecordingNumEvents
   var0.CurrentRecordingDeviceId = arg1.playbackTab.currentRecordingDeviceId
   var0.CurrentRecordingDeviceOrientation = arg1.playbackTab.currentRecordingDeviceOrientation
   var0.CurrentRecordingResolution = arg1.playbackTab.currentRecordingResolution
   return var0
end, function(arg1)
   local var0 = {}
   function var0.SetCurrentRecordingDurationSec(arg1, arg2, arg3)
      if arg1 == "props" then
         local var0 = arg1.props
         var0.SetCurrentRecordingDurationSec(arg2)
         var0.SetCurrentRecordingNumEvents(arg3)
         var0.SetCurrentRecordingDeviceId(arg1.deviceId)
         var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
         local var1 = arg1.resolution
         var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
         local var507 = {}
         var507.dataValid = true
         arg1:setState(var507)
      end
      local var511 = {}
      var511.dataValid = false
      arg1:setState(var511)
   end
   
   function var0.SetCurrentRecordingDeviceId(arg1)
      local var515 = {}
      var515.dataValid = false
      arg1.state = var515
      function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
         if arg1 == "props" then
            local var0 = arg1.props
            var0.SetCurrentRecordingDurationSec(arg2)
            var0.SetCurrentRecordingNumEvents(arg3)
            var0.SetCurrentRecordingDeviceId(arg1.deviceId)
            var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
            local var1 = arg1.resolution
            var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
            local var538 = {}
            var538.dataValid = true
            arg1:setState(var538)
         end
         local var542 = {}
         var542.dataValid = false
         arg1:setState(var542)
      end
      
   end
   
   function var0.SetCurrentRecordingNumEvents(arg1)
      var9.connectPlaybackInfoChangedCallback(arg1.onPlaybackInfoChanged)
   end
   
   function var0.SetCurrentRecordingResolution(arg1)
      var9.disconnectPlaybackInfoChangedCallback()
   end
   
   function var0.SetCurrentRecordingDeviceOrientation(arg1)
      if not arg1.state.dataValid then
         return nil
      end
      local var0 = arg1.props
      local var1 = var0.Localization
      local var2 = var0.Stylizer
      local var562 = {}
      var562.LayoutOrder = var0.LayoutOrder
      var562.Style = "CornerBox"
      var562.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
      var562.AutomaticSize = Enum.AutomaticSize.Y
      var562.Layout = Enum.FillDirection.Vertical
      var562.Spacing = UDim.new(0, var2.PaddingPx)
      var562.Padding = var2.PaddingPx
      var562.HorizontalAlignment = Enum.HorizontalAlignment.Center
      var562.VerticalAlignment = Enum.VerticalAlignment.Top
      local var578 = {}
      local var582 = {}
      var582.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
      var582.Size = UDim2.fromScale(1, 0)
      var582.AutomaticSize = Enum.AutomaticSize.Y
      var582.LayoutOrder = 0
      var582.TextXAlignment = Enum.TextXAlignment.Left
      var582.TextYAlignment = Enum.TextYAlignment.Top
      var578.Label = var1.createElement(var5, var582)
      local var599 = {}
      var599.Size = UDim2.fromScale(1, 0)
      var599.AutomaticSize = Enum.AutomaticSize.Y
      var599.LayoutOrder = 1
      var599.Layout = Enum.FillDirection.Vertical
      var599.HorizontalAlignment = Enum.HorizontalAlignment.Left
      var599.VerticalAlignment = Enum.VerticalAlignment.Top
      local var609 = {}
      local var613 = {}
      var613.Label = var1:getText("PlaybackTabView", "RecordingDuration")
      var613.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
      var613.LayoutOrder = 1
      var609.RecordingDuration = var1.createElement(var7, var613)
      local var633 = {}
      var633.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
      var633.Value = tostring(var0.CurrentRecordingNumEvents)
      var633.LayoutOrder = 2
      var609.NumberOfEvents = var1.createElement(var7, var633)
      local var646 = {}
      var646.Label = var1:getText("PlaybackTabView", "RecordingDevice")
      var646.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
      var646.LayoutOrder = 3
      var609.RecordingDeviceId = var1.createElement(var7, var646)
      local var661 = {}
      var661.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
      var661.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
      var661.LayoutOrder = 4
      var609.RecordingOrientation = var1.createElement(var7, var661)
      local var677 = {}
      var677.Label = var1:getText("PlaybackTabView", "RecordingResolution")
      var677.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
      var677.LayoutOrder = 5
      var609.RecordingResolution = var1.createElement(var7, var677)
      var578.KeyValuePairs = var1.createElement(var6, var599, var609)
      return var1.createElement(var6, var562, var578)
   end
   
   return var0
end)(var17)
