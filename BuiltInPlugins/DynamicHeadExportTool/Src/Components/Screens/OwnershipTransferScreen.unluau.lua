-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Button
local var6 = var4.TextLabel
local var7 = var2.UI.MultiLineTextInput
local var8 = var2.Style.StyleKey
local var9 = require(var0.Src.Actions.SetEnabled)
local var10 = require(var0.Src.Constants)
local var11 = var1.PureComponent:extend("OwnershipTransferScreen")
function var11.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var43 = {}
   var43.BackgroundColor3 = var0.Stylizer[var8.MainBackground]
   var43.Size = UDim2.new(1, 0, 1, 0)
   local var54 = {}
   local var58 = {}
   var58.PaddingBottom = UDim.new(0, var10.Padding)
   var58.PaddingLeft = UDim.new(0, var10.Padding)
   var58.PaddingRight = UDim.new(0, var10.Padding)
   var58.PaddingTop = UDim.new(0, var10.Padding)
   var54.UIPadding = var1.createElement("UIPadding", var58)
   local var83 = {}
   var83.BackgroundTransparency = 1
   var83.Size = UDim2.new(1, 0, 1, 30 + var10.Padding)
   local var95 = {}
   local var99 = {}
   var99.SortOrder = Enum.SortOrder.LayoutOrder
   var99.VerticalAlignment = Enum.VerticalAlignment.Top
   var99.Padding = UDim.new(0, var10.Padding)
   var95.UIListLayout = var1.createElement("UIListLayout", var99)
   local var111 = {}
   var111.LayoutOrder = 1
   var111.Text = var1:getText("Plugin", "OwnershipTransferAssetIds")
   var111.Style = "Title"
   var111.Size = UDim2.new(1, 0, 0, 20)
   var111.Position = UDim2.new(0, 0, 0, 0)
   var111.BackgroundTransparency = 1
   var111.TextXAlignment = Enum.TextXAlignment.Center
   var95.TextLabel = var1.createElement(var6, var111)
   local var136 = {}
   var136.LayoutOrder = 2
   local var138 = {}
   var138.Text = arg1.props.ownershipTransferText
   var138.Enabled = false
   var136.TextInputProps = var138
   var136.Style = "FilledRoundedBorder"
   var136.Size = UDim2.new(1, 0, 1, 20 + var10.Padding)
   var136.Position = UDim2.new(0, 0, 0, 0)
   var95.MultiLineTextInput = var1.createElement(var7, var136)
   var54.Content = var1.createElement("Frame", var83, var95)
   local var164 = {}
   var164.Text = var1:getText("Plugin", "CloseButton")
   var164.Style = "Round"
   var164.TextSize = 24
   var164.Size = UDim2.new(1, 0, 0, 30)
   var164.Position = UDim2.new(0, 0, 1, 65506)
   function var164.OnClick()
      var0.close()
   end
   
   var54.Button = var1.createElement(var5, var164)
   return var1.createElement("Frame", var43, var54)
end

local var188 = {}
var188.Localization = var3.Localization
var188.Stylizer = var3.Stylizer
var188.Plugin = var3.Plugin
var11 = var3.withContext(var188)(var11)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.ownershipTransferText = arg1.PluginReducer.ownershipTransferText
   return var0
end, function(arg1)
   local var0 = {}
   function var0.close()
      var0.close()
   end
   
   return var0
end)(var11)
