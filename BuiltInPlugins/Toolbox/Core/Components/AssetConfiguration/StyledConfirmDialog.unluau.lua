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
   local var330 = {}
   local var332 = {}
   var332.Key = var14.Cancel
   var332.Text = var0.CancelText
   local var335 = {}
   var335.Key = var14.Accept
   var335.Text = var0.AcceptText
   var330.Buttons = {}
   if var0.Enabled == "AcceptText" then
      local var0 = false
   end
   var330.Enabled = true
   var330.FitTextButtonWidth = true
   var330.MinContentSize = var12
   var330.Modal = true
   var330.OnButtonPressed = arg1.onButtonPressed
   var330.OnClose = var0.OnCanceled
   var330.Style = "AssetConfigWarningDialog"
   var330.Title = var0.Title
   local var345 = {}
   local var349 = {}
   var349.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var349.Layout = Enum.FillDirection.Vertical
   var349.Spacing = 20
   var349.Size = UDim2.fromScale(1, 1)
   local var357 = {}
   local var361 = {}
   var361.AutomaticSize = Enum.AutomaticSize.Y
   var361.LayoutOrder = var1:getNextOrder()
   var361.Size = UDim2.new(1, 0, 0, 0)
   var361.Font = var11.FONT_BOLD
   var361.Text = var0.Heading
   var361.TextWrapped = true
   var361.TextXAlignment = Enum.TextXAlignment.Center
   var357.Heading = var3.createElement(var10, var361)
   local var379 = {}
   var379.AutomaticSize = Enum.AutomaticSize.Y
   var379.LayoutOrder = var1:getNextOrder()
   var379.Size = UDim2.new(1, 0, 0, 0)
   var379.Text = var0.Description
   var379.TextWrapped = true
   var379.TextXAlignment = Enum.TextXAlignment.Center
   var357.Description = var3.createElement(var10, var379)
   var345.Contents = var3.createElement(var7, var349, var357)
   return var3.createElement(var9, var330, var345)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var5.new()
   local var330 = {}
   local var332 = {}
   var332.Key = var14.Cancel
   var332.Text = var0.CancelText
   local var335 = {}
   var335.Key = var14.Accept
   var335.Text = var0.AcceptText
   var330.Buttons = {}
   if var0.Enabled == "AcceptText" then
      local var0 = false
   end
   var330.Enabled = true
   var330.FitTextButtonWidth = true
   var330.MinContentSize = var12
   var330.Modal = true
   var330.OnButtonPressed = arg1.onButtonPressed
   var330.OnClose = var0.OnCanceled
   var330.Style = "AssetConfigWarningDialog"
   var330.Title = var0.Title
   local var345 = {}
   local var349 = {}
   var349.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var349.Layout = Enum.FillDirection.Vertical
   var349.Spacing = 20
   var349.Size = UDim2.fromScale(1, 1)
   local var357 = {}
   local var361 = {}
   var361.AutomaticSize = Enum.AutomaticSize.Y
   var361.LayoutOrder = var1:getNextOrder()
   var361.Size = UDim2.new(1, 0, 0, 0)
   var361.Font = var11.FONT_BOLD
   var361.Text = var0.Heading
   var361.TextWrapped = true
   var361.TextXAlignment = Enum.TextXAlignment.Center
   var357.Heading = var3.createElement(var10, var361)
   local var379 = {}
   var379.AutomaticSize = Enum.AutomaticSize.Y
   var379.LayoutOrder = var1:getNextOrder()
   var379.Size = UDim2.new(1, 0, 0, 0)
   var379.Text = var0.Description
   var379.TextWrapped = true
   var379.TextXAlignment = Enum.TextXAlignment.Center
   var357.Description = var3.createElement(var10, var379)
   var345.Contents = var3.createElement(var7, var349, var357)
   return var3.createElement(var9, var330, var345)
end

fun13 = var4.withContext
local var394 = {}
var394.Stylizer = var4.Stylizer
var13 = fun13(var394)(var13)
return var13
