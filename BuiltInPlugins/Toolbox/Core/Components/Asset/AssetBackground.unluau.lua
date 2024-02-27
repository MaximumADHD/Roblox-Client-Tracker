-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Packages
local var1 = require(var0.Roact)
local var2 = require(var0.Cryo)
local var3 = require(var0.Framework).ContextServices
local var4 = var1.Component:extend("AssetBackground1")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var400 = Color3.fromRGB(255, 255, 255)
   local var401 = 0
   local var409 = var2.Dictionary
   var409 = var0
   local var411 = {}
   var411.BackgroundColor3 = var1.asset.background.color
   var411.Image = ""
   var411.BorderColor3 = var1.asset.icon.borderColor
   var411.BorderSizePixel = var1.asset.background.borderSize
   var411.ScaleType = Enum.ScaleType.Tile
   var411.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var411.backgroundIndex = var2.None
   var411.Stylizer = var2.None
   var0 = var409.join(var409, var411)
   return var1.createElement("ImageLabel", var0)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var400 = Color3.fromRGB(255, 255, 255)
   local var401 = 0
   local var409 = var2.Dictionary
   var409 = var0
   local var411 = {}
   var411.BackgroundColor3 = var1.asset.background.color
   var411.Image = ""
   var411.BorderColor3 = var1.asset.icon.borderColor
   var411.BorderSizePixel = var1.asset.background.borderSize
   var411.ScaleType = Enum.ScaleType.Tile
   var411.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var411.backgroundIndex = var2.None
   var411.Stylizer = var2.None
   var0 = var409.join(var409, var411)
   return var1.createElement("ImageLabel", var0)
end

fun10 = var3.withContext
local var431 = {}
var431.Stylizer = var3.Stylizer
var4 = fun10(var431)(var4)
return var4
