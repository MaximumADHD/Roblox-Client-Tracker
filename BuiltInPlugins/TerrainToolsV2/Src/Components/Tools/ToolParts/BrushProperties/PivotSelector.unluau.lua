-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.TerrainEnums).PivotType
local var4 = script.Parent.Parent
local var5 = require(var4.LabeledElementPair)
local var6 = require(var4.SingleSelectButtonGroup)
local var7 = var1.PureComponent:extend("PivotSelector")
local function fun1(arg1)
   local var0 = arg1.props.Localization
   local var85 = {}
   var85.Size = UDim2.new(1, 0, 0, 22)
   var85.Text = var0:getText("BrushSettings", "PivotPosition")
   var85.LayoutOrder = arg1.props.LayoutOrder
   local var100 = {}
   var100.Size = UDim2.new(0, 141, 0, 22)
   var100.Selected = arg1.props.pivot
   var100.Select = arg1.props.setPivot
   local var1 = {}
   var1.Text = var0:getText("BrushSettings", "BottomPivot")
   var1.Data = var3.Bottom
   local var2 = {}
   var2.Text = var0:getText("BrushSettings", "CenterPivot")
   var2.Data = var3.Center
   local var3 = {}
   var3.Text = var0:getText("BrushSettings", "TopPivot")
   var3.Data = var3.Top
   var100.Options = {}
   local var4 = var1.createElement(var6, var100)
   return var1.createElement(var5, var85, {})
end

function var7.render(arg1)
   local var0 = arg1.props.Localization
   local var85 = {}
   var85.Size = UDim2.new(1, 0, 0, 22)
   var85.Text = var0:getText("BrushSettings", "PivotPosition")
   var85.LayoutOrder = arg1.props.LayoutOrder
   local var100 = {}
   var100.Size = UDim2.new(0, 141, 0, 22)
   var100.Selected = arg1.props.pivot
   var100.Select = arg1.props.setPivot
   local var1 = {}
   var1.Text = var0:getText("BrushSettings", "BottomPivot")
   var1.Data = var3.Bottom
   local var2 = {}
   var2.Text = var0:getText("BrushSettings", "CenterPivot")
   var2.Data = var3.Center
   local var3 = {}
   var3.Text = var0:getText("BrushSettings", "TopPivot")
   var3.Data = var3.Top
   var100.Options = {}
   local var4 = var1.createElement(var6, var100)
   return var1.createElement(var5, var85, {})
end

fun1 = var2.withContext
local var131 = {}
var131.Localization = var2.Localization
var7 = fun1(var131)(var7)
return var7
