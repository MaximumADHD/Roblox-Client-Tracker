-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = script.Parent
local var5 = require(var4.MapSettingsWithPreviewFragment)
local var6 = require(var4.Panel)
local var7 = var2.PureComponent:extend(script.Name)
local function fun4(arg1)
   local var207 = {}
   var207.LayoutOrder = var1.None
   var207.isSubsection = var1.None
   var207.InitialLayoutOrder = 1
   local var217 = {}
   var217.LayoutOrder = arg1.props.LayoutOrder
   var217.isSubsection = arg1.props.isSubsection
   var217.Title = arg1.props.Localization:getText("MapSettings", "MapSettings")
   var217.Padding = UDim.new(0, 12)
   local var226 = {}
   var226.MapSettingsWithPreviewFragment = var2.createElement(var5, var1.Dictionary.join(arg1.props, var207))
   return var2.createElement(var6, var217, var226)
end

function var7.render(arg1)
   local var207 = {}
   var207.LayoutOrder = var1.None
   var207.isSubsection = var1.None
   var207.InitialLayoutOrder = 1
   local var217 = {}
   var217.LayoutOrder = arg1.props.LayoutOrder
   var217.isSubsection = arg1.props.isSubsection
   var217.Title = arg1.props.Localization:getText("MapSettings", "MapSettings")
   var217.Padding = UDim.new(0, 12)
   local var226 = {}
   var226.MapSettingsWithPreviewFragment = var2.createElement(var5, var1.Dictionary.join(arg1.props, var207))
   return var2.createElement(var6, var217, var226)
end

fun4 = var3.withContext
local var233 = {}
var233.Localization = var3.Localization
var7 = fun4(var233)(var7)
return var7
