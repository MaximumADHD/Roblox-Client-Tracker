-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Framework)
local var3 = require(var1.Roact)
local var4 = var2.ContextServices
local var5 = var2.Util.LayoutOrderIterator
local var6 = var2.UI
local var7 = var6.Pane
local var8 = var6.Image
local var9 = var6.StyledDialog
local var10 = var6.TextLabel
local var11 = require(var0.Core.Util.Constants)
local var12 = Vector2.new(400, 70)
local var13 = var3.PureComponent:extend("StyledConfirmDialog")
local var14 = {}
var14.Accept = true
var14.Cancel = false
function var13.init(arg1)
   function arg1.onButtonPressed(arg1)
      local var0 = arg1.props
      if arg1 == "OnAccepted" then
         var0.OnAccepted()
      end
      var0.OnCanceled()
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var59 = {}
   local var61 = {}
   var61.Key = var14.Cancel
   var61.Text = var0.CancelText
   local var64 = {}
   var64.Key = var14.Accept
   var64.Text = var0.AcceptText
   var59.Buttons = {}
   if var0.Enabled == "AcceptText" then
      local var0 = false
   end
   var59.Enabled = true
   var59.FitTextButtonWidth = true
   var59.MinContentSize = var12
   var59.Modal = true
   var59.OnButtonPressed = arg1.onButtonPressed
   var59.OnClose = var0.OnCanceled
   var59.Style = "AssetConfigWarningDialog"
   var59.Title = var0.Title
   local var74 = {}
   local var78 = {}
   var78.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var78.Layout = Enum.FillDirection.Vertical
   var78.Spacing = 20
   var78.Size = UDim2.fromScale(1, 1)
   local var86 = {}
   local var90 = {}
   var90.AutomaticSize = Enum.AutomaticSize.Y
   var90.LayoutOrder = var1:getNextOrder()
   var90.Size = UDim2.new(1, 0, 0, 0)
   var90.Font = var11.FONT_BOLD
   var90.Text = var0.Heading
   var90.TextWrapped = true
   var90.TextXAlignment = Enum.TextXAlignment.Center
   var86.Heading = var3.createElement(var10, var90)
   local var108 = {}
   var108.AutomaticSize = Enum.AutomaticSize.Y
   var108.LayoutOrder = var1:getNextOrder()
   var108.Size = UDim2.new(1, 0, 0, 0)
   var108.Text = var0.Description
   var108.TextWrapped = true
   var108.TextXAlignment = Enum.TextXAlignment.Center
   var86.Description = var3.createElement(var10, var108)
   var74.Contents = var3.createElement(var7, var78, var86)
   return var3.createElement(var9, var59, var74)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var59 = {}
   local var61 = {}
   var61.Key = var14.Cancel
   var61.Text = var0.CancelText
   local var64 = {}
   var64.Key = var14.Accept
   var64.Text = var0.AcceptText
   var59.Buttons = {}
   if var0.Enabled == "AcceptText" then
      local var0 = false
   end
   var59.Enabled = true
   var59.FitTextButtonWidth = true
   var59.MinContentSize = var12
   var59.Modal = true
   var59.OnButtonPressed = arg1.onButtonPressed
   var59.OnClose = var0.OnCanceled
   var59.Style = "AssetConfigWarningDialog"
   var59.Title = var0.Title
   local var74 = {}
   local var78 = {}
   var78.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var78.Layout = Enum.FillDirection.Vertical
   var78.Spacing = 20
   var78.Size = UDim2.fromScale(1, 1)
   local var86 = {}
   local var90 = {}
   var90.AutomaticSize = Enum.AutomaticSize.Y
   var90.LayoutOrder = var1:getNextOrder()
   var90.Size = UDim2.new(1, 0, 0, 0)
   var90.Font = var11.FONT_BOLD
   var90.Text = var0.Heading
   var90.TextWrapped = true
   var90.TextXAlignment = Enum.TextXAlignment.Center
   var86.Heading = var3.createElement(var10, var90)
   local var108 = {}
   var108.AutomaticSize = Enum.AutomaticSize.Y
   var108.LayoutOrder = var1:getNextOrder()
   var108.Size = UDim2.new(1, 0, 0, 0)
   var108.Text = var0.Description
   var108.TextWrapped = true
   var108.TextXAlignment = Enum.TextXAlignment.Center
   var86.Description = var3.createElement(var10, var108)
   var74.Contents = var3.createElement(var7, var78, var86)
   return var3.createElement(var9, var59, var74)
end

fun2 = var4.withContext
local var123 = {}
var123.Stylizer = var4.Stylizer
var13 = fun2(var123)(var13)
return var13
