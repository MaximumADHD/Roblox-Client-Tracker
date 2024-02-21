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

local function fun13(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var329 = {}
   local var331 = {}
   var331.Key = var14.Cancel
   var331.Text = var0.CancelText
   local var334 = {}
   var334.Key = var14.Accept
   var334.Text = var0.AcceptText
   var329.Buttons = {}
   if var0.Enabled == "AcceptText" then
      local var0 = false
   end
   var329.Enabled = true
   var329.FitTextButtonWidth = true
   var329.MinContentSize = var12
   var329.Modal = true
   var329.OnButtonPressed = arg1.onButtonPressed
   var329.OnClose = var0.OnCanceled
   var329.Style = "AssetConfigWarningDialog"
   var329.Title = var0.Title
   local var344 = {}
   local var348 = {}
   var348.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var348.Layout = Enum.FillDirection.Vertical
   var348.Spacing = 20
   var348.Size = UDim2.fromScale(1, 1)
   local var356 = {}
   local var360 = {}
   var360.AutomaticSize = Enum.AutomaticSize.Y
   var360.LayoutOrder = var1:getNextOrder()
   var360.Size = UDim2.new(1, 0, 0, 0)
   var360.Font = var11.FONT_BOLD
   var360.Text = var0.Heading
   var360.TextWrapped = true
   var360.TextXAlignment = Enum.TextXAlignment.Center
   var356.Heading = var3.createElement(var10, var360)
   local var378 = {}
   var378.AutomaticSize = Enum.AutomaticSize.Y
   var378.LayoutOrder = var1:getNextOrder()
   var378.Size = UDim2.new(1, 0, 0, 0)
   var378.Text = var0.Description
   var378.TextWrapped = true
   var378.TextXAlignment = Enum.TextXAlignment.Center
   var356.Description = var3.createElement(var10, var378)
   var344.Contents = var3.createElement(var7, var348, var356)
   return var3.createElement(var9, var329, var344)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var329 = {}
   local var331 = {}
   var331.Key = var14.Cancel
   var331.Text = var0.CancelText
   local var334 = {}
   var334.Key = var14.Accept
   var334.Text = var0.AcceptText
   var329.Buttons = {}
   if var0.Enabled == "AcceptText" then
      local var0 = false
   end
   var329.Enabled = true
   var329.FitTextButtonWidth = true
   var329.MinContentSize = var12
   var329.Modal = true
   var329.OnButtonPressed = arg1.onButtonPressed
   var329.OnClose = var0.OnCanceled
   var329.Style = "AssetConfigWarningDialog"
   var329.Title = var0.Title
   local var344 = {}
   local var348 = {}
   var348.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var348.Layout = Enum.FillDirection.Vertical
   var348.Spacing = 20
   var348.Size = UDim2.fromScale(1, 1)
   local var356 = {}
   local var360 = {}
   var360.AutomaticSize = Enum.AutomaticSize.Y
   var360.LayoutOrder = var1:getNextOrder()
   var360.Size = UDim2.new(1, 0, 0, 0)
   var360.Font = var11.FONT_BOLD
   var360.Text = var0.Heading
   var360.TextWrapped = true
   var360.TextXAlignment = Enum.TextXAlignment.Center
   var356.Heading = var3.createElement(var10, var360)
   local var378 = {}
   var378.AutomaticSize = Enum.AutomaticSize.Y
   var378.LayoutOrder = var1:getNextOrder()
   var378.Size = UDim2.new(1, 0, 0, 0)
   var378.Text = var0.Description
   var378.TextWrapped = true
   var378.TextXAlignment = Enum.TextXAlignment.Center
   var356.Description = var3.createElement(var10, var378)
   var344.Contents = var3.createElement(var7, var348, var356)
   return var3.createElement(var9, var329, var344)
end

fun13 = var4.withContext
local var393 = {}
var393.Stylizer = var4.Stylizer
var13 = fun13(var393)(var13)
return var13
