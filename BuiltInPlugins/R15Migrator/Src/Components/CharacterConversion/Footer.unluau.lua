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
   local var663 = {}
   var663.LayoutOrder = var0.LayoutOrder
   var663.Size = var0.Size
   var663.Layout = Enum.FillDirection.Vertical
   var663.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var663.VerticalAlignment = Enum.VerticalAlignment.Top
   var663.Spacing = var3.Spacing
   local var668 = {}
   local var672 = {}
   var672.Layout = Enum.FillDirection.Vertical
   var672.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var672.VerticalAlignment = Enum.VerticalAlignment.Top
   var672.BorderSizePixel = 0
   var672.Padding = var3.ResultContainerPadding
   var672.Size = var3.ResultContainerSize
   var672.Spacing = var3.ResultContainerSpacing
   local var680 = {}
   local var684 = {}
   var684.DominantAxis = Enum.DominantAxis.Width
   var684.LayoutOrder = var4:getNextOrder()
   var684.Style = var3.SeparatorStyle
   var680.Separator = var2.createElement(var9, var684)
   local var693 = {}
   var693.Size = var3.ResultSize
   local var696 = var4:getNextOrder()
   var693.LayoutOrder = var696
   var693.Text = var696
   var693.TextXAlignment = Enum.TextXAlignment.Left
   var680.ProcessResult = var2.createElement(var10, var693)
   var668.ResultContainer = var2.createElement(var7, var672, var680)
   local var703 = {}
   var703.LayoutOrder = var4:getNextOrder()
   var703.Size = UDim2.fromScale(1, 0)
   var703.AutomaticSize = Enum.AutomaticSize.Y
   var703.Layout = Enum.FillDirection.Horizontal
   var703.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var703.VerticalAlignment = Enum.VerticalAlignment.Center
   var703.Spacing = var3.ButtonSpacing
   var703.Padding = var3.ButtonPadding
   local var716 = {}
   local var720 = {}
   var720.Size = var3.RevertButtonSize
   var720.Text = var1:getText("CharacterConversion", "Revert")
   var720.OnClick = arg1.revertCharacters
   var720.LayoutOrder = var4:getNextOrder()
   var716.RevertButton = var2.createElement(var8, var720)
   local var733 = {}
   var733.Style = "RoundPrimary"
   var733.Size = var3.ReplaceButtonSize
   var733.Text = var1:getText("CharacterConversion", "Replace")
   var733.OnClick = arg1.convertCharacters
   var733.LayoutOrder = var4:getNextOrder()
   var716.ConvertButton = var2.createElement(var8, var733)
   var668.FooterButtons = var2.createElement(var7, var703, var716)
   return var2.createElement(var7, var663, var668)
end

local var747 = {}
var747.Analytics = var5.Analytics
var747.Plugin = var5.Plugin
var747.Localization = var5.Localization
var747.Stylizer = var5.Stylizer
var12 = var5.withContext(var747)(var12)
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
