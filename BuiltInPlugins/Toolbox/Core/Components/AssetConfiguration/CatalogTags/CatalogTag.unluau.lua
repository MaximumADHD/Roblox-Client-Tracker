-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = var0.Core.Util
local var4 = require(var3.Constants)
local var5 = require(var3.Images)
local var6 = require(var1.Framework)
local var7 = var6.ContextServices
local var8 = var6.UI.RoundBox
local var9 = var6.UI.Container
local var10 = var2.PureComponent:extend("CatalogTag")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = {}
   local var370 = {}
   var370.TextColor3 = var1.tags.textColor
   var370.Text = var0.Text
   var370.TextSize = var4.FONT_SIZE_TITLE
   var370.Font = var4.FONT
   var370.Size = UDim2.new(0, var0.textSize.X, 0, var0.textSize.Y)
   var370.Position = UDim2.new(0, 3, 0, 3)
   var370.BackgroundTransparency = 1
   var2.Title = var2.createElement("TextLabel", var370)
   local var397 = {}
   var397.BackgroundTransparency = 1
   var397.Image = var5.CLOSE_BUTTON
   var397.Size = UDim2.new(0, 16, 0, 16)
   var397.ImageColor3 = var1.tags.textColor
   var397.Position = UDim2.new(0, 3 + var0.textSize.X + 3, 0.5, 65528)
   var2.Event.MouseButton1Click = var0.onClose
   var2.Close = var2.createElement("ImageButton", var397)
   local var427 = {}
   var427.Background = var8
   local var429 = "CatalogTag"
   var427.BackgroundStyle = var429
   var427.Position = var0.Position
   var427.Size = var0.Size
   var429 = var2
   return var2.createElement(var9, var427, var429)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = {}
   local var370 = {}
   var370.TextColor3 = var1.tags.textColor
   var370.Text = var0.Text
   var370.TextSize = var4.FONT_SIZE_TITLE
   var370.Font = var4.FONT
   var370.Size = UDim2.new(0, var0.textSize.X, 0, var0.textSize.Y)
   var370.Position = UDim2.new(0, 3, 0, 3)
   var370.BackgroundTransparency = 1
   var2.Title = var2.createElement("TextLabel", var370)
   local var397 = {}
   var397.BackgroundTransparency = 1
   var397.Image = var5.CLOSE_BUTTON
   var397.Size = UDim2.new(0, 16, 0, 16)
   var397.ImageColor3 = var1.tags.textColor
   var397.Position = UDim2.new(0, 3 + var0.textSize.X + 3, 0.5, 65528)
   var2.Event.MouseButton1Click = var0.onClose
   var2.Close = var2.createElement("ImageButton", var397)
   local var427 = {}
   var427.Background = var8
   local var429 = "CatalogTag"
   var427.BackgroundStyle = var429
   var427.Position = var0.Position
   var427.Size = var0.Size
   var429 = var2
   return var2.createElement(var9, var427, var429)
end

fun1 = var7.withContext
local var431 = {}
var431.Stylizer = var7.Stylizer
var10 = fun1(var431)(var10)
return var10
