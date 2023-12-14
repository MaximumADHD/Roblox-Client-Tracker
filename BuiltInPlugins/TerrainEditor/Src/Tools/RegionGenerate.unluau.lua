-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(script.Parent.BaseTool)
local var2 = var0.Src.Schemas.Settings
local var3 = require(var2.Transform)
local var4 = var0.Src.Util
local var5 = require(var4.ConvertTransformToRegion)
local var6 = require(var4.SettingsHelper)
local var7 = require(var0.Src.Util.Operations.GenerateOperation)
local var8 = require(var0.Src.Types)
local var9 = var8.Biomes
local var10 = var8.BiomeSettings
local var11 = var8.Categories
local var12 = var8.Gizmo
local var13 = var8.SelectionSettings
local var14 = var8.ToolCategories
local var15 = var8.Tools
local var16 = var8.TransformMode
local var17 = var8.TransformSettings
local var49 = {}
var49.Defaults = {}
var49.Id = var11.SelectionSettings
var49.Schema = require(var2.Selection)
local var52 = {}
var9.Mountains = true
var9.Hills = true
local var60 = var9.Plains
local var61 = true
var9.Plains = var61
var10.Biomes = {}
var10.BiomeBlending = 0.25
var10.BiomeSize = 100
var10.Caves = true
var10.Seed = 618033988
var52.Defaults = {}
var52.Id = var11.BiomeSettings
var52.Schema = require(var2.Biome)
local var72 = {}
var72.Id = var12.Region
local var74 = {}
var74.Type = var12.Region
var74.Wireframe = false
var74.Rotation = false
var72.Schema = var74
var60 = {}
var61 = {}
local var22 = var1:new(var15.Generate, var14.Create, var60, var61)
function var22.init(arg1, arg2, arg3)
   local var85 = var1
   var85 = arg1
   var85.init(var85, arg2, arg3)
   local var1 = {}
   var1.Hidden = false
   var1.Label = ""
   local var98 = {}
   function var98.OnClick()
      local var113 = arg1
      var113 = Region3int16.new(arg1._region.Min, arg1._region.Max - Vector3int16.new(1, 1, 1))
      arg1._services.Terrain:PasteRegion(arg1._terrainRegion, arg1._region.Min, true)
      var7.TerrainRegion = var113._services.Terrain:CopyRegion(var113)
      var7.TerrainRegionSize = var6[var11.SelectionSettings][var3.Size]
      var7.TerrainRegionTransform = var6[var11.SelectionSettings][var3.Transform]
      var7.TransformMode = var17.Import
      var5.Set(var11.TransformSettings, var13.Storage, arg1._pluginController, {})
      arg1._toolController.selectTabAndTool(var16.Edit, var14.Transform)
   end
   
   var1.Schema = var98
   var1.Value = true
   var10.Generate = var1
   var11.BiomeSettings = {}
   arg1._overrides = {}
end

function var22.operation(arg1)
   return arg1._operation
end

return var22
