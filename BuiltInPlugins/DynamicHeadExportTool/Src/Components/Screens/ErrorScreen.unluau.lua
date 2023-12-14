-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Button
local var6 = var4.MultiLineTextInput
local var7 = var4.TextLabel
local var8 = var2.Style.StyleKey
local var9 = require(var0.Src.Actions.SetEnabled)
local var10 = require(var0.Src.Constants)
local var11 = var1.PureComponent:extend("ErrorScreen")
function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var42 = {}
   var42.BackgroundColor3 = var0.Stylizer[var8.MainBackground]
   var42.Size = UDim2.new(1, 0, 1, 0)
   local var53 = {}
   local var57 = {}
   var57.PaddingBottom = UDim.new(0, var10.Padding)
   var57.PaddingLeft = UDim.new(0, var10.Padding)
   var57.PaddingRight = UDim.new(0, var10.Padding)
   var57.PaddingTop = UDim.new(0, var10.Padding)
   var53.UIPadding = var1.createElement("UIPadding", var57)
   local var82 = {}
   var82.BackgroundTransparency = 1
   var82.Size = UDim2.new(1, 0, 1, 30 + var10.Padding)
   local var94 = {}
   local var98 = {}
   var98.SortOrder = Enum.SortOrder.LayoutOrder
   var98.VerticalAlignment = Enum.VerticalAlignment.Top
   var98.Padding = UDim.new(0, var10.Padding)
   var94.UIListLayout = var1.createElement("UIListLayout", var98)
   local var110 = {}
   var110.LayoutOrder = 1
   var110.Text = var1:getText("Plugin", "ErrorTitle")
   var110.Style = "Title"
   var110.Size = UDim2.new(1, 0, 0, 20)
   var110.Position = UDim2.new(0, 0, 0, 0)
   var110.BackgroundTransparency = 1
   var110.TextXAlignment = Enum.TextXAlignment.Center
   var94.TextLabel = var1.createElement(var7, var110)
   local var135 = {}
   var135.LayoutOrder = 2
   local var137 = {}
   var137.Text = arg1.props.errorText
   var137.Enabled = false
   var135.TextInputProps = var137
   var135.Style = "FilledRoundedRedBorder"
   var135.Size = UDim2.new(1, 0, 1, 20 + var10.Padding)
   var135.Position = UDim2.new(0, 0, 0, 0)
   var94.MultiLineTextInput = var1.createElement(var6, var135)
   var53.Content = var1.createElement("Frame", var82, var94)
   local var163 = {}
   var163.Text = var1:getText("Plugin", "CloseButton")
   var163.Style = "Round"
   var163.TextSize = 24
   var163.Size = UDim2.new(1, 0, 0, 30)
   var163.Position = UDim2.new(0, 0, 1, 65506)
   function var163.OnClick()
      var0.close()
   end
   
   var53.Button = var1.createElement(var5, var163)
   return var1.createElement("Frame", var42, var53)
end

local var187 = {}
var187.Localization = var3.Localization
var187.Stylizer = var3.Stylizer
var187.Plugin = var3.Plugin
var11 = var3.withContext(var187)(var11)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.errorText = arg1.PluginReducer.errorText
   return var0
end, function(arg1)
   local var0 = {}
   function var0.close()
      var0.close()
   end
   
   return var0
end)(var11)
