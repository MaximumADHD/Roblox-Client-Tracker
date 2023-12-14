-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Packages.Framework)
local var4 = var3.Util.FitFrame.FitFrameOnAxis
local var5 = var3.UI.TextInput
local var6 = var3.ContextServices
local var7 = require(var0.Src.Components.RadioButtonSet)
local var8 = require(var0.Src.Components.RadioButton)
local var9 = var1.PureComponent:extend("ServerFill")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.Selected
   local var4 = var0.CustomSocialSlotsCount
   local var5 = var0.ErrorMessage
   local var6 = var0.OnSocialSlotTypeChanged
   local var7 = var0.OnCustomSocialSlotsCountChanged
   if var3 == "Custom" then
      local var0 = false
   end
   local var8 = true
   local var56 = {}
   var56.Id = "Automatic"
   var56.Title = var1:getText("Places", "OptimizedTitle")
   var56.Description = var1:getText("Places", "OptimizedDescription")
   local var66 = {}
   var66.Id = "Empty"
   var66.Title = var1:getText("Places", "MaximumTitle")
   var66.Description = var1:getText("Places", "MaximumWarning")
   local var76 = {}
   var76.Id = "Custom"
   var76.Title = var1:getText("Places", "CustomizeSlotsTitle")
   var76.Description = var1:getText("Places", "CustomizeSlotsDescription")
   local var89 = {}
   var89.axis = var4.Axis.Vertical
   var89.minimumSize = UDim2.new(1, 0, 0, 0)
   var89.BackgroundTransparency = 1
   var89.LayoutOrder = var0.LayoutOrder
   local var100 = {}
   local var104 = {}
   var104.Title = var1:getText("Places", "ServerFill")
   var104.Buttons = {}
   var104.Enabled = var0.Enabled
   var104.Selected = var3
   function var104.RenderItem()
      var1(var4)
   end
   
   var100.ServerFillToggle = var1.createElement(var7, var104)
   return var1.createElement(var4, var89, var100)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var0.Selected
   local var4 = var0.CustomSocialSlotsCount
   local var5 = var0.ErrorMessage
   local var6 = var0.OnSocialSlotTypeChanged
   local var7 = var0.OnCustomSocialSlotsCountChanged
   if var3 == "Custom" then
      local var0 = false
   end
   local var8 = true
   local var56 = {}
   var56.Id = "Automatic"
   var56.Title = var1:getText("Places", "OptimizedTitle")
   var56.Description = var1:getText("Places", "OptimizedDescription")
   local var66 = {}
   var66.Id = "Empty"
   var66.Title = var1:getText("Places", "MaximumTitle")
   var66.Description = var1:getText("Places", "MaximumWarning")
   local var76 = {}
   var76.Id = "Custom"
   var76.Title = var1:getText("Places", "CustomizeSlotsTitle")
   var76.Description = var1:getText("Places", "CustomizeSlotsDescription")
   local var89 = {}
   var89.axis = var4.Axis.Vertical
   var89.minimumSize = UDim2.new(1, 0, 0, 0)
   var89.BackgroundTransparency = 1
   var89.LayoutOrder = var0.LayoutOrder
   local var100 = {}
   local var104 = {}
   var104.Title = var1:getText("Places", "ServerFill")
   var104.Buttons = {}
   var104.Enabled = var0.Enabled
   var104.Selected = var3
   function var104.RenderItem()
      var1(var4)
   end
   
   var100.ServerFillToggle = var1.createElement(var7, var104)
   return var1.createElement(var4, var89, var100)
end

fun1 = var6.withContext
local var109 = {}
var109.Localization = var6.Localization
var109.Stylizer = var6.Stylizer
var9 = fun1(var109)(var9)
return var9
