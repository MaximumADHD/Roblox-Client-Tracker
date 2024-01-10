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
   local var381 = {}
   var381.TextColor3 = var1.tags.textColor
   var381.Text = var0.Text
   var381.TextSize = var4.FONT_SIZE_TITLE
   var381.Font = var4.FONT
   var381.Size = UDim2.new(0, var0.textSize.X, 0, var0.textSize.Y)
   var381.Position = UDim2.new(0, 3, 0, 3)
   var381.BackgroundTransparency = 1
   var2.Title = var2.createElement("TextLabel", var381)
   local var408 = {}
   var408.BackgroundTransparency = 1
   var408.Image = var5.CLOSE_BUTTON
   var408.Size = UDim2.new(0, 16, 0, 16)
   var408.ImageColor3 = var1.tags.textColor
   var408.Position = UDim2.new(0, 3 + var0.textSize.X + 3, 0.5, 65528)
   var2.Event.MouseButton1Click = var0.onClose
   var2.Close = var2.createElement("ImageButton", var408)
   local var438 = {}
   var438.Background = var8
   local var440 = "CatalogTag"
   var438.BackgroundStyle = var440
   var438.Position = var0.Position
   var438.Size = var0.Size
   var440 = var2
   return var2.createElement(var9, var438, var440)
end

function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = {}
   local var381 = {}
   var381.TextColor3 = var1.tags.textColor
   var381.Text = var0.Text
   var381.TextSize = var4.FONT_SIZE_TITLE
   var381.Font = var4.FONT
   var381.Size = UDim2.new(0, var0.textSize.X, 0, var0.textSize.Y)
   var381.Position = UDim2.new(0, 3, 0, 3)
   var381.BackgroundTransparency = 1
   var2.Title = var2.createElement("TextLabel", var381)
   local var408 = {}
   var408.BackgroundTransparency = 1
   var408.Image = var5.CLOSE_BUTTON
   var408.Size = UDim2.new(0, 16, 0, 16)
   var408.ImageColor3 = var1.tags.textColor
   var408.Position = UDim2.new(0, 3 + var0.textSize.X + 3, 0.5, 65528)
   var2.Event.MouseButton1Click = var0.onClose
   var2.Close = var2.createElement("ImageButton", var408)
   local var438 = {}
   var438.Background = var8
   local var440 = "CatalogTag"
   var438.BackgroundStyle = var440
   var438.Position = var0.Position
   var438.Size = var0.Size
   var440 = var2
   return var2.createElement(var9, var438, var440)
end

fun1 = var7.withContext
local var442 = {}
var442.Stylizer = var7.Stylizer
var10 = fun1(var442)(var10)
return var10
