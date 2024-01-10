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
      local var222 = {}
      var222.OnConfirm = arg1.onRevertClicked
      var8(var0.Plugin, var0.Localization, var6, var222)
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
   local var244 = {}
   var244.LayoutOrder = var0.LayoutOrder
   var244.Size = var0.Size
   var244.Layout = Enum.FillDirection.Vertical
   var244.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var244.VerticalAlignment = Enum.VerticalAlignment.Top
   var244.Spacing = var2.Spacing
   var244.Padding = var2.ButtonPadding
   local var250 = {}
   local var254 = {}
   var254.LayoutOrder = var3:getNextOrder()
   var250.ScriptConversionConsole = var2.createElement(var7, var254)
   local var261 = {}
   var261.LayoutOrder = var3:getNextOrder()
   var261.Size = UDim2.fromScale(1, 0)
   var261.AutomaticSize = Enum.AutomaticSize.Y
   var261.Layout = Enum.FillDirection.Horizontal
   var261.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var261.VerticalAlignment = Enum.VerticalAlignment.Center
   var261.Spacing = var2.ButtonSpacing
   local var273 = {}
   local var277 = {}
   var277.Size = var2.RevertButtonSize
   var277.Text = var1:getText("ScriptConversion", "Revert")
   var277.OnClick = arg1.openDialog
   var277.LayoutOrder = var3:getNextOrder()
   var273.RevertButton = var2.createElement(var11, var277)
   local var290 = {}
   var290.Size = var2.ConvertButtonSize
   var290.Text = var1:getText("ScriptConversion", "Convert")
   var290.OnClick = arg1.onConvertClicked
   var290.LayoutOrder = var3:getNextOrder()
   var273.ConvertButton = var2.createElement(var11, var290)
   var250.FooterButtons = var2.createElement(var10, var261, var273)
   return var2.createElement(var10, var244, var250)
end

local var303 = {}
var303.Analytics = var3.Analytics
var303.Plugin = var3.Plugin
var303.Localization = var3.Localization
var303.Stylizer = var3.Stylizer
var303.ScriptConversionContext = require(var0.Src.Contexts.ScriptConversionContext)
var13 = var3.withContext(var303)(var13)
return require(var0.Packages.RoactRodux).connect(nil, function(arg1)
   local var0 = {}
   function var0.ReplaceWithRules()
      local var0 = arg1.props
      var0.RevertScripts(var0.ScriptConversionContext, var0.Localization, var0.Analytics)
   end
   
   function var0.RevertScripts()
      local var0 = arg1.props
      local var327 = {}
      var327.OnConfirm = arg1.onRevertClicked
      var8(var0.Plugin, var0.Localization, var6, var327)
   end
   
   return var0
end)(var13)
