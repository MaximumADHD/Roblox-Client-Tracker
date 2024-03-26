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
   local var475 = {}
   var475.dataValid = false
   arg1.state = var475
   function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
      if arg1 == "props" then
         local var0 = arg1.props
         var0.SetCurrentRecordingDurationSec(arg2)
         var0.SetCurrentRecordingNumEvents(arg3)
         var0.SetCurrentRecordingDeviceId(arg1.deviceId)
         var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
         local var1 = arg1.resolution
         var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
         local var498 = {}
         var498.dataValid = true
         arg1:setState(var498)
      end
      local var502 = {}
      var502.dataValid = false
      arg1:setState(var502)
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
   local var522 = {}
   var522.LayoutOrder = var0.LayoutOrder
   var522.Style = "CornerBox"
   var522.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var522.AutomaticSize = Enum.AutomaticSize.Y
   var522.Layout = Enum.FillDirection.Vertical
   var522.Spacing = UDim.new(0, var2.PaddingPx)
   var522.Padding = var2.PaddingPx
   var522.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var522.VerticalAlignment = Enum.VerticalAlignment.Top
   local var538 = {}
   local var542 = {}
   var542.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
   var542.Size = UDim2.fromScale(1, 0)
   var542.AutomaticSize = Enum.AutomaticSize.Y
   var542.LayoutOrder = 0
   var542.TextXAlignment = Enum.TextXAlignment.Left
   var542.TextYAlignment = Enum.TextYAlignment.Top
   var538.Label = var1.createElement(var5, var542)
   local var559 = {}
   var559.Size = UDim2.fromScale(1, 0)
   var559.AutomaticSize = Enum.AutomaticSize.Y
   var559.LayoutOrder = 1
   var559.Layout = Enum.FillDirection.Vertical
   var559.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var559.VerticalAlignment = Enum.VerticalAlignment.Top
   local var569 = {}
   local var573 = {}
   var573.Label = var1:getText("PlaybackTabView", "RecordingDuration")
   var573.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
   var573.LayoutOrder = 1
   var569.RecordingDuration = var1.createElement(var7, var573)
   local var593 = {}
   var593.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
   var593.Value = tostring(var0.CurrentRecordingNumEvents)
   var593.LayoutOrder = 2
   var569.NumberOfEvents = var1.createElement(var7, var593)
   local var606 = {}
   var606.Label = var1:getText("PlaybackTabView", "RecordingDevice")
   var606.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
   var606.LayoutOrder = 3
   var569.RecordingDeviceId = var1.createElement(var7, var606)
   local var621 = {}
   var621.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
   var621.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
   var621.LayoutOrder = 4
   var569.RecordingOrientation = var1.createElement(var7, var621)
   local var637 = {}
   var637.Label = var1:getText("PlaybackTabView", "RecordingResolution")
   var637.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var637.LayoutOrder = 5
   var569.RecordingResolution = var1.createElement(var7, var637)
   var538.KeyValuePairs = var1.createElement(var6, var559, var569)
   return var1.createElement(var6, var522, var538)
end

local var655 = {}
var655.Stylizer = var3.Stylizer
var655.Localization = var3.Localization
var17 = var3.withContext(var655)(var17)
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
         local var697 = {}
         var697.dataValid = true
         arg1:setState(var697)
      end
      local var701 = {}
      var701.dataValid = false
      arg1:setState(var701)
   end
   
   function var0.SetCurrentRecordingDeviceId(arg1)
      local var705 = {}
      var705.dataValid = false
      arg1.state = var705
      function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
         if arg1 == "props" then
            local var0 = arg1.props
            var0.SetCurrentRecordingDurationSec(arg2)
            var0.SetCurrentRecordingNumEvents(arg3)
            var0.SetCurrentRecordingDeviceId(arg1.deviceId)
            var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
            local var1 = arg1.resolution
            var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
            local var728 = {}
            var728.dataValid = true
            arg1:setState(var728)
         end
         local var732 = {}
         var732.dataValid = false
         arg1:setState(var732)
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
      local var752 = {}
      var752.LayoutOrder = var0.LayoutOrder
      var752.Style = "CornerBox"
      var752.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
      var752.AutomaticSize = Enum.AutomaticSize.Y
      var752.Layout = Enum.FillDirection.Vertical
      var752.Spacing = UDim.new(0, var2.PaddingPx)
      var752.Padding = var2.PaddingPx
      var752.HorizontalAlignment = Enum.HorizontalAlignment.Center
      var752.VerticalAlignment = Enum.VerticalAlignment.Top
      local var768 = {}
      local var772 = {}
      var772.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
      var772.Size = UDim2.fromScale(1, 0)
      var772.AutomaticSize = Enum.AutomaticSize.Y
      var772.LayoutOrder = 0
      var772.TextXAlignment = Enum.TextXAlignment.Left
      var772.TextYAlignment = Enum.TextYAlignment.Top
      var768.Label = var1.createElement(var5, var772)
      local var789 = {}
      var789.Size = UDim2.fromScale(1, 0)
      var789.AutomaticSize = Enum.AutomaticSize.Y
      var789.LayoutOrder = 1
      var789.Layout = Enum.FillDirection.Vertical
      var789.HorizontalAlignment = Enum.HorizontalAlignment.Left
      var789.VerticalAlignment = Enum.VerticalAlignment.Top
      local var799 = {}
      local var803 = {}
      var803.Label = var1:getText("PlaybackTabView", "RecordingDuration")
      var803.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
      var803.LayoutOrder = 1
      var799.RecordingDuration = var1.createElement(var7, var803)
      local var823 = {}
      var823.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
      var823.Value = tostring(var0.CurrentRecordingNumEvents)
      var823.LayoutOrder = 2
      var799.NumberOfEvents = var1.createElement(var7, var823)
      local var836 = {}
      var836.Label = var1:getText("PlaybackTabView", "RecordingDevice")
      var836.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
      var836.LayoutOrder = 3
      var799.RecordingDeviceId = var1.createElement(var7, var836)
      local var851 = {}
      var851.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
      var851.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
      var851.LayoutOrder = 4
      var799.RecordingOrientation = var1.createElement(var7, var851)
      local var867 = {}
      var867.Label = var1:getText("PlaybackTabView", "RecordingResolution")
      var867.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
      var867.LayoutOrder = 5
      var799.RecordingResolution = var1.createElement(var7, var867)
      var768.KeyValuePairs = var1.createElement(var6, var789, var799)
      return var1.createElement(var6, var752, var768)
   end
   
   return var0
end)(var17)
