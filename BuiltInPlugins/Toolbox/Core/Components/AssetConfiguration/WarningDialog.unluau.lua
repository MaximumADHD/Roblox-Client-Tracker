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
   local var310 = {}
   local var312 = {}
   var312.Key = var14.Cancel
   var312.Text = var0.CancelText
   local var315 = {}
   var315.Key = var14.Accept
   var315.Text = var0.AcceptText
   var310.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var310.Enabled = true
   var310.FitTextButtonWidth = true
   var310.MinContentSize = var12
   var310.Modal = true
   var310.OnButtonPressed = arg1.onButtonPressed
   var310.OnClose = var0.OnCanceled
   var310.Style = "AssetConfigWarningDialog"
   var310.Title = var0.Title
   local var325 = {}
   local var329 = {}
   var329.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var329.Layout = Enum.FillDirection.Horizontal
   var329.Spacing = 20
   var329.Size = UDim2.fromScale(1, 1)
   local var337 = {}
   local var341 = {}
   var341.LayoutOrder = 1
   var341.BackgroundTransparency = 1
   var341.Image = var11.WARNING_ICON
   var341.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var341.Size = UDim2.fromOffset(50, 50)
   var337.Icon = var3.createElement("ImageLabel", var341)
   local var355 = {}
   var355.Layout = Enum.FillDirection.Vertical
   var355.LayoutOrder = 2
   var355.Spacing = 5
   var355.Size = UDim2.new(1, 65486, 1, 0)
   var355.VerticalAlignment = Enum.VerticalAlignment.Top
   local var366 = {}
   local var370 = {}
   var370.AutomaticSize = Enum.AutomaticSize.Y
   var370.LayoutOrder = var1:getNextOrder()
   var370.Size = UDim2.new(1, 0, 0, 0)
   var370.Font = var10.FONT_BOLD
   var370.Text = var0.Heading
   var370.TextWrapped = true
   var370.TextXAlignment = Enum.TextXAlignment.Left
   var366.Heading = var3.createElement(var9, var370)
   local var388 = {}
   var388.AutomaticSize = Enum.AutomaticSize.Y
   var388.LayoutOrder = var1:getNextOrder()
   var388.Size = UDim2.new(1, 0, 0, 0)
   var388.Text = var0.Description
   var388.TextWrapped = true
   var388.TextXAlignment = Enum.TextXAlignment.Left
   var366.Description = var3.createElement(var9, var388)
   var337.RightContents = var3.createElement(var7, var355, var366)
   var325.Contents = var3.createElement(var7, var329, var337)
   return var3.createElement(var8, var310, var325)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var310 = {}
   local var312 = {}
   var312.Key = var14.Cancel
   var312.Text = var0.CancelText
   local var315 = {}
   var315.Key = var14.Accept
   var315.Text = var0.AcceptText
   var310.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var310.Enabled = true
   var310.FitTextButtonWidth = true
   var310.MinContentSize = var12
   var310.Modal = true
   var310.OnButtonPressed = arg1.onButtonPressed
   var310.OnClose = var0.OnCanceled
   var310.Style = "AssetConfigWarningDialog"
   var310.Title = var0.Title
   local var325 = {}
   local var329 = {}
   var329.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var329.Layout = Enum.FillDirection.Horizontal
   var329.Spacing = 20
   var329.Size = UDim2.fromScale(1, 1)
   local var337 = {}
   local var341 = {}
   var341.LayoutOrder = 1
   var341.BackgroundTransparency = 1
   var341.Image = var11.WARNING_ICON
   var341.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var341.Size = UDim2.fromOffset(50, 50)
   var337.Icon = var3.createElement("ImageLabel", var341)
   local var355 = {}
   var355.Layout = Enum.FillDirection.Vertical
   var355.LayoutOrder = 2
   var355.Spacing = 5
   var355.Size = UDim2.new(1, 65486, 1, 0)
   var355.VerticalAlignment = Enum.VerticalAlignment.Top
   local var366 = {}
   local var370 = {}
   var370.AutomaticSize = Enum.AutomaticSize.Y
   var370.LayoutOrder = var1:getNextOrder()
   var370.Size = UDim2.new(1, 0, 0, 0)
   var370.Font = var10.FONT_BOLD
   var370.Text = var0.Heading
   var370.TextWrapped = true
   var370.TextXAlignment = Enum.TextXAlignment.Left
   var366.Heading = var3.createElement(var9, var370)
   local var388 = {}
   var388.AutomaticSize = Enum.AutomaticSize.Y
   var388.LayoutOrder = var1:getNextOrder()
   var388.Size = UDim2.new(1, 0, 0, 0)
   var388.Text = var0.Description
   var388.TextWrapped = true
   var388.TextXAlignment = Enum.TextXAlignment.Left
   var366.Description = var3.createElement(var9, var388)
   var337.RightContents = var3.createElement(var7, var355, var366)
   var325.Contents = var3.createElement(var7, var329, var337)
   return var3.createElement(var8, var310, var325)
end

fun6 = var4.withContext
local var404 = {}
var404.Stylizer = var4.Stylizer
var13 = fun6(var404)(var13)
return var13
