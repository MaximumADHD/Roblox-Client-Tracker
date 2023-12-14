-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = script.Parent
local var4 = require(var3.LabeledToggle)
local var5 = require(var3.Panel)
local var6 = var1.PureComponent:extend(script.Name)
local function fun9(arg1)
   local var0 = arg1.props.Localization
   local var431 = {}
   var431.Title = var0:getText("EditSettings", "EditSettings")
   var431.Padding = UDim.new(0, 12)
   var431.LayoutOrder = arg1.props.LayoutOrder
   local var442 = {}
   local var446 = {}
   var446.LayoutOrder = 1
   var446.Text = var0:getText("EditSettings", "MergeEmpty")
   var446.IsOn = arg1.props.mergeEmpty
   var446.SetIsOn = arg1.props.setMergeEmpty
   var442.MergeEmptyToggle = var1.createElement(var4, var446)
   return var1.createElement(var5, var431, var442)
end

function var6.render(arg1)
   local var0 = arg1.props.Localization
   local var431 = {}
   var431.Title = var0:getText("EditSettings", "EditSettings")
   var431.Padding = UDim.new(0, 12)
   var431.LayoutOrder = arg1.props.LayoutOrder
   local var442 = {}
   local var446 = {}
   var446.LayoutOrder = 1
   var446.Text = var0:getText("EditSettings", "MergeEmpty")
   var446.IsOn = arg1.props.mergeEmpty
   var446.SetIsOn = arg1.props.setMergeEmpty
   var442.MergeEmptyToggle = var1.createElement(var4, var446)
   return var1.createElement(var5, var431, var442)
end

fun9 = var2.withContext
local var458 = {}
var458.Localization = var2.Localization
var6 = fun9(var458)(var6)
return var6
