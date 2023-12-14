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
   local var290 = {}
   local var292 = {}
   var292.Key = var14.Cancel
   var292.Text = var0.CancelText
   local var295 = {}
   var295.Key = var14.Accept
   var295.Text = var0.AcceptText
   var290.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var290.Enabled = true
   var290.FitTextButtonWidth = true
   var290.MinContentSize = var12
   var290.Modal = true
   var290.OnButtonPressed = arg1.onButtonPressed
   var290.OnClose = var0.OnCanceled
   var290.Style = "AssetConfigWarningDialog"
   var290.Title = var0.Title
   local var305 = {}
   local var309 = {}
   var309.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var309.Layout = Enum.FillDirection.Horizontal
   var309.Spacing = 20
   var309.Size = UDim2.fromScale(1, 1)
   local var317 = {}
   local var321 = {}
   var321.LayoutOrder = 1
   var321.BackgroundTransparency = 1
   var321.Image = var11.WARNING_ICON
   var321.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var321.Size = UDim2.fromOffset(50, 50)
   var317.Icon = var3.createElement("ImageLabel", var321)
   local var335 = {}
   var335.Layout = Enum.FillDirection.Vertical
   var335.LayoutOrder = 2
   var335.Spacing = 5
   var335.Size = UDim2.new(1, 65486, 1, 0)
   var335.VerticalAlignment = Enum.VerticalAlignment.Top
   local var346 = {}
   local var350 = {}
   var350.AutomaticSize = Enum.AutomaticSize.Y
   var350.LayoutOrder = var1:getNextOrder()
   var350.Size = UDim2.new(1, 0, 0, 0)
   var350.Font = var10.FONT_BOLD
   var350.Text = var0.Heading
   var350.TextWrapped = true
   var350.TextXAlignment = Enum.TextXAlignment.Left
   var346.Heading = var3.createElement(var9, var350)
   local var368 = {}
   var368.AutomaticSize = Enum.AutomaticSize.Y
   var368.LayoutOrder = var1:getNextOrder()
   var368.Size = UDim2.new(1, 0, 0, 0)
   var368.Text = var0.Description
   var368.TextWrapped = true
   var368.TextXAlignment = Enum.TextXAlignment.Left
   var346.Description = var3.createElement(var9, var368)
   var317.RightContents = var3.createElement(var7, var335, var346)
   var305.Contents = var3.createElement(var7, var309, var317)
   return var3.createElement(var8, var290, var305)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var290 = {}
   local var292 = {}
   var292.Key = var14.Cancel
   var292.Text = var0.CancelText
   local var295 = {}
   var295.Key = var14.Accept
   var295.Text = var0.AcceptText
   var290.Buttons = {}
   if var0.Enabled == "Stylizer" then
      local var0 = false
   end
   var290.Enabled = true
   var290.FitTextButtonWidth = true
   var290.MinContentSize = var12
   var290.Modal = true
   var290.OnButtonPressed = arg1.onButtonPressed
   var290.OnClose = var0.OnCanceled
   var290.Style = "AssetConfigWarningDialog"
   var290.Title = var0.Title
   local var305 = {}
   local var309 = {}
   var309.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var309.Layout = Enum.FillDirection.Horizontal
   var309.Spacing = 20
   var309.Size = UDim2.fromScale(1, 1)
   local var317 = {}
   local var321 = {}
   var321.LayoutOrder = 1
   var321.BackgroundTransparency = 1
   var321.Image = var11.WARNING_ICON
   var321.ImageColor3 = var0.Stylizer.publishAsset.warningIconColor
   var321.Size = UDim2.fromOffset(50, 50)
   var317.Icon = var3.createElement("ImageLabel", var321)
   local var335 = {}
   var335.Layout = Enum.FillDirection.Vertical
   var335.LayoutOrder = 2
   var335.Spacing = 5
   var335.Size = UDim2.new(1, 65486, 1, 0)
   var335.VerticalAlignment = Enum.VerticalAlignment.Top
   local var346 = {}
   local var350 = {}
   var350.AutomaticSize = Enum.AutomaticSize.Y
   var350.LayoutOrder = var1:getNextOrder()
   var350.Size = UDim2.new(1, 0, 0, 0)
   var350.Font = var10.FONT_BOLD
   var350.Text = var0.Heading
   var350.TextWrapped = true
   var350.TextXAlignment = Enum.TextXAlignment.Left
   var346.Heading = var3.createElement(var9, var350)
   local var368 = {}
   var368.AutomaticSize = Enum.AutomaticSize.Y
   var368.LayoutOrder = var1:getNextOrder()
   var368.Size = UDim2.new(1, 0, 0, 0)
   var368.Text = var0.Description
   var368.TextWrapped = true
   var368.TextXAlignment = Enum.TextXAlignment.Left
   var346.Description = var3.createElement(var9, var368)
   var317.RightContents = var3.createElement(var7, var335, var346)
   var305.Contents = var3.createElement(var7, var309, var317)
   return var3.createElement(var8, var290, var305)
end

fun6 = var4.withContext
local var384 = {}
var384.Stylizer = var4.Stylizer
var13 = fun6(var384)(var13)
return var13
