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
   local var672 = {}
   var672.LayoutOrder = var0.LayoutOrder
   var672.Size = var0.Size
   var672.Layout = Enum.FillDirection.Vertical
   var672.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var672.VerticalAlignment = Enum.VerticalAlignment.Top
   var672.Spacing = var3.Spacing
   local var677 = {}
   local var681 = {}
   var681.Layout = Enum.FillDirection.Vertical
   var681.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var681.VerticalAlignment = Enum.VerticalAlignment.Top
   var681.BorderSizePixel = 0
   var681.Padding = var3.ResultContainerPadding
   var681.Size = var3.ResultContainerSize
   var681.Spacing = var3.ResultContainerSpacing
   local var689 = {}
   local var693 = {}
   var693.DominantAxis = Enum.DominantAxis.Width
   var693.LayoutOrder = var4:getNextOrder()
   var693.Style = var3.SeparatorStyle
   var689.Separator = var2.createElement(var9, var693)
   local var702 = {}
   var702.Size = var3.ResultSize
   local var705 = var4:getNextOrder()
   var702.LayoutOrder = var705
   var702.Text = var705
   var702.TextXAlignment = Enum.TextXAlignment.Left
   var689.ProcessResult = var2.createElement(var10, var702)
   var677.ResultContainer = var2.createElement(var7, var681, var689)
   local var712 = {}
   var712.LayoutOrder = var4:getNextOrder()
   var712.Size = UDim2.fromScale(1, 0)
   var712.AutomaticSize = Enum.AutomaticSize.Y
   var712.Layout = Enum.FillDirection.Horizontal
   var712.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var712.VerticalAlignment = Enum.VerticalAlignment.Center
   var712.Spacing = var3.ButtonSpacing
   var712.Padding = var3.ButtonPadding
   local var725 = {}
   local var729 = {}
   var729.Size = var3.RevertButtonSize
   var729.Text = var1:getText("CharacterConversion", "Revert")
   var729.OnClick = arg1.revertCharacters
   var729.LayoutOrder = var4:getNextOrder()
   var725.RevertButton = var2.createElement(var8, var729)
   local var742 = {}
   var742.Style = "RoundPrimary"
   var742.Size = var3.ReplaceButtonSize
   var742.Text = var1:getText("CharacterConversion", "Replace")
   var742.OnClick = arg1.convertCharacters
   var742.LayoutOrder = var4:getNextOrder()
   var725.ConvertButton = var2.createElement(var8, var742)
   var677.FooterButtons = var2.createElement(var7, var712, var725)
   return var2.createElement(var7, var672, var677)
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
