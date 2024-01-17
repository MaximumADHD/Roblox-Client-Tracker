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
   local var1034 = {}
   var1034.LayoutOrder = var0.LayoutOrder
   var1034.Size = var0.Size
   var1034.Layout = Enum.FillDirection.Vertical
   var1034.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1034.VerticalAlignment = Enum.VerticalAlignment.Top
   var1034.Spacing = var3.Spacing
   local var1039 = {}
   local var1043 = {}
   var1043.Layout = Enum.FillDirection.Vertical
   var1043.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var1043.VerticalAlignment = Enum.VerticalAlignment.Top
   var1043.BackgroundColor3 = var3.ProcessResultBackgroundColor
   var1043.BorderSizePixel = 0
   var1043.Padding = var3.ResultContainerPadding
   var1043.Size = var3.ResultContainerSize
   var1043.Spacing = var3.ResultContainerSpacing
   local var1052 = {}
   local var1056 = {}
   var1056.DominantAxis = Enum.DominantAxis.Width
   var1056.LayoutOrder = var4:getNextOrder()
   var1056.Style = var3.SeparatorStyle
   var1052.Separator = var2.createElement(var9, var1056)
   local var1065 = {}
   var1065.Size = var3.ResultSize
   local var1068 = var4:getNextOrder()
   var1065.LayoutOrder = var1068
   var1065.Text = var1068
   var1065.TextXAlignment = Enum.TextXAlignment.Left
   var1052.ProcessResult = var2.createElement(var10, var1065)
   var1039.ResultContainer = var2.createElement(var7, var1043, var1052)
   local var1075 = {}
   var1075.LayoutOrder = var4:getNextOrder()
   var1075.Size = UDim2.fromScale(1, 0)
   var1075.AutomaticSize = Enum.AutomaticSize.Y
   var1075.Layout = Enum.FillDirection.Horizontal
   var1075.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var1075.VerticalAlignment = Enum.VerticalAlignment.Center
   var1075.Spacing = var3.ButtonSpacing
   var1075.Padding = var3.ButtonPadding
   local var1088 = {}
   local var1092 = {}
   var1092.Size = var3.ConvertButtonSize
   var1092.Text = var1:getText("CharacterConversion", "Revert")
   var1092.OnClick = arg1.revertCharacters
   var1092.LayoutOrder = var4:getNextOrder()
   var1088.RevertButton = var2.createElement(var8, var1092)
   local var1105 = {}
   var1105.Size = var3.RevertButtonSize
   var1105.Text = var1:getText("CharacterConversion", "Convert")
   var1105.OnClick = arg1.convertCharacters
   var1105.LayoutOrder = var4:getNextOrder()
   var1088.ConvertButton = var2.createElement(var8, var1105)
   var1039.FooterButtons = var2.createElement(var7, var1075, var1088)
   return var2.createElement(var7, var1034, var1039)
end

local var1118 = {}
var1118.Analytics = var5.Analytics
var1118.Plugin = var5.Plugin
var1118.Localization = var5.Localization
var1118.Stylizer = var5.Stylizer
var12 = var5.withContext(var1118)(var12)
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
