-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Framework)
local var3 = require(var1.Roact)
local var4 = var2.ContextServices
local var5 = var2.Util.LayoutOrderIterator
local var6 = var2.UI
local var7 = var6.Pane
local var8 = var6.StyledDialog
local var9 = var6.TextLabel
local var10 = require(var0.Core.Util.Constants)
local var11 = require(var0.Core.Util.Images)
local var12 = Vector2.new(400, 70)
local var13 = var3.PureComponent:extend("WarningDialog")
local var14 = {}
var14.Accept = true
var14.Cancel = false
function var13.init(arg1)
   function arg1.onButtonPressed(arg1)
      local var0 = arg1.props
      if arg1 == "ConfirmationKey" then
         var0.OnAccepted(var0.ConfirmationKey)
      end
      var0.OnCanceled()
   end
   
end

local function fun6(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var304 = {}
   local var306 = {}
   var306.Key = var14.Cancel
   var306.Text = var0.CancelText
   local var309 = {}
   var309.Key = var14.Accept
   var309.Text = var0.AcceptText
   var304.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var304.Enabled = true
   var304.FitTextButtonWidth = true
   var304.MinContentSize = var12
   var304.Modal = true
   var304.OnButtonPressed = arg1.onButtonPressed
   var304.OnClose = var0.OnCanceled
   var304.Style = "AssetConfigWarningDialog"
   var304.Title = var0.Title
   local var319 = {}
   local var323 = {}
   var323.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var323.Layout = Enum.FillDirection.Horizontal
   var323.Spacing = 20
   var323.Size = UDim2.fromScale(1, 1)
   local var331 = {}
   local var335 = {}
   var335.LayoutOrder = 1
   var335.BackgroundTransparency = 1
   var335.Image = var11.WARNING_ICON
   var335.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var335.Size = UDim2.fromOffset(50, 50)
   var331.Icon = var3.createElement("ImageLabel", var335)
   local var349 = {}
   var349.Layout = Enum.FillDirection.Vertical
   var349.LayoutOrder = 2
   var349.Spacing = 5
   var349.Size = UDim2.new(1, 65486, 1, 0)
   var349.VerticalAlignment = Enum.VerticalAlignment.Top
   local var360 = {}
   local var364 = {}
   var364.AutomaticSize = Enum.AutomaticSize.Y
   var364.LayoutOrder = var1:getNextOrder()
   var364.Size = UDim2.new(1, 0, 0, 0)
   var364.Font = var10.FONT_BOLD
   var364.Text = var0.Heading
   var364.TextWrapped = true
   var364.TextXAlignment = Enum.TextXAlignment.Left
   var360.Heading = var3.createElement(var9, var364)
   local var382 = {}
   var382.AutomaticSize = Enum.AutomaticSize.Y
   var382.LayoutOrder = var1:getNextOrder()
   var382.Size = UDim2.new(1, 0, 0, 0)
   var382.Text = var0.Description
   var382.TextWrapped = true
   var382.TextXAlignment = Enum.TextXAlignment.Left
   var360.Description = var3.createElement(var9, var382)
   var331.RightContents = var3.createElement(var7, var349, var360)
   var319.Contents = var3.createElement(var7, var323, var331)
   return var3.createElement(var8, var304, var319)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var304 = {}
   local var306 = {}
   var306.Key = var14.Cancel
   var306.Text = var0.CancelText
   local var309 = {}
   var309.Key = var14.Accept
   var309.Text = var0.AcceptText
   var304.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var304.Enabled = true
   var304.FitTextButtonWidth = true
   var304.MinContentSize = var12
   var304.Modal = true
   var304.OnButtonPressed = arg1.onButtonPressed
   var304.OnClose = var0.OnCanceled
   var304.Style = "AssetConfigWarningDialog"
   var304.Title = var0.Title
   local var319 = {}
   local var323 = {}
   var323.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var323.Layout = Enum.FillDirection.Horizontal
   var323.Spacing = 20
   var323.Size = UDim2.fromScale(1, 1)
   local var331 = {}
   local var335 = {}
   var335.LayoutOrder = 1
   var335.BackgroundTransparency = 1
   var335.Image = var11.WARNING_ICON
   var335.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var335.Size = UDim2.fromOffset(50, 50)
   var331.Icon = var3.createElement("ImageLabel", var335)
   local var349 = {}
   var349.Layout = Enum.FillDirection.Vertical
   var349.LayoutOrder = 2
   var349.Spacing = 5
   var349.Size = UDim2.new(1, 65486, 1, 0)
   var349.VerticalAlignment = Enum.VerticalAlignment.Top
   local var360 = {}
   local var364 = {}
   var364.AutomaticSize = Enum.AutomaticSize.Y
   var364.LayoutOrder = var1:getNextOrder()
   var364.Size = UDim2.new(1, 0, 0, 0)
   var364.Font = var10.FONT_BOLD
   var364.Text = var0.Heading
   var364.TextWrapped = true
   var364.TextXAlignment = Enum.TextXAlignment.Left
   var360.Heading = var3.createElement(var9, var364)
   local var382 = {}
   var382.AutomaticSize = Enum.AutomaticSize.Y
   var382.LayoutOrder = var1:getNextOrder()
   var382.Size = UDim2.new(1, 0, 0, 0)
   var382.Text = var0.Description
   var382.TextWrapped = true
   var382.TextXAlignment = Enum.TextXAlignment.Left
   var360.Description = var3.createElement(var9, var382)
   var331.RightContents = var3.createElement(var7, var349, var360)
   var319.Contents = var3.createElement(var7, var323, var331)
   return var3.createElement(var8, var304, var319)
end

fun6 = var4.withContext
local var398 = {}
var398.Stylizer = var4.Stylizer
var13 = fun6(var398)(var13)
return var13
