-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI
local var5 = var4.Pane
local var6 = var4.Button
local var7 = var1.Util.LayoutOrderIterator
local var8 = var2.PureComponent:extend("Buttons")
function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var7.new()
   local var35 = {}
   var35.Layout = Enum.FillDirection.Horizontal
   var35.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var35.VerticalAlignment = Enum.VerticalAlignment.Top
   var35.LayoutOrder = var0.LayoutOrder
   var35.AutomaticSize = Enum.AutomaticSize.XY
   var35.Spacing = var2.Spacing
   var35.Padding = var2.Padding
   local var42 = {}
   local var46 = {}
   var46.Style = "Round"
   var46.Text = var1:getText("PublishWarningAction", "Cancel")
   var46.Size = var2.CancelButtonSize
   var46.OnClick = var0.OnCancel
   var46.LayoutOrder = var3:getNextOrder()
   var42.Cancel = var2.createElement(var6, var46)
   local var59 = {}
   var59.Style = "RoundPrimary"
   var59.Text = var1:getText("PublishWarningAction", "Continue")
   var59.Size = var2.ContinueButtonSize
   var59.OnClick = var0.OnContinue
   var59.LayoutOrder = var3:getNextOrder()
   var42.Continue = var2.createElement(var6, var59)
   return var2.createElement(var5, var35, var42)
end

local var71 = {}
var71.Stylizer = var3.Stylizer
var71.Localization = var3.Localization
var8 = var3.withContext(var71)(var8)
return var8
