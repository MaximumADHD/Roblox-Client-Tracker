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
function var10.init(arg1)
   local var0 = arg1.props.StartScan
   task.spawn(function()
      wait(1)
      var0()
   end)
end

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
   local var229 = {}
   var229.Layout = Enum.FillDirection.Vertical
   var229.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var229.VerticalAlignment = Enum.VerticalAlignment.Center
   var229.Spacing = var3.Spacing
   var229.Padding = var3.Padding
   local var235 = {}
   local var239 = {}
   var239.Text = var4
   var239.AutomaticSize = Enum.AutomaticSize.XY
   var239.LayoutOrder = var5:getNextOrder()
   var235.Text = var2.createElement(var7, var239)
   local var247 = {}
   var247.LayoutOrder = var5:getNextOrder()
   var235.LoadingIndicator = var2.createElement(var6, var247)
   return var2.createElement(var5, var229, var235)
end

local var253 = {}
var253.Stylizer = var3.Stylizer
local var255 = var3.Localization
var253.Localization = var255
var10 = var3.withContext(var253)(var10)
function var255(arg1, arg2)
   local var0 = {}
   var0.status = arg1.AnimationConversion.status
   return var0
end

return require(var0.Packages.RoactRodux).connect(var255)(var10)
