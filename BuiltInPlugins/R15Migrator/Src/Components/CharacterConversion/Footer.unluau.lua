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
   local var981 = {}
   var981.LayoutOrder = var0.LayoutOrder
   var981.Size = var0.Size
   var981.Layout = Enum.FillDirection.Vertical
   var981.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var981.VerticalAlignment = Enum.VerticalAlignment.Top
   var981.Spacing = var3.Spacing
   local var986 = {}
   local var990 = {}
   var990.Layout = Enum.FillDirection.Vertical
   var990.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var990.VerticalAlignment = Enum.VerticalAlignment.Top
   var990.BackgroundColor3 = var3.ProcessResultBackgroundColor
   var990.BorderSizePixel = 0
   var990.Padding = var3.ResultContainerPadding
   var990.Size = var3.ResultContainerSize
   var990.Spacing = var3.ResultContainerSpacing
   local var999 = {}
   local var1003 = {}
   var1003.DominantAxis = Enum.DominantAxis.Width
   var1003.LayoutOrder = var4:getNextOrder()
   var1003.Style = var3.SeparatorStyle
   var999.Separator = var2.createElement(var9, var1003)
   local var1012 = {}
   var1012.Size = var3.ResultSize
   local var1015 = var4:getNextOrder()
   var1012.LayoutOrder = var1015
   var1012.Text = var1015
   var1012.TextXAlignment = Enum.TextXAlignment.Left
   var999.ProcessResult = var2.createElement(var10, var1012)
   var986.ResultContainer = var2.createElement(var7, var990, var999)
   local var1022 = {}
   var1022.LayoutOrder = var4:getNextOrder()
   var1022.Size = UDim2.fromScale(1, 0)
   var1022.AutomaticSize = Enum.AutomaticSize.Y
   var1022.Layout = Enum.FillDirection.Horizontal
   var1022.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var1022.VerticalAlignment = Enum.VerticalAlignment.Center
   var1022.Spacing = var3.ButtonSpacing
   var1022.Padding = var3.ButtonPadding
   local var1035 = {}
   local var1039 = {}
   var1039.Size = var3.ConvertButtonSize
   var1039.Text = var1:getText("CharacterConversion", "Revert")
   var1039.OnClick = arg1.revertCharacters
   var1039.LayoutOrder = var4:getNextOrder()
   var1035.RevertButton = var2.createElement(var8, var1039)
   local var1052 = {}
   var1052.Size = var3.RevertButtonSize
   var1052.Text = var1:getText("CharacterConversion", "Convert")
   var1052.OnClick = arg1.convertCharacters
   var1052.LayoutOrder = var4:getNextOrder()
   var1035.ConvertButton = var2.createElement(var8, var1052)
   var986.FooterButtons = var2.createElement(var7, var1022, var1035)
   return var2.createElement(var7, var981, var986)
end

local var1065 = {}
var1065.Analytics = var5.Analytics
var1065.Plugin = var5.Plugin
var1065.Localization = var5.Localization
var1065.Stylizer = var5.Stylizer
var12 = var5.withContext(var1065)(var12)
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
