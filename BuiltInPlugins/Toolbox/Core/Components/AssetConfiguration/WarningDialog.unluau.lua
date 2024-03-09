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
   local var320 = {}
   local var322 = {}
   var322.Key = var14.Cancel
   var322.Text = var0.CancelText
   local var325 = {}
   var325.Key = var14.Accept
   var325.Text = var0.AcceptText
   var320.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var320.Enabled = true
   var320.FitTextButtonWidth = true
   var320.MinContentSize = var12
   var320.Modal = true
   var320.OnButtonPressed = arg1.onButtonPressed
   var320.OnClose = var0.OnCanceled
   var320.Style = "AssetConfigWarningDialog"
   var320.Title = var0.Title
   local var335 = {}
   local var339 = {}
   var339.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var339.Layout = Enum.FillDirection.Horizontal
   var339.Spacing = 20
   var339.Size = UDim2.fromScale(1, 1)
   local var347 = {}
   local var351 = {}
   var351.LayoutOrder = 1
   var351.BackgroundTransparency = 1
   var351.Image = var11.WARNING_ICON
   var351.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var351.Size = UDim2.fromOffset(50, 50)
   var347.Icon = var3.createElement("ImageLabel", var351)
   local var365 = {}
   var365.Layout = Enum.FillDirection.Vertical
   var365.LayoutOrder = 2
   var365.Spacing = 5
   var365.Size = UDim2.new(1, 65486, 1, 0)
   var365.VerticalAlignment = Enum.VerticalAlignment.Top
   local var376 = {}
   local var380 = {}
   var380.AutomaticSize = Enum.AutomaticSize.Y
   var380.LayoutOrder = var1:getNextOrder()
   var380.Size = UDim2.new(1, 0, 0, 0)
   var380.Font = var10.FONT_BOLD
   var380.Text = var0.Heading
   var380.TextWrapped = true
   var380.TextXAlignment = Enum.TextXAlignment.Left
   var376.Heading = var3.createElement(var9, var380)
   local var398 = {}
   var398.AutomaticSize = Enum.AutomaticSize.Y
   var398.LayoutOrder = var1:getNextOrder()
   var398.Size = UDim2.new(1, 0, 0, 0)
   var398.Text = var0.Description
   var398.TextWrapped = true
   var398.TextXAlignment = Enum.TextXAlignment.Left
   var376.Description = var3.createElement(var9, var398)
   var347.RightContents = var3.createElement(var7, var365, var376)
   var335.Contents = var3.createElement(var7, var339, var347)
   return var3.createElement(var8, var320, var335)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var320 = {}
   local var322 = {}
   var322.Key = var14.Cancel
   var322.Text = var0.CancelText
   local var325 = {}
   var325.Key = var14.Accept
   var325.Text = var0.AcceptText
   var320.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var320.Enabled = true
   var320.FitTextButtonWidth = true
   var320.MinContentSize = var12
   var320.Modal = true
   var320.OnButtonPressed = arg1.onButtonPressed
   var320.OnClose = var0.OnCanceled
   var320.Style = "AssetConfigWarningDialog"
   var320.Title = var0.Title
   local var335 = {}
   local var339 = {}
   var339.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var339.Layout = Enum.FillDirection.Horizontal
   var339.Spacing = 20
   var339.Size = UDim2.fromScale(1, 1)
   local var347 = {}
   local var351 = {}
   var351.LayoutOrder = 1
   var351.BackgroundTransparency = 1
   var351.Image = var11.WARNING_ICON
   var351.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var351.Size = UDim2.fromOffset(50, 50)
   var347.Icon = var3.createElement("ImageLabel", var351)
   local var365 = {}
   var365.Layout = Enum.FillDirection.Vertical
   var365.LayoutOrder = 2
   var365.Spacing = 5
   var365.Size = UDim2.new(1, 65486, 1, 0)
   var365.VerticalAlignment = Enum.VerticalAlignment.Top
   local var376 = {}
   local var380 = {}
   var380.AutomaticSize = Enum.AutomaticSize.Y
   var380.LayoutOrder = var1:getNextOrder()
   var380.Size = UDim2.new(1, 0, 0, 0)
   var380.Font = var10.FONT_BOLD
   var380.Text = var0.Heading
   var380.TextWrapped = true
   var380.TextXAlignment = Enum.TextXAlignment.Left
   var376.Heading = var3.createElement(var9, var380)
   local var398 = {}
   var398.AutomaticSize = Enum.AutomaticSize.Y
   var398.LayoutOrder = var1:getNextOrder()
   var398.Size = UDim2.new(1, 0, 0, 0)
   var398.Text = var0.Description
   var398.TextWrapped = true
   var398.TextXAlignment = Enum.TextXAlignment.Left
   var376.Description = var3.createElement(var9, var398)
   var347.RightContents = var3.createElement(var7, var365, var376)
   var335.Contents = var3.createElement(var7, var339, var347)
   return var3.createElement(var8, var320, var335)
end

fun6 = var4.withContext
local var414 = {}
var414.Stylizer = var4.Stylizer
var13 = fun6(var414)(var13)
return var13
