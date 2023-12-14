-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI.Pane
local var5 = require(var0.Src.Util.TerrainEnums)
local var6 = require(script.Parent.SingleSelectButtonGroup)
local var7 = var2.PureComponent:extend("TransformMode")
local function fun0(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.LayoutOrder
   local var44 = {}
   var44.AutomaticSize = Enum.AutomaticSize.Y
   var44.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var44.Size = UDim2.fromScale(1, 0)
   local var51 = {}
   local var55 = {}
   var55.AnchorPoint = Vector2.new(0.5, 0)
   var55.Position = UDim2.fromScale(0.5, 0)
   var55.Size = UDim2.new(0, 141, 0, 22)
   var55.Selected = arg1.props.TransformMode
   var55.Select = arg1.props.SetTransformMode
   local var2 = {}
   var2.Text = var0:getText("RegionSettings", "Select")
   var2.Data = var5.TransformMode.Select
   local var3 = {}
   var3.Text = var0:getText("RegionSettings", "Transform")
   var3.Data = var5.TransformMode.Transform
   var55.Options = {}
   var51.ButtonGroup = var2.createElement(var6, var55)
   return var2.createElement(var4, var44, var51)
end

function var7.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props.LayoutOrder
   local var44 = {}
   var44.AutomaticSize = Enum.AutomaticSize.Y
   var44.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var44.Size = UDim2.fromScale(1, 0)
   local var51 = {}
   local var55 = {}
   var55.AnchorPoint = Vector2.new(0.5, 0)
   var55.Position = UDim2.fromScale(0.5, 0)
   var55.Size = UDim2.new(0, 141, 0, 22)
   var55.Selected = arg1.props.TransformMode
   var55.Select = arg1.props.SetTransformMode
   local var2 = {}
   var2.Text = var0:getText("RegionSettings", "Select")
   var2.Data = var5.TransformMode.Select
   local var3 = {}
   var3.Text = var0:getText("RegionSettings", "Transform")
   var3.Data = var5.TransformMode.Transform
   var55.Options = {}
   var51.ButtonGroup = var2.createElement(var6, var55)
   return var2.createElement(var4, var44, var51)
end

fun0 = var3.withContext
local var89 = {}
var89.Localization = var3.Localization
var7 = fun0(var89)(var7)
return var7
