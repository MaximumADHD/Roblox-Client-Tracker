-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(script.Parent.RoactElementTree)
local var4 = require(script.Parent.FieldsTable)
local var5 = require(script.Parent.NodeList)
local var6 = var2.UI.Pane
local var7 = var2.ContextServices
local var8 = var1.PureComponent:extend("RoactInspectorView")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var41 = {}
   var41.Layout = Enum.FillDirection.Horizontal
   var41.Padding = var0.Padding
   var41.Spacing = var0.Padding
   local var45 = {}
   local var49 = {}
   var49.LayoutOrder = 1
   var49.Layout = Enum.FillDirection.Vertical
   var49.Size = UDim2.new(0.5, var0.Padding, 1, 0)
   var49.Spacing = var0.Padding
   local var60 = {}
   local var64 = {}
   var64.LayoutOrder = 1
   var64.Size = UDim2.new(1, 0, 1, var0.NodeListHeight)
   local var73 = {}
   var73.RoactElementTree = var1.createElement(var3, {})
   var60.TreeContainer = var1.createElement(var6, var64, var73)
   local var83 = {}
   var83.LayoutOrder = 2
   var83.Size = UDim2.new(1, 0, 0, var0.NodeListHeight - var0.Padding)
   local var93 = {}
   local var97 = {}
   var97.selectTarget = arg1.selectTarget
   var93.NodeList = var1.createElement(var5, var97)
   var60.ListContainer = var1.createElement(var6, var83, var93)
   var45.Left = var1.createElement(var6, var49, var60)
   local var105 = {}
   var105.LayoutOrder = 2
   var105.Size = UDim2.fromScale(0.5, 1)
   local var111 = {}
   var111.Child = var1.createElement(var4, {})
   var45.Right = var1.createElement(var6, var105, var111)
   return var1.createElement(var6, var41, var45)
end

function var8.render(arg1)
   local var0 = arg1.props.Stylizer
   local var41 = {}
   var41.Layout = Enum.FillDirection.Horizontal
   var41.Padding = var0.Padding
   var41.Spacing = var0.Padding
   local var45 = {}
   local var49 = {}
   var49.LayoutOrder = 1
   var49.Layout = Enum.FillDirection.Vertical
   var49.Size = UDim2.new(0.5, var0.Padding, 1, 0)
   var49.Spacing = var0.Padding
   local var60 = {}
   local var64 = {}
   var64.LayoutOrder = 1
   var64.Size = UDim2.new(1, 0, 1, var0.NodeListHeight)
   local var73 = {}
   var73.RoactElementTree = var1.createElement(var3, {})
   var60.TreeContainer = var1.createElement(var6, var64, var73)
   local var83 = {}
   var83.LayoutOrder = 2
   var83.Size = UDim2.new(1, 0, 0, var0.NodeListHeight - var0.Padding)
   local var93 = {}
   local var97 = {}
   var97.selectTarget = arg1.selectTarget
   var93.NodeList = var1.createElement(var5, var97)
   var60.ListContainer = var1.createElement(var6, var83, var93)
   var45.Left = var1.createElement(var6, var49, var60)
   local var105 = {}
   var105.LayoutOrder = 2
   var105.Size = UDim2.fromScale(0.5, 1)
   local var111 = {}
   var111.Child = var1.createElement(var4, {})
   var45.Right = var1.createElement(var6, var105, var111)
   return var1.createElement(var6, var41, var45)
end

fun0 = var7.withContext
local var119 = {}
var119.Stylizer = var7.Stylizer
var8 = fun0(var119)(var8)
return var8
