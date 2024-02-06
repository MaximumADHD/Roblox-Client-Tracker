-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Packages
local var1 = require(var0.Roact)
local var2 = require(var0.Cryo)
local var3 = require(var0.Framework).ContextServices
local var4 = var1.Component:extend("AssetBackground1")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var406 = Color3.fromRGB(255, 255, 255)
   local var407 = 0
   local var415 = var2.Dictionary
   var415 = var0
   local var417 = {}
   var417.BackgroundColor3 = var1.asset.background.color
   var417.Image = ""
   var417.BorderColor3 = var1.asset.icon.borderColor
   var417.BorderSizePixel = var1.asset.background.borderSize
   var417.ScaleType = Enum.ScaleType.Tile
   var417.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var417.backgroundIndex = var2.None
   var417.Stylizer = var2.None
   var0 = var415.join(var415, var417)
   return var1.createElement("ImageLabel", var0)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var406 = Color3.fromRGB(255, 255, 255)
   local var407 = 0
   local var415 = var2.Dictionary
   var415 = var0
   local var417 = {}
   var417.BackgroundColor3 = var1.asset.background.color
   var417.Image = ""
   var417.BorderColor3 = var1.asset.icon.borderColor
   var417.BorderSizePixel = var1.asset.background.borderSize
   var417.ScaleType = Enum.ScaleType.Tile
   var417.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var417.backgroundIndex = var2.None
   var417.Stylizer = var2.None
   var0 = var415.join(var415, var417)
   return var1.createElement("ImageLabel", var0)
end

fun10 = var3.withContext
local var437 = {}
var437.Stylizer = var3.Stylizer
var4 = fun10(var437)(var4)
return var4
