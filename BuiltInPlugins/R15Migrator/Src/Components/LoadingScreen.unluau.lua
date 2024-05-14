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
   local var513 = {}
   var513.Layout = Enum.FillDirection.Vertical
   var513.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var513.VerticalAlignment = Enum.VerticalAlignment.Center
   var513.Spacing = var3.Spacing
   var513.Padding = var3.Padding
   local var519 = {}
   local var523 = {}
   var523.Text = var4
   var523.AutomaticSize = Enum.AutomaticSize.XY
   var523.LayoutOrder = var5:getNextOrder()
   var519.Text = var2.createElement(var7, var523)
   local var531 = {}
   var531.LayoutOrder = var5:getNextOrder()
   var519.LoadingIndicator = var2.createElement(var6, var531)
   return var2.createElement(var5, var513, var519)
end

local var537 = {}
var537.Stylizer = var3.Stylizer
local var539 = var3.Localization
var537.Localization = var539
var10 = var3.withContext(var537)(var10)
function var539(arg1, arg2)
   local var0 = {}
   var0.status = arg1.AnimationConversion.status
   return var0
end

return require(var0.Packages.RoactRodux).connect(var539)(var10)
