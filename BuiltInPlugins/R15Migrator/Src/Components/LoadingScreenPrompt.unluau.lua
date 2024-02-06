-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI
local var5 = var4.Pane
local var6 = var4.LoadingIndicator
local var7 = var4.TextLabel
local var8 = var4.Button
local var9 = var1.Util.LayoutOrderIterator
local var10 = require(var0.Src.Util.AnimationConversion.constants).Status
local var11 = var2.PureComponent:extend("LoadingScreenPrompt")
function var11.init(arg1)
   local var386 = {}
   var386.showLoadingScreen = false
   arg1.state = var386
   function arg1.onClick()
      local var389 = {}
      var389.showLoadingScreen = true
      arg1:setState(var389)
      if arg1.props.OnClick then
         arg1.props.OnClick()
      end
   end
   
end

function var11.renderLoadingScreen(arg1)
   local var0 = arg1.props
   local var1 = var0.status
   local var2 = var0.Localization
   local var3 = var0.Stylizer
   local var4 = ""
   if var1 ~= var10.ScanningScripts then
      if var1 ~= var10.ScanningWorkspace then
         if var1 == "ScanningWorkspace" then
            var4 = var2:getText("AnimationConversion", var1)
         end
      end
   end
   var4 = var2:getText("AnimationConversion", var1)
   local var5 = var9.new()
   local var424 = {}
   var424.Layout = Enum.FillDirection.Vertical
   var424.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var424.VerticalAlignment = Enum.VerticalAlignment.Center
   var424.Spacing = var3.Spacing
   var424.Padding = var3.Padding
   local var430 = {}
   local var434 = {}
   var434.Text = var4
   var434.AutomaticSize = Enum.AutomaticSize.XY
   var434.LayoutOrder = var5:getNextOrder()
   var430.Text = var2.createElement(var7, var434)
   local var442 = {}
   var442.LayoutOrder = var5:getNextOrder()
   var430.LoadingIndicator = var2.createElement(var6, var442)
   return var2.createElement(var5, var424, var430)
end

function var11.renderPrompt(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var9.new()
   local var457 = {}
   var457.Layout = Enum.FillDirection.Vertical
   var457.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var457.VerticalAlignment = Enum.VerticalAlignment.Center
   var457.Spacing = var2.Spacing
   var457.Padding = var2.Padding
   local var463 = {}
   local var467 = {}
   var467.TextWrapped = true
   var467.Text = var1:getText("InitialScanning", "ScanPrompt")
   var467.AutomaticSize = Enum.AutomaticSize.XY
   var467.LayoutOrder = var3:getNextOrder()
   var463.Text = var2.createElement(var7, var467)
   local var480 = {}
   var480.LayoutOrder = var3:getNextOrder()
   var480.Style = "Round"
   var480.Size = var2.ButtonSize
   var480.Text = var1:getText("InitialScanning", "ScanButton")
   var480.OnClick = arg1.onClick
   var463.Button = var2.createElement(var8, var480)
   return var2.createElement(var5, var457, var463)
end

function var11.render(arg1)
   if arg1.state.showLoadingScreen then
      return arg1:renderLoadingScreen()
   end
   return arg1:renderPrompt()
end

local var500 = {}
var500.Stylizer = var3.Stylizer
local var502 = var3.Localization
var500.Localization = var502
var11 = var3.withContext(var500)(var11)
function var502(arg1, arg2)
   local var0 = {}
   var0.status = arg1.AnimationConversion.status
   return var0
end

return require(var0.Packages.RoactRodux).connect(var502)(var11)
