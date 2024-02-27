-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI
local var5 = var4.Pane
local var6 = var4.LoadingIndicator
local var7 = var4.TextLabel
local var8 = var1.Util.LayoutOrderIterator
local var9 = require(var0.Src.Util.AnimationConversion.constants).Status
local var10 = var2.PureComponent:extend("LoadingScreen")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.status
   local var2 = var0.Localization
   local var3 = var0.Stylizer
   local var4 = ""
   if var1 ~= var9.ScanningScripts then
      if var1 ~= var9.ScanningWorkspace then
         if var1 == "ScanningWorkspace" then
            var4 = var2:getText("AnimationConversion", var1)
         end
      end
   end
   var4 = var2:getText("AnimationConversion", var1)
   local var5 = var8.new()
   local var60 = {}
   var60.Layout = Enum.FillDirection.Vertical
   var60.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var60.VerticalAlignment = Enum.VerticalAlignment.Center
   var60.Spacing = var3.Spacing
   var60.Padding = var3.Padding
   local var66 = {}
   local var70 = {}
   var70.Text = var4
   var70.AutomaticSize = Enum.AutomaticSize.XY
   var70.LayoutOrder = var5:getNextOrder()
   var66.Text = var2.createElement(var7, var70)
   local var78 = {}
   var78.LayoutOrder = var5:getNextOrder()
   var66.LoadingIndicator = var2.createElement(var6, var78)
   return var2.createElement(var5, var60, var66)
end

local var84 = {}
var84.Stylizer = var3.Stylizer
local var86 = var3.Localization
var84.Localization = var86
var10 = var3.withContext(var84)(var10)
function var86(arg1, arg2)
   local var0 = {}
   var0.status = arg1.AnimationConversion.status
   return var0
end

return require(var0.Packages.RoactRodux).connect(var86)(var10)
