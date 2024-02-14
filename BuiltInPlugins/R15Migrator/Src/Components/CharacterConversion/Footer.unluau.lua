-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
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
   local var666 = {}
   var666.LayoutOrder = var0.LayoutOrder
   var666.Size = var0.Size
   var666.Layout = Enum.FillDirection.Vertical
   var666.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var666.VerticalAlignment = Enum.VerticalAlignment.Top
   var666.Spacing = var3.Spacing
   local var671 = {}
   local var675 = {}
   var675.Layout = Enum.FillDirection.Vertical
   var675.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var675.VerticalAlignment = Enum.VerticalAlignment.Top
   var675.BorderSizePixel = 0
   var675.Padding = var3.ResultContainerPadding
   var675.Size = var3.ResultContainerSize
   var675.Spacing = var3.ResultContainerSpacing
   local var683 = {}
   local var687 = {}
   var687.DominantAxis = Enum.DominantAxis.Width
   var687.LayoutOrder = var4:getNextOrder()
   var687.Style = var3.SeparatorStyle
   var683.Separator = var2.createElement(var9, var687)
   local var696 = {}
   var696.Size = var3.ResultSize
   local var699 = var4:getNextOrder()
   var696.LayoutOrder = var699
   var696.Text = var699
   var696.TextXAlignment = Enum.TextXAlignment.Left
   var683.ProcessResult = var2.createElement(var10, var696)
   var671.ResultContainer = var2.createElement(var7, var675, var683)
   local var706 = {}
   var706.LayoutOrder = var4:getNextOrder()
   var706.Size = UDim2.fromScale(1, 0)
   var706.AutomaticSize = Enum.AutomaticSize.Y
   var706.Layout = Enum.FillDirection.Horizontal
   var706.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var706.VerticalAlignment = Enum.VerticalAlignment.Center
   var706.Spacing = var3.ButtonSpacing
   var706.Padding = var3.ButtonPadding
   local var719 = {}
   local var723 = {}
   var723.Size = var3.ConvertButtonSize
   var723.Text = var1:getText("CharacterConversion", "Revert")
   var723.OnClick = arg1.revertCharacters
   var723.LayoutOrder = var4:getNextOrder()
   var719.RevertButton = var2.createElement(var8, var723)
   local var736 = {}
   var736.Size = var3.RevertButtonSize
   var736.Text = var1:getText("CharacterConversion", "Convert")
   var736.OnClick = arg1.convertCharacters
   var736.LayoutOrder = var4:getNextOrder()
   var719.ConvertButton = var2.createElement(var8, var736)
   var671.FooterButtons = var2.createElement(var7, var706, var719)
   return var2.createElement(var7, var666, var671)
end

local var749 = {}
var749.Analytics = var5.Analytics
var749.Plugin = var5.Plugin
var749.Localization = var5.Localization
var749.Stylizer = var5.Stylizer
var12 = var5.withContext(var749)(var12)
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
