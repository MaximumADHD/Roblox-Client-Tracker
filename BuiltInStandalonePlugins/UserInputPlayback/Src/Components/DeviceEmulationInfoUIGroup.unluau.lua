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
   local var108 = {}
   var108.LayoutOrder = var0.LayoutOrder
   var108.Style = "CornerBox"
   var108.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var108.AutomaticSize = Enum.AutomaticSize.Y
   var108.Layout = Enum.FillDirection.Vertical
   var108.Spacing = UDim.new(0, var2.PaddingPx)
   var108.Padding = var2.PaddingPx
   var108.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var108.VerticalAlignment = Enum.VerticalAlignment.Top
   local var130 = {}
   local var136 = {}
   var136.Text = var1:getText("RecordTabView", "CurrentRecordingDeviceLabel")
   var136.Size = UDim2.fromScale(1, 0)
   var136.AutomaticSize = Enum.AutomaticSize.Y
   var136.LayoutOrder = 0
   var136.TextXAlignment = Enum.TextXAlignment.Left
   var136.TextYAlignment = Enum.TextYAlignment.Top
   var130.Label = var1.createElement(var5, var136)
   local var166 = {}
   var166.Size = UDim2.fromScale(1, 0)
   var166.AutomaticSize = Enum.AutomaticSize.Y
   var166.LayoutOrder = 1
   var166.Layout = Enum.FillDirection.Vertical
   var166.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var166.VerticalAlignment = Enum.VerticalAlignment.Top
   local var186 = {}
   local var190 = {}
   var190.Label = var1:getText("RecordTabView", "EmulationDeviceName")
   var190.Value = var7.formatDeviceName(var0.EmulationDeviceId, var1)
   var190.LayoutOrder = 1
   var186.DeviceName = var1.createElement(var8, var190)
   local var217 = {}
   var217.Label = var1:getText("RecordTabView", "EmulationDeviceOrientation")
   var217.Value = var7.formatDeviceOrientation(var0.EmulationDeviceOrientation, var0.EmulationDeviceId, var1)
   var217.LayoutOrder = 2
   var186.Orientation = var1.createElement(var8, var217)
   local var236 = {}
   var236.Label = var1:getText("RecordTabView", "EmulationDeviceResolution")
   var236.Value = var7.format2dResolution(var0.CurrentScreenSize, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var236.LayoutOrder = 3
   var186.Resolution = var1.createElement(var8, var236)
   var130.KeyValuePairs = var1.createElement(var6, var166, var186)
   return var1.createElement(var6, var108, var130)
end

local var259 = {}
var259.Stylizer = var3.Stylizer
local var261 = var3.Localization
var259.Localization = var261
var9 = var3.withContext(var259)(var9)
function var261(arg1, arg2)
   local var0 = {}
   var0.ShouldRecordOnGamePlayStart = arg1.recordTab.shouldStart
   var0.CurrentScreenSize = arg1.recordTab.screenSize
   var0.EmulationDeviceId = arg1.recordTab.emulationDeviceId
   var0.EmulationDeviceOrientation = arg1.recordTab.emulationDeviceOrientation
   var0.RecordingMode = arg1.recordTab.recordingMode
   return var0
end

return require(var0.Packages.RoactRodux).connect(var261, nil)(var9)
