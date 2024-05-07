-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Packages
local var1 = require(var0.Roact)
local var2 = require(var0.Cryo)
local var3 = require(var0.Framework).ContextServices
local var4 = var1.Component:extend("AssetBackground1")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var399 = Color3.fromRGB(255, 255, 255)
   local var400 = 0
   local var408 = var2.Dictionary
   var408 = var0
   local var410 = {}
   var410.BackgroundColor3 = var1.asset.background.color
   var410.Image = ""
   var410.BorderColor3 = var1.asset.icon.borderColor
   var410.BorderSizePixel = var1.asset.background.borderSize
   var410.ScaleType = Enum.ScaleType.Tile
   var410.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var410.backgroundIndex = var2.None
   var410.Stylizer = var2.None
   var0 = var408.join(var408, var410)
   return var1.createElement("ImageLabel", var0)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var399 = Color3.fromRGB(255, 255, 255)
   local var400 = 0
   local var408 = var2.Dictionary
   var408 = var0
   local var410 = {}
   var410.BackgroundColor3 = var1.asset.background.color
   var410.Image = ""
   var410.BorderColor3 = var1.asset.icon.borderColor
   var410.BorderSizePixel = var1.asset.background.borderSize
   var410.ScaleType = Enum.ScaleType.Tile
   var410.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var410.backgroundIndex = var2.None
   var410.Stylizer = var2.None
   var0 = var408.join(var408, var410)
   return var1.createElement("ImageLabel", var0)
end

fun10 = var3.withContext
local var430 = {}
var430.Stylizer = var3.Stylizer
var4 = fun10(var430)(var4)
return var4
