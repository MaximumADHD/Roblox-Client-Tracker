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
   local var62 = {}
   var62.dataValid = false
   arg1.state = var62
   function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
      if arg1 == "props" then
         local var0 = arg1.props
         var0.SetCurrentRecordingDurationSec(arg2)
         var0.SetCurrentRecordingNumEvents(arg3)
         var0.SetCurrentRecordingDeviceId(arg1.deviceId)
         var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
         local var1 = arg1.resolution
         var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
         local var85 = {}
         var85.dataValid = true
         arg1:setState(var85)
      end
      local var89 = {}
      var89.dataValid = false
      arg1:setState(var89)
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
   local var109 = {}
   var109.LayoutOrder = var0.LayoutOrder
   var109.Style = "CornerBox"
   var109.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var109.AutomaticSize = Enum.AutomaticSize.Y
   var109.Layout = Enum.FillDirection.Vertical
   var109.Spacing = UDim.new(0, var2.PaddingPx)
   var109.Padding = var2.PaddingPx
   var109.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var109.VerticalAlignment = Enum.VerticalAlignment.Top
   local var125 = {}
   local var129 = {}
   var129.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
   var129.Size = UDim2.fromScale(1, 0)
   var129.AutomaticSize = Enum.AutomaticSize.Y
   var129.LayoutOrder = 0
   var129.TextXAlignment = Enum.TextXAlignment.Left
   var129.TextYAlignment = Enum.TextYAlignment.Top
   var125.Label = var1.createElement(var5, var129)
   local var146 = {}
   var146.Size = UDim2.fromScale(1, 0)
   var146.AutomaticSize = Enum.AutomaticSize.Y
   var146.LayoutOrder = 1
   var146.Layout = Enum.FillDirection.Vertical
   var146.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var146.VerticalAlignment = Enum.VerticalAlignment.Top
   local var156 = {}
   local var160 = {}
   var160.Label = var1:getText("PlaybackTabView", "RecordingDuration")
   var160.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
   var160.LayoutOrder = 1
   var156.RecordingDuration = var1.createElement(var7, var160)
   local var180 = {}
   var180.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
   var180.Value = tostring(var0.CurrentRecordingNumEvents)
   var180.LayoutOrder = 2
   var156.NumberOfEvents = var1.createElement(var7, var180)
   local var193 = {}
   var193.Label = var1:getText("PlaybackTabView", "RecordingDevice")
   var193.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
   var193.LayoutOrder = 3
   var156.RecordingDeviceId = var1.createElement(var7, var193)
   local var208 = {}
   var208.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
   var208.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
   var208.LayoutOrder = 4
   var156.RecordingOrientation = var1.createElement(var7, var208)
   local var224 = {}
   var224.Label = var1:getText("PlaybackTabView", "RecordingResolution")
   var224.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var224.LayoutOrder = 5
   var156.RecordingResolution = var1.createElement(var7, var224)
   var125.KeyValuePairs = var1.createElement(var6, var146, var156)
   return var1.createElement(var6, var109, var125)
end

local var242 = {}
var242.Stylizer = var3.Stylizer
var242.Localization = var3.Localization
var17 = var3.withContext(var242)(var17)
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
         local var284 = {}
         var284.dataValid = true
         arg1:setState(var284)
      end
      local var288 = {}
      var288.dataValid = false
      arg1:setState(var288)
   end
   
   function var0.SetCurrentRecordingDeviceId(arg1)
      local var292 = {}
      var292.dataValid = false
      arg1.state = var292
      function arg1.onPlaybackInfoChanged(arg1, arg2, arg3)
         if arg1 == "props" then
            local var0 = arg1.props
            var0.SetCurrentRecordingDurationSec(arg2)
            var0.SetCurrentRecordingNumEvents(arg3)
            var0.SetCurrentRecordingDeviceId(arg1.deviceId)
            var0.SetCurrentRecordingDeviceOrientation(arg1.orientation)
            local var1 = arg1.resolution
            var0.SetCurrentRecordingResolution(Vector2.new(var1[1], var1[2]))
            local var315 = {}
            var315.dataValid = true
            arg1:setState(var315)
         end
         local var319 = {}
         var319.dataValid = false
         arg1:setState(var319)
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
      local var339 = {}
      var339.LayoutOrder = var0.LayoutOrder
      var339.Style = "CornerBox"
      var339.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
      var339.AutomaticSize = Enum.AutomaticSize.Y
      var339.Layout = Enum.FillDirection.Vertical
      var339.Spacing = UDim.new(0, var2.PaddingPx)
      var339.Padding = var2.PaddingPx
      var339.HorizontalAlignment = Enum.HorizontalAlignment.Center
      var339.VerticalAlignment = Enum.VerticalAlignment.Top
      local var355 = {}
      local var359 = {}
      var359.Text = var1:getText("PlaybackTabView", "RecordingInfoLabel")
      var359.Size = UDim2.fromScale(1, 0)
      var359.AutomaticSize = Enum.AutomaticSize.Y
      var359.LayoutOrder = 0
      var359.TextXAlignment = Enum.TextXAlignment.Left
      var359.TextYAlignment = Enum.TextYAlignment.Top
      var355.Label = var1.createElement(var5, var359)
      local var376 = {}
      var376.Size = UDim2.fromScale(1, 0)
      var376.AutomaticSize = Enum.AutomaticSize.Y
      var376.LayoutOrder = 1
      var376.Layout = Enum.FillDirection.Vertical
      var376.HorizontalAlignment = Enum.HorizontalAlignment.Left
      var376.VerticalAlignment = Enum.VerticalAlignment.Top
      local var386 = {}
      local var390 = {}
      var390.Label = var1:getText("PlaybackTabView", "RecordingDuration")
      var390.Value = string.format("%.2f ", var0.CurrentRecordingDurationSec) ... var1:getText("PlaybackTabView", "SecondsUnitAbbrevation")
      var390.LayoutOrder = 1
      var386.RecordingDuration = var1.createElement(var7, var390)
      local var410 = {}
      var410.Label = var1:getText("PlaybackTabView", "RecordingNumberOfEvents")
      var410.Value = tostring(var0.CurrentRecordingNumEvents)
      var410.LayoutOrder = 2
      var386.NumberOfEvents = var1.createElement(var7, var410)
      local var423 = {}
      var423.Label = var1:getText("PlaybackTabView", "RecordingDevice")
      var423.Value = var8.formatDeviceName(var0.CurrentRecordingDeviceId, var1)
      var423.LayoutOrder = 3
      var386.RecordingDeviceId = var1.createElement(var7, var423)
      local var438 = {}
      var438.Label = var1:getText("PlaybackTabView", "RecordingOrientation")
      var438.Value = var8.formatDeviceOrientation(var0.CurrentRecordingDeviceOrientation, var0.CurrentRecordingDeviceId, var1)
      var438.LayoutOrder = 4
      var386.RecordingOrientation = var1.createElement(var7, var438)
      local var454 = {}
      var454.Label = var1:getText("PlaybackTabView", "RecordingResolution")
      var454.Value = var8.format2dResolution(var0.CurrentRecordingResolution, var1:getText("RecordTabView", "ResolutionPixelsName"))
      var454.LayoutOrder = 5
      var386.RecordingResolution = var1.createElement(var7, var454)
      var355.KeyValuePairs = var1.createElement(var6, var376, var386)
      return var1.createElement(var6, var339, var355)
   end
   
   return var0
end)(var17)
