-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Packages
local var1 = require(var0.Roact)
local var2 = require(var0.Cryo)
local var3 = require(var0.Framework).ContextServices
local var4 = var1.Component:extend("AssetBackground1")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var414 = Color3.fromRGB(255, 255, 255)
   local var415 = 0
   local var423 = var2.Dictionary
   var423 = var0
   local var425 = {}
   var425.BackgroundColor3 = var1.asset.background.color
   var425.Image = ""
   var425.BorderColor3 = var1.asset.icon.borderColor
   var425.BorderSizePixel = var1.asset.background.borderSize
   var425.ScaleType = Enum.ScaleType.Tile
   var425.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var425.backgroundIndex = var2.None
   var425.Stylizer = var2.None
   var0 = var423.join(var423, var425)
   return var1.createElement("ImageLabel", var0)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var414 = Color3.fromRGB(255, 255, 255)
   local var415 = 0
   local var423 = var2.Dictionary
   var423 = var0
   local var425 = {}
   var425.BackgroundColor3 = var1.asset.background.color
   var425.Image = ""
   var425.BorderColor3 = var1.asset.icon.borderColor
   var425.BorderSizePixel = var1.asset.background.borderSize
   var425.ScaleType = Enum.ScaleType.Tile
   var425.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var425.backgroundIndex = var2.None
   var425.Stylizer = var2.None
   var0 = var423.join(var423, var425)
   return var1.createElement("ImageLabel", var0)
end

fun10 = var3.withContext
local var445 = {}
var445.Stylizer = var3.Stylizer
var4 = fun10(var445)(var4)
return var4
