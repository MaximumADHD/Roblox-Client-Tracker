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
   local var579 = {}
   var579.Layout = Enum.FillDirection.Vertical
   var579.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var579.VerticalAlignment = Enum.VerticalAlignment.Center
   var579.Spacing = var3.Spacing
   var579.Padding = var3.Padding
   local var585 = {}
   local var589 = {}
   var589.Text = var4
   var589.AutomaticSize = Enum.AutomaticSize.XY
   var589.LayoutOrder = var5:getNextOrder()
   var585.Text = var2.createElement(var7, var589)
   local var597 = {}
   var597.LayoutOrder = var5:getNextOrder()
   var585.LoadingIndicator = var2.createElement(var6, var597)
   return var2.createElement(var5, var579, var585)
end

local var603 = {}
var603.Stylizer = var3.Stylizer
local var605 = var3.Localization
var603.Localization = var605
var10 = var3.withContext(var603)(var10)
function var605(arg1, arg2)
   local var0 = {}
   var0.status = arg1.AnimationConversion.status
   return var0
end

return require(var0.Packages.RoactRodux).connect(var605)(var10)
