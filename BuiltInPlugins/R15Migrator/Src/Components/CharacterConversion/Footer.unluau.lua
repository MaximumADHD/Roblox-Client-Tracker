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
   local var670 = {}
   var670.LayoutOrder = var0.LayoutOrder
   var670.Size = var0.Size
   var670.Layout = Enum.FillDirection.Vertical
   var670.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var670.VerticalAlignment = Enum.VerticalAlignment.Top
   var670.Spacing = var3.Spacing
   local var675 = {}
   local var679 = {}
   var679.Layout = Enum.FillDirection.Vertical
   var679.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var679.VerticalAlignment = Enum.VerticalAlignment.Top
   var679.BorderSizePixel = 0
   var679.Padding = var3.ResultContainerPadding
   var679.Size = var3.ResultContainerSize
   var679.Spacing = var3.ResultContainerSpacing
   local var687 = {}
   local var691 = {}
   var691.DominantAxis = Enum.DominantAxis.Width
   var691.LayoutOrder = var4:getNextOrder()
   var691.Style = var3.SeparatorStyle
   var687.Separator = var2.createElement(var9, var691)
   local var700 = {}
   var700.Size = var3.ResultSize
   local var703 = var4:getNextOrder()
   var700.LayoutOrder = var703
   var700.Text = var703
   var700.TextXAlignment = Enum.TextXAlignment.Left
   var687.ProcessResult = var2.createElement(var10, var700)
   var675.ResultContainer = var2.createElement(var7, var679, var687)
   local var710 = {}
   var710.LayoutOrder = var4:getNextOrder()
   var710.Size = UDim2.fromScale(1, 0)
   var710.AutomaticSize = Enum.AutomaticSize.Y
   var710.Layout = Enum.FillDirection.Horizontal
   var710.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var710.VerticalAlignment = Enum.VerticalAlignment.Center
   var710.Spacing = var3.ButtonSpacing
   var710.Padding = var3.ButtonPadding
   local var723 = {}
   local var727 = {}
   var727.Size = var3.ConvertButtonSize
   var727.Text = var1:getText("CharacterConversion", "Revert")
   var727.OnClick = arg1.revertCharacters
   var727.LayoutOrder = var4:getNextOrder()
   var723.RevertButton = var2.createElement(var8, var727)
   local var740 = {}
   var740.Size = var3.RevertButtonSize
   var740.Text = var1:getText("CharacterConversion", "Convert")
   var740.OnClick = arg1.convertCharacters
   var740.LayoutOrder = var4:getNextOrder()
   var723.ConvertButton = var2.createElement(var8, var740)
   var675.FooterButtons = var2.createElement(var7, var710, var723)
   return var2.createElement(var7, var670, var675)
end

local var753 = {}
var753.Analytics = var5.Analytics
var753.Plugin = var5.Plugin
var753.Localization = var5.Localization
var753.Stylizer = var5.Stylizer
var12 = var5.withContext(var753)(var12)
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
