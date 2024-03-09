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
   local var0 = {}
   var0.LayoutOrder = var0.LayoutOrder
   var0.Style = "CornerBox"
   var0.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var0.AutomaticSize = Enum.AutomaticSize.Y
   var0.Layout = Enum.FillDirection.Vertical
   var0.Spacing = UDim.new(0, var2.PaddingPx)
   var0.Padding = var2.PaddingPx
   var0.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var0.VerticalAlignment = Enum.VerticalAlignment.Top
   local var16 = {}
   local var20 = {}
   var20.Text = var1:getText("RecordTabView", "CurrentRecordingDeviceLabel")
   var20.Size = UDim2.fromScale(1, 0)
   var20.AutomaticSize = Enum.AutomaticSize.Y
   var20.LayoutOrder = 0
   var20.TextXAlignment = Enum.TextXAlignment.Left
   var20.TextYAlignment = Enum.TextYAlignment.Top
   var16.Label = var1.createElement(var5, var20)
   local var37 = {}
   var37.Size = UDim2.fromScale(1, 0)
   var37.AutomaticSize = Enum.AutomaticSize.Y
   var37.LayoutOrder = 1
   var37.Layout = Enum.FillDirection.Vertical
   var37.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var37.VerticalAlignment = Enum.VerticalAlignment.Top
   local var47 = {}
   local var51 = {}
   var51.Label = var1:getText("RecordTabView", "EmulationDeviceName")
   var51.Value = var7.formatDeviceName(var0.EmulationDeviceId, var1)
   var51.LayoutOrder = 1
   var47.DeviceName = var1.createElement(var8, var51)
   local var66 = {}
   var66.Label = var1:getText("RecordTabView", "EmulationDeviceOrientation")
   var66.Value = var7.formatDeviceOrientation(var0.EmulationDeviceOrientation, var0.EmulationDeviceId, var1)
   var66.LayoutOrder = 2
   var47.Orientation = var1.createElement(var8, var66)
   local var82 = {}
   var82.Label = var1:getText("RecordTabView", "EmulationDeviceResolution")
   var82.Value = var7.format2dResolution(var0.CurrentScreenSize, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var82.LayoutOrder = 3
   var47.Resolution = var1.createElement(var8, var82)
   var16.KeyValuePairs = var1.createElement(var6, var37, var47)
   return var1.createElement(var6, var0, var16)
end

local var100 = {}
var100.Stylizer = var3.Stylizer
local var102 = var3.Localization
var100.Localization = var102
var9 = var3.withContext(var100)(var9)
function var102(arg1, arg2)
   local var0 = {}
   var0.ShouldRecordOnGamePlayStart = arg1.recordTab.shouldStart
   var0.CurrentScreenSize = arg1.recordTab.screenSize
   var0.EmulationDeviceId = arg1.recordTab.emulationDeviceId
   var0.EmulationDeviceOrientation = arg1.recordTab.emulationDeviceOrientation
   var0.RecordingMode = arg1.recordTab.recordingMode
   return var0
end

return require(var0.Packages.RoactRodux).connect(var102, nil)(var9)
