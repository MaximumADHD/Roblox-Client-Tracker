-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Cryo)
local var4 = require(var1.Framework).ContextServices
local var5 = var4.withContext
if require(var0.Core.Util.SharedFlags.getFFlagToolboxConsolidateRenderMethods)() then
   local var0 = var2.Component:extend("AssetBackground1")
   local function fun10(arg1)
      local var0 = arg1.props
      local var1 = var0.Stylizer
      local var403 = Color3.fromRGB(255, 255, 255)
      local var404 = 0
      local var412 = var3.Dictionary
      var412 = var0
      local var414 = {}
      var414.BackgroundColor3 = var1.asset.background.color
      var414.Image = ""
      var414.BorderColor3 = var1.asset.icon.borderColor
      var414.BorderSizePixel = var1.asset.background.borderSize
      var414.ScaleType = Enum.ScaleType.Tile
      var414.TileSize = UDim2.new(0.125, 0, 0.125, 0)
      var414.backgroundIndex = var3.None
      var414.Stylizer = var3.None
      var0 = var412.join(var412, var414)
      return var2.createElement("ImageLabel", var0)
   end
   
   function var0.render(arg1)
      local var0 = arg1.props
      local var1 = var0.Stylizer
      local var403 = Color3.fromRGB(255, 255, 255)
      local var404 = 0
      local var412 = var3.Dictionary
      var412 = var0
      local var414 = {}
      var414.BackgroundColor3 = var1.asset.background.color
      var414.Image = ""
      var414.BorderColor3 = var1.asset.icon.borderColor
      var414.BorderSizePixel = var1.asset.background.borderSize
      var414.ScaleType = Enum.ScaleType.Tile
      var414.TileSize = UDim2.new(0.125, 0, 0.125, 0)
      var414.backgroundIndex = var3.None
      var414.Stylizer = var3.None
      var0 = var412.join(var412, var414)
      return var2.createElement("ImageLabel", var0)
   end
   
   fun10 = var5
   local var434 = {}
   var434.Stylizer = var4.Stylizer
   var0 = fun10(var434)(var0)
   return var0
end
local function var6(arg1, arg2)
   local var0 = arg1.Stylizer
   local var448 = Color3.fromRGB(255, 255, 255)
   local var449 = 0
   local var457 = var3.Dictionary
   var457 = arg1
   local var459 = {}
   var459.BackgroundColor3 = var0.asset.background.color
   var459.Image = ""
   var459.BorderColor3 = var0.asset.icon.borderColor
   var459.BorderSizePixel = var0.asset.background.borderSize
   var459.ScaleType = Enum.ScaleType.Tile
   var459.TileSize = UDim2.new(0.125, 0, 0.125, 0)
   var459.backgroundIndex = var3.None
   var459.Stylizer = var3.None
   arg1 = var457.join(var457, var459)
   return var2.createElement("ImageLabel", arg1)
end

local var7 = var2.Component:extend("AssetBackground1")
local function fun12(arg1)
   return var6(arg1.props, nil)
end

function var7.render(arg1)
   return var6(arg1.props, nil)
end

fun12 = var5
local var488 = {}
var488.Stylizer = var4.Stylizer
var7 = fun12(var488)(var7)
return var7
