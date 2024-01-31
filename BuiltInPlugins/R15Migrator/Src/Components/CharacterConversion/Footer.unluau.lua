-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = require(var0.Src.Thunks.ConvertCharacters)
local var4 = require(var0.Src.Thunks.RevertCharacters)
local var5 = var1.ContextServices
local var6 = var1.UI
local var7 = var6.Pane
local var8 = var6.Button
local var9 = var6.Separator
local var10 = var6.TextLabel
local var11 = var1.Util.LayoutOrderIterator
local var12 = var2.PureComponent:extend("CharacterConversionPaneFooter")
function var12.init(arg1)
   function arg1.convertCharacters()
      arg1.props.ConvertCharacters(arg1.props.Analytics)
   end
   
   function arg1.revertCharacters()
      arg1.props.RevertCharacters(arg1.props.Analytics)
   end
   
end

function var12.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.processResultMessage
   local var3 = var0.Stylizer
   local var4 = var11.new()
   local var673 = {}
   var673.LayoutOrder = var0.LayoutOrder
   var673.Size = var0.Size
   var673.Layout = Enum.FillDirection.Vertical
   var673.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var673.VerticalAlignment = Enum.VerticalAlignment.Top
   var673.Spacing = var3.Spacing
   local var678 = {}
   local var682 = {}
   var682.Layout = Enum.FillDirection.Vertical
   var682.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var682.VerticalAlignment = Enum.VerticalAlignment.Top
   var682.BorderSizePixel = 0
   var682.Padding = var3.ResultContainerPadding
   var682.Size = var3.ResultContainerSize
   var682.Spacing = var3.ResultContainerSpacing
   local var690 = {}
   local var694 = {}
   var694.DominantAxis = Enum.DominantAxis.Width
   var694.LayoutOrder = var4:getNextOrder()
   var694.Style = var3.SeparatorStyle
   var690.Separator = var2.createElement(var9, var694)
   local var703 = {}
   var703.Size = var3.ResultSize
   local var706 = var4:getNextOrder()
   var703.LayoutOrder = var706
   var703.Text = var706
   var703.TextXAlignment = Enum.TextXAlignment.Left
   var690.ProcessResult = var2.createElement(var10, var703)
   var678.ResultContainer = var2.createElement(var7, var682, var690)
   local var713 = {}
   var713.LayoutOrder = var4:getNextOrder()
   var713.Size = UDim2.fromScale(1, 0)
   var713.AutomaticSize = Enum.AutomaticSize.Y
   var713.Layout = Enum.FillDirection.Horizontal
   var713.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var713.VerticalAlignment = Enum.VerticalAlignment.Center
   var713.Spacing = var3.ButtonSpacing
   var713.Padding = var3.ButtonPadding
   local var726 = {}
   local var730 = {}
   var730.Size = var3.ConvertButtonSize
   var730.Text = var1:getText("CharacterConversion", "Revert")
   var730.OnClick = arg1.revertCharacters
   var730.LayoutOrder = var4:getNextOrder()
   var726.RevertButton = var2.createElement(var8, var730)
   local var743 = {}
   var743.Size = var3.RevertButtonSize
   var743.Text = var1:getText("CharacterConversion", "Convert")
   var743.OnClick = arg1.convertCharacters
   var743.LayoutOrder = var4:getNextOrder()
   var726.ConvertButton = var2.createElement(var8, var743)
   var678.FooterButtons = var2.createElement(var7, var713, var726)
   return var2.createElement(var7, var673, var678)
end

local var756 = {}
var756.Analytics = var5.Analytics
var756.Plugin = var5.Plugin
var756.Localization = var5.Localization
var756.Stylizer = var5.Stylizer
var12 = var5.withContext(var756)(var12)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.selection = arg1.CharacterConversion.selection
   return var0
end, function(arg1)
   local var0 = {}
   function var0.ConvertCharacters()
      arg1.props.ConvertCharacters(arg1.props.Analytics)
   end
   
   function var0.RevertCharacters()
      arg1.props.RevertCharacters(arg1.props.Analytics)
   end
   
   return var0
end)(var12)
