-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Separator
local var5 = var2.Util.LayoutOrderIterator
local var6 = require(var0.Src.Components.MainSwitchSection)
local var7 = require(var0.Src.Components.CustomPolicySwitchSection)
local var8 = require(var0.Src.Components.LanguageSection)
local var9 = require(var0.Src.Components.CountryRegionSection)
local var10 = require(var0.Src.Components.PolicySection)
local var11 = var1.PureComponent:extend("MainView")
local function fun35(arg1)
   local var0 = var5.new()
   local var1 = arg1.props.Stylizer
   local var632 = {}
   var632.Size = UDim2.new(1, 0, 1, 0)
   var632.BackgroundColor3 = var1.BackgroundColor
   var632.Position = UDim2.new(0, 0, 0, 0)
   local var646 = {}
   local var650 = {}
   var650.PaddingTop = var1.MAINVIEW_PADDING_TOP
   var650.PaddingLeft = var1.MAINVIEW_PADDING_LEFT
   var650.PaddingRight = var1.MAINVIEW_PADDING_LEFT
   var646.Padding = var1.createElement("UIPadding", var650)
   local var658 = {}
   var658.SortOrder = Enum.SortOrder.LayoutOrder
   var658.FillDirection = Enum.FillDirection.Vertical
   var658.Padding = var1.HORIZONTAL_LISTLAYOUT_PADDING
   var646.Layout = var1.createElement("UIListLayout", var658)
   local var666 = {}
   var666.LayoutOrder = var0:getNextOrder()
   var646.MainSwitchSection = var1.createElement(var6, var666)
   local var673 = {}
   var673.LayoutOrder = var0:getNextOrder()
   var646.Separator = var1.createElement(var4, var673)
   local var680 = {}
   var680.LayoutOrder = var0:getNextOrder()
   var646.LanguageSection = var1.createElement(var8, var680)
   local var687 = {}
   var687.LayoutOrder = var0:getNextOrder()
   var646.CountryRegionSection = var1.createElement(var9, var687)
   local var694 = {}
   var694.LayoutOrder = var0:getNextOrder()
   var646.CustomPolicySwitchSection = var1.createElement(var7, var694)
   local var701 = {}
   var701.LayoutOrder = var0:getNextOrder()
   var646.PolicySection = var1.createElement(var10, var701)
   return var1.createElement("Frame", var632, var646)
end

function var11.render(arg1)
   local var0 = var5.new()
   local var1 = arg1.props.Stylizer
   local var632 = {}
   var632.Size = UDim2.new(1, 0, 1, 0)
   var632.BackgroundColor3 = var1.BackgroundColor
   var632.Position = UDim2.new(0, 0, 0, 0)
   local var646 = {}
   local var650 = {}
   var650.PaddingTop = var1.MAINVIEW_PADDING_TOP
   var650.PaddingLeft = var1.MAINVIEW_PADDING_LEFT
   var650.PaddingRight = var1.MAINVIEW_PADDING_LEFT
   var646.Padding = var1.createElement("UIPadding", var650)
   local var658 = {}
   var658.SortOrder = Enum.SortOrder.LayoutOrder
   var658.FillDirection = Enum.FillDirection.Vertical
   var658.Padding = var1.HORIZONTAL_LISTLAYOUT_PADDING
   var646.Layout = var1.createElement("UIListLayout", var658)
   local var666 = {}
   var666.LayoutOrder = var0:getNextOrder()
   var646.MainSwitchSection = var1.createElement(var6, var666)
   local var673 = {}
   var673.LayoutOrder = var0:getNextOrder()
   var646.Separator = var1.createElement(var4, var673)
   local var680 = {}
   var680.LayoutOrder = var0:getNextOrder()
   var646.LanguageSection = var1.createElement(var8, var680)
   local var687 = {}
   var687.LayoutOrder = var0:getNextOrder()
   var646.CountryRegionSection = var1.createElement(var9, var687)
   local var694 = {}
   var694.LayoutOrder = var0:getNextOrder()
   var646.CustomPolicySwitchSection = var1.createElement(var7, var694)
   local var701 = {}
   var701.LayoutOrder = var0:getNextOrder()
   var646.PolicySection = var1.createElement(var10, var701)
   return var1.createElement("Frame", var632, var646)
end

fun35 = var3.withContext
local var706 = {}
var706.Stylizer = var3.Stylizer
var11 = fun35(var706)(var11)
return var11
