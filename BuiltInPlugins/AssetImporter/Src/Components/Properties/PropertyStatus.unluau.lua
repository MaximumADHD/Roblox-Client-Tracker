-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Tooltip
local var6 = var4.Image
local var7 = require(var0.Src.Resources.StatusLevel)
local var8 = var1.PureComponent:extend("PropertyStatus")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.StatusLevel
   local var3 = var1.PropertyView.IconSize
   local var4 = true
   if var2 == "Error" then
      if var2 ~= var7.Error then
         local var0 = false
      end
      local var0 = true
   end
   if var4 then
      local var0 = var1.ErrorIcon or var1.WarningIcon
   end
   local var477 = {}
   var477.Size = UDim2.fromOffset(var3, var3)
   var477.Style = var1.WarningIcon
   var477.LayoutOrder = var0.LayoutOrder
   local var482 = {}
   local var486 = {}
   var486.Text = var0.Localization:getText("Statuses", var0.StatusMessage, var0.StatusContext)
   var482.Tooltip = var1.createElement(var5, var486)
   return var1.createElement(var6, var477, var482)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.StatusLevel
   local var3 = var1.PropertyView.IconSize
   local var4 = true
   if var2 == "Error" then
      if var2 ~= var7.Error then
         local var0 = false
      end
      local var0 = true
   end
   if var4 then
      local var0 = var1.ErrorIcon or var1.WarningIcon
   end
   local var477 = {}
   var477.Size = UDim2.fromOffset(var3, var3)
   var477.Style = var1.WarningIcon
   var477.LayoutOrder = var0.LayoutOrder
   local var482 = {}
   local var486 = {}
   var486.Text = var0.Localization:getText("Statuses", var0.StatusMessage, var0.StatusContext)
   var482.Tooltip = var1.createElement(var5, var486)
   return var1.createElement(var6, var477, var482)
end

fun10 = var3.withContext
local var494 = {}
var494.Localization = var3.Localization
var494.Stylizer = var3.Stylizer
var8 = fun10(var494)(var8)
return var8
