-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = require(var0.Src.Thunks.ReplaceWithRules)
local var5 = require(var0.Src.Thunks.RevertScripts)
local var6 = require(var0.Src.Components.ConfirmRevertDialog)
local var7 = require(var0.Src.Components.ScriptConversionConsole)
local var8 = require(var0.Src.Util.showDialog)
local var9 = var1.UI
local var10 = var9.Pane
local var11 = var9.Button
local var12 = var1.Util.LayoutOrderIterator
local var13 = var2.PureComponent:extend("ScriptConversionPaneFooter")
function var13.init(arg1)
   function arg1.onRevertClicked()
      local var0 = arg1.props
      var0.RevertScripts(var0.ScriptConversionContext, var0.Localization, var0.Analytics)
   end
   
   function arg1.openDialog()
      local var0 = arg1.props
      local var214 = {}
      var214.OnConfirm = arg1.onRevertClicked
      var8(var0.Plugin, var0.Localization, var6, var214)
   end
   
   function arg1.onConvertClicked()
      local var0 = arg1.props
      var0.ReplaceWithRules(var0.ScriptConversionContext, var0.Localization, true, var0.Analytics)
   end
   
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var12.new()
   local var236 = {}
   var236.LayoutOrder = var0.LayoutOrder
   var236.Size = var0.Size
   var236.Layout = Enum.FillDirection.Vertical
   var236.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var236.VerticalAlignment = Enum.VerticalAlignment.Top
   var236.Spacing = var2.Spacing
   var236.Padding = var2.ButtonPadding
   local var242 = {}
   local var246 = {}
   var246.LayoutOrder = var3:getNextOrder()
   var242.ScriptConversionConsole = var2.createElement(var7, var246)
   local var253 = {}
   var253.LayoutOrder = var3:getNextOrder()
   var253.Size = UDim2.fromScale(1, 0)
   var253.AutomaticSize = Enum.AutomaticSize.Y
   var253.Layout = Enum.FillDirection.Horizontal
   var253.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var253.VerticalAlignment = Enum.VerticalAlignment.Center
   var253.Spacing = var2.ButtonSpacing
   local var265 = {}
   local var269 = {}
   var269.Size = var2.RevertButtonSize
   var269.Text = var1:getText("ScriptConversion", "Revert")
   var269.OnClick = arg1.openDialog
   var269.LayoutOrder = var3:getNextOrder()
   var265.RevertButton = var2.createElement(var11, var269)
   local var282 = {}
   var282.Size = var2.ConvertButtonSize
   var282.Text = var1:getText("ScriptConversion", "Convert")
   var282.OnClick = arg1.onConvertClicked
   var282.LayoutOrder = var3:getNextOrder()
   var265.ConvertButton = var2.createElement(var11, var282)
   var242.FooterButtons = var2.createElement(var10, var253, var265)
   return var2.createElement(var10, var236, var242)
end

local var295 = {}
var295.Analytics = var3.Analytics
var295.Plugin = var3.Plugin
var295.Localization = var3.Localization
var295.Stylizer = var3.Stylizer
var295.ScriptConversionContext = require(var0.Src.Contexts.ScriptConversionContext)
var13 = var3.withContext(var295)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.ReplaceWithRules()
      local var0 = arg1.props
      var0.RevertScripts(var0.ScriptConversionContext, var0.Localization, var0.Analytics)
   end
   
   function var0.RevertScripts()
      local var0 = arg1.props
      local var319 = {}
      var319.OnConfirm = arg1.onRevertClicked
      var8(var0.Plugin, var0.Localization, var6, var319)
   end
   
   return var0
end)(var13)
