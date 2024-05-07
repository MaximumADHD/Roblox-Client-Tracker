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
   local var381 = var3
   var4 = var1:getText("Info", "CanCollideWith", {})
   local var387 = {}
   var387.Size = UDim2.new(1, 0, 0, var8.GroupRowHeight)
   var387.LayoutOrder = var0.LayoutOrder
   var387.Layout = Enum.FillDirection.Horizontal
   var387.Padding = var2.Padding
   local var398 = {}
   local var402 = {}
   var402.GroupCount = var0.GroupCount
   var402.LayoutOrder = 1
   var398.GroupCountDisplay = var2.createElement(var9, var402)
   local var409 = {}
   var409.Style = "GroupLabel"
   var409.Size = UDim2.new(1, var8.GroupRowWidth, 0, var8.GroupRowHeight)
   var409.LayoutOrder = 2
   var409.Layout = Enum.FillDirection.Horizontal
   var409.Padding = var2.LabelPanePadding
   local var423 = {}
   local var427 = {}
   var427.Size = UDim2.new(1, 0, 1, 0)
   var427.Text = var4
   var427.TextXAlignment = Enum.TextXAlignment.Left
   var427.TextYAlignment = Enum.TextYAlignment.Center
   var423.TextLabel = var2.createElement(var7, var427)
   var398.LabelPane = var2.createElement(var6, var409, var423)
   return var2.createElement(var6, var387, var398)
end

local var440 = {}
var440.Stylizer = var4.Stylizer
var440.Localization = var4.Localization
var10 = var4.withContext(var440)(var10)
return var10
