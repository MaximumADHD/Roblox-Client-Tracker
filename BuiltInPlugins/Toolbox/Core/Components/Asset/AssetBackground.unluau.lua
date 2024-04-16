-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Packages
local var1 = require(var0.Roact)
local var2 = require(var0.Cryo)
local var3 = require(var0.Framework).ContextServices
local var4 = var1.Component:extend("AssetBackground1")
local function fun10(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var405 = Color3.fromRGB(255, 255, 255)
   local var406 = 0
   local var414 = var2.Dictionary
   var414 = var0
   local var416 = {}
   var416.BackgroundColor3 = var1.asset.background.color
   var416.Image = ""
   var416.BorderColor3 = var1.asset.icon.borderColor
   var416.BorderSizePixel = var1.asset.background.borderSize
   var416.ScaleType = Enum.ScaleType.Tile
   var416.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var416.backgroundIndex = var2.None
   var416.Stylizer = var2.None
   var0 = var414.join(var414, var416)
   return var1.createElement("ImageLabel", var0)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var405 = Color3.fromRGB(255, 255, 255)
   local var406 = 0
   local var414 = var2.Dictionary
   var414 = var0
   local var416 = {}
   var416.BackgroundColor3 = var1.asset.background.color
   var416.Image = ""
   var416.BorderColor3 = var1.asset.icon.borderColor
   var416.BorderSizePixel = var1.asset.background.borderSize
   var416.ScaleType = Enum.ScaleType.Tile
   var416.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var416.backgroundIndex = var2.None
   var416.Stylizer = var2.None
   var0 = var414.join(var414, var416)
   return var1.createElement("ImageLabel", var0)
end

fun10 = var3.withContext
local var436 = {}
var436.Stylizer = var3.Stylizer
var4 = fun10(var436)(var4)
return var4
