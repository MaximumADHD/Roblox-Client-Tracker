-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("LocalizationService")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Roact)
local var3 = require(var1.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI
local var6 = var5.Pane
local var7 = var5.TextLabel
local var8 = require(script.Parent.Parent.Constants)
local var9 = require(script.Parent.GroupCountDisplay)
local var10 = var2.Component:extend("ListHeader")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer.ListHeader
   local var3 = var0.SelectedGroupName
   if var3 ~= var8.CursorGroupName then
      if var3 == "" then
         local var0 = ""
      else
         local var0 = var3
         nil = var1:getText("Info", "CanCollideWith", {})
      end
   end
   local var4 = ""
   local var261 = var3
   var4 = var1:getText("Info", "CanCollideWith", {})
   local var267 = {}
   var267.Size = UDim2.new(1, 0, 0, var8.GroupRowHeight)
   var267.LayoutOrder = var0.LayoutOrder
   var267.Layout = Enum.FillDirection.Horizontal
   var267.Padding = var2.Padding
   local var278 = {}
   local var282 = {}
   var282.GroupCount = var0.GroupCount
   var282.LayoutOrder = 1
   var278.GroupCountDisplay = var2.createElement(var9, var282)
   local var289 = {}
   var289.Style = "GroupLabel"
   var289.Size = UDim2.new(1, var8.GroupRowWidth, 0, var8.GroupRowHeight)
   var289.LayoutOrder = 2
   var289.Layout = Enum.FillDirection.Horizontal
   var289.Padding = var2.LabelPanePadding
   local var303 = {}
   local var307 = {}
   var307.Size = UDim2.new(1, 0, 1, 0)
   var307.Text = var4
   var307.TextXAlignment = Enum.TextXAlignment.Left
   var307.TextYAlignment = Enum.TextYAlignment.Center
   var303.TextLabel = var2.createElement(var7, var307)
   var278.LabelPane = var2.createElement(var6, var289, var303)
   return var2.createElement(var6, var267, var278)
end

local var320 = {}
var320.Stylizer = var4.Stylizer
var320.Localization = var4.Localization
var10 = var4.withContext(var320)(var10)
return var10
