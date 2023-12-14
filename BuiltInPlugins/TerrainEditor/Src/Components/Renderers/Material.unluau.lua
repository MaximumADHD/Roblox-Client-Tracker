-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.MaterialFramework)
local var3 = require(var0.Packages.React)
local var4 = var1.ContextServices.Stylizer
local var5 = var3.useMemo
local var6 = var3.useState
local var7 = var1.UI.Image
local var8 = var1.UI.Pane
local var9 = var2.Components.MaterialGrid
local var10 = var2.Enums.ViewType
local var11 = require(var0.Src.Util.getMaterials)
local var12 = require(var0.Src.Resources.Theme)
local function var13(arg1)
   local var42 = {}
   var42.Padding = 2
   var42.Size = arg1.Size
   local var45 = {}
   local var49 = {}
   local var0 = {}
   var0.Image = "rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Air.png"
   var49.Style = var0
   var45.Image = var3.createElement(var7, var49)
   return var3.createElement(var8, var42, var45)
end

local function var14(arg1)
   local var58 = {}
   var58.Padding = 2
   var58.Size = arg1.Size
   local var61 = {}
   local var65 = {}
   local var0 = {}
   var0.Image = "rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Water.png"
   var65.Style = var0
   var61.Image = var3.createElement(var7, var65)
   return var3.createElement(var8, var58, var61)
end

return function(arg1)
   local var0 = var4:use("MaterialRenderer")
   local var94 = arg1.Schema.AllowAir
   local var115 = {}
   var115.AutomaticSize = Enum.AutomaticSize.Y
   var115.Layout = Enum.FillDirection.Horizontal
   var115.Size = UDim2.fromScale(1, 0)
   var115.VerticalAlignment = Enum.VerticalAlignment.Top
   local var123 = {}
   local var127 = {}
   var127.AutomaticSize = Enum.AutomaticSize.Y
   Enum.Material.Air = var13
   Enum.Material.Water = var14
   var127.CustomPreviews = {}
   var127.GridItemSize = var0.GridItemSize
   var127.InitialDistance = var0.InitialDistance
   function var127.OnClick(arg1)
      local var100 = {}
      var100.Padding = 2
      var100.Size = arg1.Size
      local var103 = {}
      local var107 = {}
      local var0 = {}
      var0.Image = "rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Water.png"
      var107.Style = var0
      var103.Image = var3.createElement(var7, var107)
      return var3.createElement(var8, var100, var103)
   end
   
   var127.Items = var5(function(arg1)
      local var81 = {}
      var81.Padding = 2
      var81.Size = arg1.Size
      local var84 = {}
      local var88 = {}
      local var0 = {}
      var0.Image = "rbxasset://studio_svg_textures/Lua/TerrainEditor/Dark/Large/Air.png"
      var88.Style = var0
      var84.Image = var3.createElement(var7, var88)
      return var3.createElement(var8, var81, var84)
   end, {})
   var127.ScrollingDirection = Enum.ScrollingDirection.Y
   var127.SelectedItem = arg1.Value
   var127.ShowGridLabels = false
   var127.Size = UDim2.fromScale(1, 0)
   var127.ViewType = var10.Grid
   var123.Grid = var3.createElement(var9, var127)
   return var3.createElement(var8, var115, var123)
end
