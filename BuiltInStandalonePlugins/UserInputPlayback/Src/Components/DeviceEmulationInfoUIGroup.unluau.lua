-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.Pane
local var7 = require(var0.Src.Util.StringFormatters)
local var8 = require(var0.Src.Components.UIKeyValueTextLabel)
local var9 = var1.PureComponent:extend("DeviceEmulationInfoUIGroup")
function var9.init(arg1)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var42 = {}
   var42.LayoutOrder = var0.LayoutOrder
   var42.Style = "CornerBox"
   var42.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var42.AutomaticSize = Enum.AutomaticSize.Y
   var42.Layout = Enum.FillDirection.Vertical
   var42.Spacing = UDim.new(0, var2.PaddingPx)
   var42.Padding = var2.PaddingPx
   var42.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var42.VerticalAlignment = Enum.VerticalAlignment.Top
   local var58 = {}
   local var62 = {}
   var62.Text = var1:getText("RecordTabView", "CurrentRecordingDeviceLabel")
   var62.Size = UDim2.fromScale(1, 0)
   var62.AutomaticSize = Enum.AutomaticSize.Y
   var62.LayoutOrder = 0
   var62.TextXAlignment = Enum.TextXAlignment.Left
   var62.TextYAlignment = Enum.TextYAlignment.Top
   var58.Label = var1.createElement(var5, var62)
   local var79 = {}
   var79.Size = UDim2.fromScale(1, 0)
   var79.AutomaticSize = Enum.AutomaticSize.Y
   var79.LayoutOrder = 1
   var79.Layout = Enum.FillDirection.Vertical
   var79.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var79.VerticalAlignment = Enum.VerticalAlignment.Top
   local var89 = {}
   local var93 = {}
   var93.Label = var1:getText("RecordTabView", "EmulationDeviceName")
   var93.Value = var7.formatDeviceName(var0.EmulationDeviceId, var1)
   var93.LayoutOrder = 1
   var89.DeviceName = var1.createElement(var8, var93)
   local var108 = {}
   var108.Label = var1:getText("RecordTabView", "EmulationDeviceOrientation")
   var108.Value = var7.formatDeviceOrientation(var0.EmulationDeviceOrientation, var0.EmulationDeviceId, var1)
   var108.LayoutOrder = 2
   var89.Orientation = var1.createElement(var8, var108)
   local var124 = {}
   var124.Label = var1:getText("RecordTabView", "EmulationDeviceResolution")
   var124.Value = var7.format2dResolution(var0.CurrentScreenSize, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var124.LayoutOrder = 3
   var89.Resolution = var1.createElement(var8, var124)
   var58.KeyValuePairs = var1.createElement(var6, var79, var89)
   return var1.createElement(var6, var42, var58)
end

local var142 = {}
var142.Stylizer = var3.Stylizer
local var144 = var3.Localization
var142.Localization = var144
var9 = var3.withContext(var142)(var9)
function var144(arg1, arg2)
   local var0 = {}
   var0.ShouldRecordOnGamePlayStart = arg1.recordTab.shouldStart
   var0.CurrentScreenSize = arg1.recordTab.screenSize
   var0.EmulationDeviceId = arg1.recordTab.emulationDeviceId
   var0.EmulationDeviceOrientation = arg1.recordTab.emulationDeviceOrientation
   var0.RecordingMode = arg1.recordTab.recordingMode
   return var0
end

return require(var0.Packages.RoactRodux).connect(var144, nil)(var9)
