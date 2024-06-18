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
   local var130 = var3
   var4 = var1:getText("Info", "CanCollideWith", {})
   local var136 = {}
   var136.Size = UDim2.new(1, 0, 0, var8.GroupRowHeight)
   var136.LayoutOrder = var0.LayoutOrder
   var136.Layout = Enum.FillDirection.Horizontal
   var136.Padding = var2.Padding
   local var147 = {}
   local var151 = {}
   var151.GroupCount = var0.GroupCount
   var151.LayoutOrder = 1
   var147.GroupCountDisplay = var2.createElement(var9, var151)
   local var158 = {}
   var158.Style = "GroupLabel"
   var158.Size = UDim2.new(1, var8.GroupRowWidth, 0, var8.GroupRowHeight)
   var158.LayoutOrder = 2
   var158.Layout = Enum.FillDirection.Horizontal
   var158.Padding = var2.LabelPanePadding
   local var172 = {}
   local var176 = {}
   var176.Size = UDim2.new(1, 0, 1, 0)
   var176.Text = var4
   var176.TextXAlignment = Enum.TextXAlignment.Left
   var176.TextYAlignment = Enum.TextYAlignment.Center
   var172.TextLabel = var2.createElement(var7, var176)
   var147.LabelPane = var2.createElement(var6, var158, var172)
   return var2.createElement(var6, var136, var147)
end

local var189 = {}
var189.Stylizer = var4.Stylizer
var189.Localization = var4.Localization
var10 = var4.withContext(var189)(var10)
return var10
