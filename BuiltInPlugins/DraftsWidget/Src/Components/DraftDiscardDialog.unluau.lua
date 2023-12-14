-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.BulletList
local var5 = var2.Dash.map
local var6 = var2.ContextServices
local var7 = var3.StyledDialog
local var8 = var3.ScrollingFrame
local var9 = var3.TextLabel
local var10 = Vector2.new(430, 200)
local var11 = UDim.new(0, 32)
local var12 = {}
var12.PaddingLeft = UDim.new(0, 16)
var12.PaddingRight = UDim.new(0, 16)
var12.PaddingTop = UDim.new(0, 48)
var12.PaddingBottom = UDim.new(0, 48)
local var13 = var1.PureComponent:extend("DraftDiscardDialog")
function var13.init(arg1)
   arg1:setState({})
end

local function fun4(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var105 = {}
   var105.TextTruncate = Enum.TextTruncate.AtEnd
   var105.Items = var5(arg1.props.Drafts, function(arg1)
      return arg1.Name
   end)
   local var116 = {}
   var116.Title = var0:getText("DiscardDialog", "Title")
   var116.Modal = true
   local var123 = {}
   var123.Key = true
   var123.Text = var0:getText("Dialog", "Yes")
   var123.Style = "RoundLargeText"
   local var130 = {}
   var130.Key = false
   var130.Text = var0:getText("Dialog", "No")
   var130.Style = "RoundLargeTextPrimary"
   var116.Buttons = {}
   var116.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center
   var116.OnButtonPressed = arg1.props.ChoiceSelected
   function var116.OnClose(arg1)
      return arg1.Name
   end
   
   var116.MinContentSize = var10
   local var141 = {}
   local var145 = {}
   var145.SortOrder = Enum.SortOrder.LayoutOrder
   var145.FillDirection = Enum.FillDirection.Vertical
   var145.Padding = var11
   var145.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var145.VerticalAlignment = Enum.VerticalAlignment.Center
   var141.Layout = var1.createElement("UIListLayout", var145)
   var141.Padding = var1.createElement("UIPadding", var12)
   local var160 = {}
   var160.LayoutOrder = 1
   var160.AutomaticSize = Enum.AutomaticSize.XY
   var160.TextXAlignment = Enum.TextXAlignment.Center
   var160.TextYAlignment = Enum.TextYAlignment.Top
   var160.TextWrapped = true
   var160.Text = var0:getText("DiscardDialog", "ConfirmQuestion")
   var160.TextSize = 22
   var160.Font = var1.dialogUILibrary.HeaderFont
   var160.TextColor = var1.dialogUILibrary.HeaderTextColor
   var141.Header = var1.createElement(var9, var160)
   local var179 = {}
   var179.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var179.LayoutOrder = 2
   local var182 = {}
   var182.Bullets = var1.createElement(var4, var105)
   var141.DraftList = var1.createElement(var8, var179, var182)
   return var1.createElement(var7, var116, var141)
end

function var13.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.Stylizer
   local var105 = {}
   var105.TextTruncate = Enum.TextTruncate.AtEnd
   var105.Items = var5(arg1.props.Drafts, function(arg1)
      return arg1.Name
   end)
   local var116 = {}
   var116.Title = var0:getText("DiscardDialog", "Title")
   var116.Modal = true
   local var123 = {}
   var123.Key = true
   var123.Text = var0:getText("Dialog", "Yes")
   var123.Style = "RoundLargeText"
   local var130 = {}
   var130.Key = false
   var130.Text = var0:getText("Dialog", "No")
   var130.Style = "RoundLargeTextPrimary"
   var116.Buttons = {}
   var116.ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center
   var116.OnButtonPressed = arg1.props.ChoiceSelected
   function var116.OnClose(arg1)
      return arg1.Name
   end
   
   var116.MinContentSize = var10
   local var141 = {}
   local var145 = {}
   var145.SortOrder = Enum.SortOrder.LayoutOrder
   var145.FillDirection = Enum.FillDirection.Vertical
   var145.Padding = var11
   var145.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var145.VerticalAlignment = Enum.VerticalAlignment.Center
   var141.Layout = var1.createElement("UIListLayout", var145)
   var141.Padding = var1.createElement("UIPadding", var12)
   local var160 = {}
   var160.LayoutOrder = 1
   var160.AutomaticSize = Enum.AutomaticSize.XY
   var160.TextXAlignment = Enum.TextXAlignment.Center
   var160.TextYAlignment = Enum.TextYAlignment.Top
   var160.TextWrapped = true
   var160.Text = var0:getText("DiscardDialog", "ConfirmQuestion")
   var160.TextSize = 22
   var160.Font = var1.dialogUILibrary.HeaderFont
   var160.TextColor = var1.dialogUILibrary.HeaderTextColor
   var141.Header = var1.createElement(var9, var160)
   local var179 = {}
   var179.AutomaticCanvasSize = Enum.AutomaticSize.Y
   var179.LayoutOrder = 2
   local var182 = {}
   var182.Bullets = var1.createElement(var4, var105)
   var141.DraftList = var1.createElement(var8, var179, var182)
   return var1.createElement(var7, var116, var141)
end

fun4 = var6.withContext
local var185 = {}
var185.Localization = var6.Localization
var185.Stylizer = var6.Stylizer
var13 = fun4(var185)(var13)
return var13
