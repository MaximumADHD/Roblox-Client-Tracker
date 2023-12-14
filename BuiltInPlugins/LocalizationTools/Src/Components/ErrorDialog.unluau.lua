-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Button
local var6 = var4.HoverArea
local var7 = var4.TextLabel
local var8 = var4.Pane
local var9 = var1.PureComponent:extend("ErrorDialog")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var32 = {}
   var32.AutomaticSize = Enum.AutomaticSize.Y
   var32.Layout = Enum.FillDirection.Vertical
   var32.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var32.BackgroundTransparency = 0
   var32.BackgroundColor3 = var1.MainBackground
   var32.Size = UDim2.new(1, 0, 1, 0)
   var32.Spacing = 15
   local var45 = {}
   local var49 = {}
   var49.TextXAlignment = Enum.TextXAlignment.Left
   var49.BackgroundTransparency = 1
   var49.Text = var0.Text
   var49.Size = UDim2.new(0, 400, 0, 0)
   var49.AutomaticSize = Enum.AutomaticSize.Y
   var49.TextWrapped = true
   var49.TextColor3 = var1.ErrorText
   var49.LayoutOrder = 1
   var45.Message = var1.createElement(var7, var49)
   local var66 = {}
   var66.LayoutOrder = 2
   var66.OnClick = var0.OkCallback
   var66.Position = UDim2.new(0.5, 0.5, 0, 0)
   var66.Size = UDim2.new(0, var1.ButtonWidth, 0, var1.ButtonHeight)
   var66.Style = "PrimeTextButton"
   var66.Text = var0.Localization:getText("UploadDialogContent", "ConfirmButton")
   local var89 = {}
   var89.Cursor = "PointingHand"
   local var2 = var1.createElement(var6, var89)
   var45.Confirm = var1.createElement(var5, var66, {})
   return var1.createElement(var8, var32, var45)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var32 = {}
   var32.AutomaticSize = Enum.AutomaticSize.Y
   var32.Layout = Enum.FillDirection.Vertical
   var32.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var32.BackgroundTransparency = 0
   var32.BackgroundColor3 = var1.MainBackground
   var32.Size = UDim2.new(1, 0, 1, 0)
   var32.Spacing = 15
   local var45 = {}
   local var49 = {}
   var49.TextXAlignment = Enum.TextXAlignment.Left
   var49.BackgroundTransparency = 1
   var49.Text = var0.Text
   var49.Size = UDim2.new(0, 400, 0, 0)
   var49.AutomaticSize = Enum.AutomaticSize.Y
   var49.TextWrapped = true
   var49.TextColor3 = var1.ErrorText
   var49.LayoutOrder = 1
   var45.Message = var1.createElement(var7, var49)
   local var66 = {}
   var66.LayoutOrder = 2
   var66.OnClick = var0.OkCallback
   var66.Position = UDim2.new(0.5, 0.5, 0, 0)
   var66.Size = UDim2.new(0, var1.ButtonWidth, 0, var1.ButtonHeight)
   var66.Style = "PrimeTextButton"
   var66.Text = var0.Localization:getText("UploadDialogContent", "ConfirmButton")
   local var89 = {}
   var89.Cursor = "PointingHand"
   local var2 = var1.createElement(var6, var89)
   var45.Confirm = var1.createElement(var5, var66, {})
   return var1.createElement(var8, var32, var45)
end

fun0 = var3.withContext
local var94 = {}
var94.Stylizer = var3.Stylizer
var94.Localization = var3.Localization
var9 = fun0(var94)(var9)
return var9
