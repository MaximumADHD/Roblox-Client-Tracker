-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var1.Framework).UI.StyledDialog
local var5 = require(var0.Core.Util.Constants)
local var6 = var5.Dialog
local var7 = require(var0.Core.Util.ContextHelper).withLocalization
local var8 = var2.PureComponent:extend("PurchaseDialog")
function var8.render(arg1)
   return var7(function(arg1, arg2)
      return arg1:renderContent(nil, arg1, arg2)
   end)
end

local function fun2(arg1, arg2, arg3, arg4)
   local var0 = arg1.props
   local var1 = arg1.props.Stylizer
   local var59 = {}
   var59.AutomaticSize = Enum.AutomaticSize.Y
   var59.Title = var0.Localization:getText("Purchase", "BuyTitle")
   var59.MinContentSize = Vector2.new(var6.PROMPT_SIZE.X.Offset, var6.DETAILS_SIZE.Y.Offset)
   local var77 = {}
   var77.Key = false
   var77.Text = var0.Localization:getText("Purchase", "Cancel")
   local var84 = {}
   var84.Key = true
   var84.Text = var0.Localization:getText("Purchase", "Retry")
   var84.Style = "RoundPrimary"
   var59.Buttons = {}
   var59.OnButtonPressed = var0.OnButtonClicked
   var59.OnClose = var0.OnClose
   local var92 = {}
   local var96 = {}
   var96.FillDirection = Enum.FillDirection.Vertical
   var96.SortOrder = Enum.SortOrder.LayoutOrder
   var92.UIListLayout = var2.createElement("UIListLayout", var96)
   local var103 = {}
   var103.AutomaticSize = Enum.AutomaticSize.Y
   var103.Size = var6.HEADER_SIZE
   var103.BackgroundTransparency = 1
   var103.LayoutOrder = 1
   var103.Text = var0.Localization:getText("Purchase", "FailedHeader")
   var103.TextSize = var5.FONT_SIZE_TITLE
   var103.Font = var5.FONT_BOLD
   var103.TextXAlignment = Enum.TextXAlignment.Left
   var103.TextYAlignment = Enum.TextYAlignment.Top
   var103.TextColor3 = var1.purchaseDialog.promptText
   var92.Header = var2.createElement("TextLabel", var103)
   local var126 = {}
   var126.AutomaticSize = Enum.AutomaticSize.Y
   var126.Size = var6.DETAILS_SIZE
   var126.Position = var6.DETAILS_POSITION
   var126.AnchorPoint = Vector2.new(0, 0.5)
   var126.BackgroundTransparency = 1
   var126.LayoutOrder = 2
   local var141 = {}
   var141.name = var0.Name
   var126.Text = var0.Localization:getText("Purchase", "FailedDetails", var141)
   var126.TextSize = var5.FONT_SIZE_LARGE
   var126.Font = var5.FONT
   var126.TextXAlignment = Enum.TextXAlignment.Left
   var126.TextColor3 = var1.purchaseDialog.promptText
   var126.TextWrapped = true
   var92.Details = var2.createElement("TextLabel", var126)
   return var2.createElement(var4, var59, var92)
end

function var8.renderContent(arg1, arg2, arg3, arg4)
   local var0 = arg1.props
   local var1 = arg1.props.Stylizer
   local var59 = {}
   var59.AutomaticSize = Enum.AutomaticSize.Y
   var59.Title = var0.Localization:getText("Purchase", "BuyTitle")
   var59.MinContentSize = Vector2.new(var6.PROMPT_SIZE.X.Offset, var6.DETAILS_SIZE.Y.Offset)
   local var77 = {}
   var77.Key = false
   var77.Text = var0.Localization:getText("Purchase", "Cancel")
   local var84 = {}
   var84.Key = true
   var84.Text = var0.Localization:getText("Purchase", "Retry")
   var84.Style = "RoundPrimary"
   var59.Buttons = {}
   var59.OnButtonPressed = var0.OnButtonClicked
   var59.OnClose = var0.OnClose
   local var92 = {}
   local var96 = {}
   var96.FillDirection = Enum.FillDirection.Vertical
   var96.SortOrder = Enum.SortOrder.LayoutOrder
   var92.UIListLayout = var2.createElement("UIListLayout", var96)
   local var103 = {}
   var103.AutomaticSize = Enum.AutomaticSize.Y
   var103.Size = var6.HEADER_SIZE
   var103.BackgroundTransparency = 1
   var103.LayoutOrder = 1
   var103.Text = var0.Localization:getText("Purchase", "FailedHeader")
   var103.TextSize = var5.FONT_SIZE_TITLE
   var103.Font = var5.FONT_BOLD
   var103.TextXAlignment = Enum.TextXAlignment.Left
   var103.TextYAlignment = Enum.TextYAlignment.Top
   var103.TextColor3 = var1.purchaseDialog.promptText
   var92.Header = var2.createElement("TextLabel", var103)
   local var126 = {}
   var126.AutomaticSize = Enum.AutomaticSize.Y
   var126.Size = var6.DETAILS_SIZE
   var126.Position = var6.DETAILS_POSITION
   var126.AnchorPoint = Vector2.new(0, 0.5)
   var126.BackgroundTransparency = 1
   var126.LayoutOrder = 2
   local var141 = {}
   var141.name = var0.Name
   var126.Text = var0.Localization:getText("Purchase", "FailedDetails", var141)
   var126.TextSize = var5.FONT_SIZE_LARGE
   var126.Font = var5.FONT
   var126.TextXAlignment = Enum.TextXAlignment.Left
   var126.TextColor3 = var1.purchaseDialog.promptText
   var126.TextWrapped = true
   var92.Details = var2.createElement("TextLabel", var126)
   return var2.createElement(var4, var59, var92)
end

fun2 = var3.withContext
local var154 = {}
var154.Localization = var3.Localization
var154.Stylizer = var3.Stylizer
var8 = fun2(var154)(var8)
return var8
