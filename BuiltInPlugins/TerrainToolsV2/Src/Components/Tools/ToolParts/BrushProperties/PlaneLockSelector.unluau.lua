-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.TerrainEnums).PlaneLockType
local var4 = script.Parent.Parent
local var5 = require(var4.LabeledElementPair)
local var6 = require(var4.SingleSelectButtonGroup)
local var7 = var1.PureComponent:extend("PlaneLockSelector")
local function fun0(arg1)
   local var0 = arg1.props.Localization
   local var148 = {}
   var148.Size = UDim2.new(1, 0, 0, 22)
   var148.Text = var0:getText("BrushSettings", "PlaneLock")
   var148.LayoutOrder = arg1.props.LayoutOrder
   local var163 = {}
   var163.Size = UDim2.new(0, 141, 0, 22)
   var163.Selected = arg1.props.planeLock
   var163.Select = arg1.props.setPlaneLock
   local var1 = {}
   var1.Text = var0:getText("BrushSettings", "Off")
   var1.Data = var3.Off
   local var2 = {}
   var2.Text = var0:getText("BrushSettings", "Auto")
   var2.Data = var3.Auto
   local var3 = {}
   var3.Text = var0:getText("BrushSettings", "Manual")
   var3.Data = var3.Manual
   var163.Options = {}
   local var4 = var1.createElement(var6, var163)
   return var1.createElement(var5, var148, {})
end

function var7.render(arg1)
   local var0 = arg1.props.Localization
   local var148 = {}
   var148.Size = UDim2.new(1, 0, 0, 22)
   var148.Text = var0:getText("BrushSettings", "PlaneLock")
   var148.LayoutOrder = arg1.props.LayoutOrder
   local var163 = {}
   var163.Size = UDim2.new(0, 141, 0, 22)
   var163.Selected = arg1.props.planeLock
   var163.Select = arg1.props.setPlaneLock
   local var1 = {}
   var1.Text = var0:getText("BrushSettings", "Off")
   var1.Data = var3.Off
   local var2 = {}
   var2.Text = var0:getText("BrushSettings", "Auto")
   var2.Data = var3.Auto
   local var3 = {}
   var3.Text = var0:getText("BrushSettings", "Manual")
   var3.Data = var3.Manual
   var163.Options = {}
   local var4 = var1.createElement(var6, var163)
   return var1.createElement(var5, var148, {})
end

fun0 = var2.withContext
local var194 = {}
var194.Localization = var2.Localization
var7 = fun0(var194)(var7)
return var7
