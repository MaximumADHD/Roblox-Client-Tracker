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
   local var499 = {}
   var499.Layout = Enum.FillDirection.Vertical
   var499.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var499.VerticalAlignment = Enum.VerticalAlignment.Center
   var499.Spacing = var3.Spacing
   var499.Padding = var3.Padding
   local var505 = {}
   local var509 = {}
   var509.Text = var4
   var509.AutomaticSize = Enum.AutomaticSize.XY
   var509.LayoutOrder = var5:getNextOrder()
   var505.Text = var2.createElement(var7, var509)
   local var517 = {}
   var517.LayoutOrder = var5:getNextOrder()
   var505.LoadingIndicator = var2.createElement(var6, var517)
   return var2.createElement(var5, var499, var505)
end

local var523 = {}
var523.Stylizer = var3.Stylizer
local var525 = var3.Localization
var523.Localization = var525
var10 = var3.withContext(var523)(var10)
function var525(arg1, arg2)
   local var0 = {}
   var0.status = arg1.AnimationConversion.status
   return var0
end

return require(var0.Packages.RoactRodux).connect(var525)(var10)
