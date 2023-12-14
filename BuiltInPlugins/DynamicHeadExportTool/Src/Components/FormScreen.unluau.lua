-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("DynamicHeadExportTool")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Button
local var5 = var2.UI.Form
local var6 = var2.Style.StyleKey
local var7 = require(var0.Src.Constants)
local var8 = var1.PureComponent:extend("FormScreen")
function var8.render(arg1)
   local var0 = arg1.props
   local var33 = {}
   var33.BackgroundColor3 = var0.Stylizer[var6.MainBackground]
   var33.Size = UDim2.new(1, 0, 1, 0)
   local var44 = {}
   local var48 = {}
   var48.PaddingBottom = UDim.new(0, var7.Padding)
   var48.PaddingLeft = UDim.new(0, var7.Padding)
   var48.PaddingRight = UDim.new(0, var7.Padding)
   var48.PaddingTop = UDim.new(0, var7.Padding)
   var44.UIPadding = var1.createElement("UIPadding", var48)
   local var73 = {}
   var73.Expansion = var0.Expansion
   var73.ExpandByDefault = true
   var73.Items = var0.Items
   var73.LabelWidth = UDim.new(0, 150)
   var73.LabelHeight = 32
   var73.OnExpansionChange = var0.onExpansionChange
   var73.OnChange = var0.onChange
   var73.Size = UDim2.new(1, 0, 1, 30 + var7.Padding)
   var44.Form = var1.createElement(var5, var73)
   local var98 = {}
   var98.Text = var0.Localization:getText("Plugin", "NextButton")
   var98.Style = "RoundPrimary"
   var98.TextSize = 24
   var98.Size = UDim2.new(1, 0, 0, 30)
   var98.Position = UDim2.new(0, 0, 1, 65506)
   var98.OnClick = var0.onSubmit
   var44.Button = var1.createElement(var4, var98)
   return var1.createElement("Frame", var33, var44)
end

local var121 = {}
var121.Localization = var3.Localization
var121.Stylizer = var3.Stylizer
var8 = var3.withContext(var121)(var8)
return var8
