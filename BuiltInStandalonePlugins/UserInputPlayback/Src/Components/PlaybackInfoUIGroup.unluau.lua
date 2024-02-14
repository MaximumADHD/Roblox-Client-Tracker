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
   local var165 = {}
   var165.dataValid = false
   arg1.state = var165
   function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
      if arg1 == "props" then
         local var0 = arg1.props
         var0.SetCurrentRecordingDurationSec(arg2)
         var0.SetCurrentRecordingNumEvents(arg3)
         var0.SetCurrentRecordingDeviceId(arg1.deviceId)
         var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
         local var1 = arg1.resolution
         var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
         local var188 = {}
         var188.dataValid = true
         arg1:setState(var188)
      end
      local var192 = {}
      var192.dataValid = false
      arg1:setState(var192)
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
   local var212 = {}
   var212.LayoutOrder = var0.LayoutOrder
   var212.Style = "CornerBox"
   var212.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var212.AutomaticSize = Enum.AutomaticSize.Y
   var212.Layout = Enum.FillDirection.Vertical
   var212.Spacing = UDim.new(0, var2.PaddingPx)
   var212.Padding = var2.PaddingPx
   var212.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var212.VerticalAlignment = Enum.VerticalAlignment.Top
   local var228 = {}
   local var232 = {}
   var232.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
   var232.Size = UDim2.fromScale(1, 0)
   var232.AutomaticSize = Enum.AutomaticSize.Y
   var232.LayoutOrder = 0
   var232.TextXAlignment = Enum.TextXAlignment.Left
   var232.TextYAlignment = Enum.TextYAlignment.Top
   var228.Label = var1.createElement(var5, var232)
   local var249 = {}
   var249.Size = UDim2.fromScale(1, 0)
   var249.AutomaticSize = Enum.AutomaticSize.Y
   var249.LayoutOrder = 1
   var249.Layout = Enum.FillDirection.Vertical
   var249.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var249.VerticalAlignment = Enum.VerticalAlignment.Top
   local var259 = {}
   local var263 = {}
   var263.Label = var1:getText("PlaybackTabView", "RecordingDuration")
   var263.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
   var263.LayoutOrder = 1
   var259.RecordingDuration = var1.createElement(var7, var263)
   local var283 = {}
   var283.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
   var283.Value = tostring(var0.CurrentRecordingNumEvents)
   var283.LayoutOrder = 2
   var259.NumberOfEvents = var1.createElement(var7, var283)
   local var296 = {}
   var296.Label = var1:getText("PlaybackTabView", "RecordingDevice")
   var296.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
   var296.LayoutOrder = 3
   var259.RecordingDeviceId = var1.createElement(var7, var296)
   local var311 = {}
   var311.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
   var311.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
   var311.LayoutOrder = 4
   var259.RecordingOrientation = var1.createElement(var7, var311)
   local var327 = {}
   var327.Label = var1:getText("PlaybackTabView", "RecordingResolution")
   var327.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var327.LayoutOrder = 5
   var259.RecordingResolution = var1.createElement(var7, var327)
   var228.KeyValuePairs = var1.createElement(var6, var249, var259)
   return var1.createElement(var6, var212, var228)
end

local var345 = {}
var345.Stylizer = var3.Stylizer
var345.Localization = var3.Localization
var17 = var3.withContext(var345)(var17)
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
         local var387 = {}
         var387.dataValid = true
         arg1:setState(var387)
      end
      local var391 = {}
      var391.dataValid = false
      arg1:setState(var391)
   end
   
   function var0.SetCurrentRecordingDeviceId(arg1)
      local var395 = {}
      var395.dataValid = false
      arg1.state = var395
      function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
         if arg1 == "props" then
            local var0 = arg1.props
            var0.SetCurrentRecordingDurationSec(arg2)
            var0.SetCurrentRecordingNumEvents(arg3)
            var0.SetCurrentRecordingDeviceId(arg1.deviceId)
            var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
            local var1 = arg1.resolution
            var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
            local var418 = {}
            var418.dataValid = true
            arg1:setState(var418)
         end
         local var422 = {}
         var422.dataValid = false
         arg1:setState(var422)
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
      local var442 = {}
      var442.LayoutOrder = var0.LayoutOrder
      var442.Style = "CornerBox"
      var442.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
      var442.AutomaticSize = Enum.AutomaticSize.Y
      var442.Layout = Enum.FillDirection.Vertical
      var442.Spacing = UDim.new(0, var2.PaddingPx)
      var442.Padding = var2.PaddingPx
      var442.HorizontalAlignment = Enum.HorizontalAlignment.Center
      var442.VerticalAlignment = Enum.VerticalAlignment.Top
      local var458 = {}
      local var462 = {}
      var462.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
      var462.Size = UDim2.fromScale(1, 0)
      var462.AutomaticSize = Enum.AutomaticSize.Y
      var462.LayoutOrder = 0
      var462.TextXAlignment = Enum.TextXAlignment.Left
      var462.TextYAlignment = Enum.TextYAlignment.Top
      var458.Label = var1.createElement(var5, var462)
      local var479 = {}
      var479.Size = UDim2.fromScale(1, 0)
      var479.AutomaticSize = Enum.AutomaticSize.Y
      var479.LayoutOrder = 1
      var479.Layout = Enum.FillDirection.Vertical
      var479.HorizontalAlignment = Enum.HorizontalAlignment.Left
      var479.VerticalAlignment = Enum.VerticalAlignment.Top
      local var489 = {}
      local var493 = {}
      var493.Label = var1:getText("PlaybackTabView", "RecordingDuration")
      var493.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
      var493.LayoutOrder = 1
      var489.RecordingDuration = var1.createElement(var7, var493)
      local var513 = {}
      var513.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
      var513.Value = tostring(var0.CurrentRecordingNumEvents)
      var513.LayoutOrder = 2
      var489.NumberOfEvents = var1.createElement(var7, var513)
      local var526 = {}
      var526.Label = var1:getText("PlaybackTabView", "RecordingDevice")
      var526.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
      var526.LayoutOrder = 3
      var489.RecordingDeviceId = var1.createElement(var7, var526)
      local var541 = {}
      var541.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
      var541.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
      var541.LayoutOrder = 4
      var489.RecordingOrientation = var1.createElement(var7, var541)
      local var557 = {}
      var557.Label = var1:getText("PlaybackTabView", "RecordingResolution")
      var557.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
      var557.LayoutOrder = 5
      var489.RecordingResolution = var1.createElement(var7, var557)
      var458.KeyValuePairs = var1.createElement(var6, var479, var489)
      return var1.createElement(var6, var442, var458)
   end
   
   return var0
end)(var17)
