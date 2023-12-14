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
   local var1044 = {}
   var1044.LayoutOrder = var0.LayoutOrder
   var1044.Size = var0.Size
   var1044.Layout = Enum.FillDirection.Vertical
   var1044.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1044.VerticalAlignment = Enum.VerticalAlignment.Top
   var1044.Spacing = var3.Spacing
   local var1049 = {}
   local var1053 = {}
   var1053.Layout = Enum.FillDirection.Vertical
   var1053.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1053.VerticalAlignment = Enum.VerticalAlignment.Top
   var1053.BackgroundColor3 = var3.ProcessResultBackgroundColor
   var1053.BorderSizePixel = 0
   var1053.Padding = var3.ResultContainerPadding
   var1053.Size = var3.ResultContainerSize
   var1053.Spacing = var3.ResultContainerSpacing
   local var1062 = {}
   local var1066 = {}
   var1066.DominantAxis = Enum.DominantAxis.Width
   var1066.LayoutOrder = var4:getNextOrder()
   var1066.Style = var3.SeparatorStyle
   var1062.Separator = var2.createElement(var9, var1066)
   local var1075 = {}
   var1075.Size = var3.ResultSize
   local var1078 = var4:getNextOrder()
   var1075.LayoutOrder = var1078
   var1075.Text = var1078
   var1075.TextXAlignment = Enum.TextXAlignment.Left
   var1062.ProcessResult = var2.createElement(var10, var1075)
   var1049.ResultContainer = var2.createElement(var7, var1053, var1062)
   local var1085 = {}
   var1085.LayoutOrder = var4:getNextOrder()
   var1085.Size = UDim2.fromScale(1, 0)
   var1085.AutomaticSize = Enum.AutomaticSize.Y
   var1085.Layout = Enum.FillDirection.Horizontal
   var1085.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var1085.VerticalAlignment = Enum.VerticalAlignment.Center
   var1085.Spacing = var3.ButtonSpacing
   var1085.Padding = var3.ButtonPadding
   local var1098 = {}
   local var1102 = {}
   var1102.Size = var3.ConvertButtonSize
   var1102.Text = var1:getText("CharacterConversion", "Revert")
   var1102.OnClick = arg1.revertCharacters
   var1102.LayoutOrder = var4:getNextOrder()
   var1098.RevertButton = var2.createElement(var8, var1102)
   local var1115 = {}
   var1115.Size = var3.RevertButtonSize
   var1115.Text = var1:getText("CharacterConversion", "Convert")
   var1115.OnClick = arg1.convertCharacters
   var1115.LayoutOrder = var4:getNextOrder()
   var1098.ConvertButton = var2.createElement(var8, var1115)
   var1049.FooterButtons = var2.createElement(var7, var1085, var1098)
   return var2.createElement(var7, var1044, var1049)
end

local var1128 = {}
var1128.Analytics = var5.Analytics
var1128.Plugin = var5.Plugin
var1128.Localization = var5.Localization
var1128.Stylizer = var5.Stylizer
var12 = var5.withContext(var1128)(var12)
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
