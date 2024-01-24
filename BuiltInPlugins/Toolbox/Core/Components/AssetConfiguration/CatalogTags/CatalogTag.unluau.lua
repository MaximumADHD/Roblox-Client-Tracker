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
   local var376 = {}
   var376.TextColor3 = var1.tags.textColor
   var376.Text = var0.Text
   var376.TextSize = var4.FONT_SIZE_TITLE
   var376.Font = var4.FONT
   var376.Size = UDim2.new(0, var0.textSize.X, 0, var0.textSize.Y)
   var376.Position = UDim2.new(0, 3, 0, 3)
   var376.BackgroundTransparency = 1
   var2.Title = var2.createElement("TextLabel", var376)
   local var403 = {}
   var403.BackgroundTransparency = 1
   var403.Image = var5.CLOSE_BUTTON
   var403.Size = UDim2.new(0, 16, 0, 16)
   var403.ImageColor3 = var1.tags.textColor
   var403.Position = UDim2.new(0, 3 + var0.textSize.X + 3, 0.5, 65528)
   var2.Event.MouseButton1Click = var0.onClose
   var2.Close = var2.createElement("ImageButton", var403)
   local var433 = {}
   var433.Background = var8
   local var435 = "CatalogTag"
   var433.BackgroundStyle = var435
   var433.Position = var0.Position
   var433.Size = var0.Size
   var435 = var2
   return var2.createElement(var9, var433, var435)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = {}
   local var376 = {}
   var376.TextColor3 = var1.tags.textColor
   var376.Text = var0.Text
   var376.TextSize = var4.FONT_SIZE_TITLE
   var376.Font = var4.FONT
   var376.Size = UDim2.new(0, var0.textSize.X, 0, var0.textSize.Y)
   var376.Position = UDim2.new(0, 3, 0, 3)
   var376.BackgroundTransparency = 1
   var2.Title = var2.createElement("TextLabel", var376)
   local var403 = {}
   var403.BackgroundTransparency = 1
   var403.Image = var5.CLOSE_BUTTON
   var403.Size = UDim2.new(0, 16, 0, 16)
   var403.ImageColor3 = var1.tags.textColor
   var403.Position = UDim2.new(0, 3 + var0.textSize.X + 3, 0.5, 65528)
   var2.Event.MouseButton1Click = var0.onClose
   var2.Close = var2.createElement("ImageButton", var403)
   local var433 = {}
   var433.Background = var8
   local var435 = "CatalogTag"
   var433.BackgroundStyle = var435
   var433.Position = var0.Position
   var433.Size = var0.Size
   var435 = var2
   return var2.createElement(var9, var433, var435)
end

fun1 = var7.withContext
local var437 = {}
var437.Stylizer = var7.Stylizer
var10 = fun1(var437)(var10)
return var10
