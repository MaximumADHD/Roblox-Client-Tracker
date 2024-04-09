-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("FileSync")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Util.Constants)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices.Localization
local var5 = var3.UI
local var6 = var5.TextLabel
local var7 = var5.Separator
local var8 = var5.Checkbox
local var9 = var3.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var4:use()
   local var1 = var9.new()
   local var43 = {}
   var43.BackgroundTransparency = 1
   var43.Size = arg1.Size or UDim2.new(1, 20, 0, 50)
   var43.LayoutOrder = arg1.LayoutOrder
   local var46 = {}
   local var50 = {}
   var50.FillDirection = Enum.FillDirection.Vertical
   var50.Padding = UDim.new(0, 4)
   var50.SortOrder = Enum.SortOrder.LayoutOrder
   var46.ListLayout = var1.createElement("UIListLayout", var50)
   local var61 = {}
   var61.PaddingLeft = UDim.new(0, var2.SIDE_PADDING)
   var46.LeftPadding = var1.createElement("UIPadding", var61)
   local var71 = {}
   var71.Text = var0:getText("Labels", "Settings")
   var71.Style = "Bold"
   var71.TextXAlignment = Enum.TextXAlignment.Left
   var71.Size = UDim2.new(1, 0, 0, 20)
   var71.BackgroundTransparency = 1
   var71.LayoutOrder = var1:getNextOrder()
   var46.SettingsLabel = var1.createElement(var6, var71)
   local var91 = {}
   var91.LayoutOrder = var1:getNextOrder()
   var46.Separator2 = var1.createElement(var7, var91)
   local var98 = {}
   var98.Text = var0:getText("Labels", "AutoImport")
   var98.Checked = arg1.IsChecked
   var98.OnClick = arg1.OnClick
   var98.Size = UDim2.new(1, 0, 0, 20)
   var98.LayoutOrder = var1:getNextOrder()
   var46.AutoImportCheckBox = var1.createElement(var8, var98)
   return var1.createElement("Frame", var43, var46)
end
