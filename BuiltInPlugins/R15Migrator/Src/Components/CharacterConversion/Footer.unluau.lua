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
   local var679 = {}
   var679.LayoutOrder = var0.LayoutOrder
   var679.Size = var0.Size
   var679.Layout = Enum.FillDirection.Vertical
   var679.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var679.VerticalAlignment = Enum.VerticalAlignment.Top
   var679.Spacing = var3.Spacing
   local var684 = {}
   local var688 = {}
   var688.Layout = Enum.FillDirection.Vertical
   var688.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var688.VerticalAlignment = Enum.VerticalAlignment.Top
   var688.BorderSizePixel = 0
   var688.Padding = var3.ResultContainerPadding
   var688.Size = var3.ResultContainerSize
   var688.Spacing = var3.ResultContainerSpacing
   local var696 = {}
   local var700 = {}
   var700.DominantAxis = Enum.DominantAxis.Width
   var700.LayoutOrder = var4:getNextOrder()
   var700.Style = var3.SeparatorStyle
   var696.Separator = var2.createElement(var9, var700)
   local var709 = {}
   var709.Size = var3.ResultSize
   local var712 = var4:getNextOrder()
   var709.LayoutOrder = var712
   var709.Text = var712
   var709.TextXAlignment = Enum.TextXAlignment.Left
   var696.ProcessResult = var2.createElement(var10, var709)
   var684.ResultContainer = var2.createElement(var7, var688, var696)
   local var719 = {}
   var719.LayoutOrder = var4:getNextOrder()
   var719.Size = UDim2.fromScale(1, 0)
   var719.AutomaticSize = Enum.AutomaticSize.Y
   var719.Layout = Enum.FillDirection.Horizontal
   var719.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var719.VerticalAlignment = Enum.VerticalAlignment.Center
   var719.Spacing = var3.ButtonSpacing
   var719.Padding = var3.ButtonPadding
   local var732 = {}
   local var736 = {}
   var736.Size = var3.RevertButtonSize
   var736.Text = var1:getText("CharacterConversion", "Revert")
   var736.OnClick = arg1.revertCharacters
   var736.LayoutOrder = var4:getNextOrder()
   var732.RevertButton = var2.createElement(var8, var736)
   local var749 = {}
   var749.Style = "RoundPrimary"
   var749.Size = var3.ReplaceButtonSize
   var749.Text = var1:getText("CharacterConversion", "Replace")
   var749.OnClick = arg1.convertCharacters
   var749.LayoutOrder = var4:getNextOrder()
   var732.ConvertButton = var2.createElement(var8, var749)
   var684.FooterButtons = var2.createElement(var7, var719, var732)
   return var2.createElement(var7, var679, var684)
end

local var763 = {}
var763.Analytics = var5.Analytics
var763.Plugin = var5.Plugin
var763.Localization = var5.Localization
var763.Stylizer = var5.Stylizer
var12 = var5.withContext(var763)(var12)
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
