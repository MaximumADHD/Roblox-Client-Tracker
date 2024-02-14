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
   local var157 = {}
   var157.LayoutOrder = var0.LayoutOrder
   var157.Style = "CornerBox"
   var157.Size = UDim2.fromOffset(var2.UIGroupWidthPx, 0)
   var157.AutomaticSize = Enum.AutomaticSize.Y
   var157.Layout = Enum.FillDirection.Vertical
   var157.Spacing = UDim.new(0, var2.PaddingPx)
   var157.Padding = var2.PaddingPx
   var157.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var157.VerticalAlignment = Enum.VerticalAlignment.Top
   local var173 = {}
   local var177 = {}
   var177.Text = var1:getText("RecordTabView", "CurrentRecordingDeviceLabel")
   var177.Size = UDim2.fromScale(1, 0)
   var177.AutomaticSize = Enum.AutomaticSize.Y
   var177.LayoutOrder = 0
   var177.TextXAlignment = Enum.TextXAlignment.Left
   var177.TextYAlignment = Enum.TextYAlignment.Top
   var173.Label = var1.createElement(var5, var177)
   local var194 = {}
   var194.Size = UDim2.fromScale(1, 0)
   var194.AutomaticSize = Enum.AutomaticSize.Y
   var194.LayoutOrder = 1
   var194.Layout = Enum.FillDirection.Vertical
   var194.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var194.VerticalAlignment = Enum.VerticalAlignment.Top
   local var204 = {}
   local var208 = {}
   var208.Label = var1:getText("RecordTabView", "EmulationDeviceName")
   var208.Value = var7.formatDeviceName(var0.EmulationDeviceId, var1)
   var208.LayoutOrder = 1
   var204.DeviceName = var1.createElement(var8, var208)
   local var223 = {}
   var223.Label = var1:getText("RecordTabView", "EmulationDeviceOrientation")
   var223.Value = var7.formatDeviceOrientation(var0.EmulationDeviceOrientation, var0.EmulationDeviceId, var1)
   var223.LayoutOrder = 2
   var204.Orientation = var1.createElement(var8, var223)
   local var239 = {}
   var239.Label = var1:getText("RecordTabView", "EmulationDeviceResolution")
   var239.Value = var7.format2dResolution(var0.CurrentScreenSize, var1:getText("RecordTabView", "ResolutionPixelsName"))
   var239.LayoutOrder = 3
   var204.Resolution = var1.createElement(var8, var239)
   var173.KeyValuePairs = var1.createElement(var6, var194, var204)
   return var1.createElement(var6, var157, var173)
end

local var257 = {}
var257.Stylizer = var3.Stylizer
local var259 = var3.Localization
var257.Localization = var259
var9 = var3.withContext(var257)(var9)
function var259(arg1, arg2)
   local var0 = {}
   var0.ShouldRecordOnGamePlayStart = arg1.recordTab.shouldStart
   var0.CurrentScreenSize = arg1.recordTab.screenSize
   var0.EmulationDeviceId = arg1.recordTab.emulationDeviceId
   var0.EmulationDeviceOrientation = arg1.recordTab.emulationDeviceOrientation
   var0.RecordingMode = arg1.recordTab.recordingMode
   return var0
end

return require(var0.Packages.RoactRodux).connect(var259, nil)(var9)
