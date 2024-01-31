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
local var9 = var8.Biome
local var10 = var8.BiomeSettings
local var11 = var8.Category
local var12 = var8.Gizmo
local var13 = var8.SelectionSettings
local var14 = var8.Tab
local var15 = var8.Tool
local var16 = var8.TransformMode
local var17 = var8.TransformSettings
local var18 = require(var0.Src.Flags.getFFlagTerrainEditorGenerateTransform)
local var54 = {}
var54.Defaults = {}
var54.Id = var11.SelectionSettings
var54.Schema = require(var2.Selection)
local var57 = {}
var9.Mountains = true
var9.Hills = true
local var65 = var9.Plains
local var66 = true
var9.Plains = var66
var10.Biomes = {}
var10.BiomeBlending = 0.25
var10.BiomeSize = 100
var10.Caves = true
var10.Seed = 618033988
var57.Defaults = {}
var57.Id = var11.BiomeSettings
var57.Schema = require(var2.Biome)
local var77 = {}
var77.Id = var12.Region
local var79 = {}
var79.Type = var12.Region
var79.Wireframe = false
var79.Rotation = false
var77.Schema = var79
var65 = {}
var66 = {}
local var23 = var1:new(var15.Generate, var14.Create, var65, var66)
function var23.init(arg1, arg2, arg3)
   local var90 = var1
   var90 = arg1
   var90.init(var90, arg2, arg3)
   local var1 = {}
   var1.Hidden = false
   var1.Label = ""
   local var103 = {}
   function var103.OnClick()
      if arg1() then
         local var120 = var5
         var120 = Region3int16.new(var5._region.Min, var5._region.Max - Vector3int16.new(1, 1, 1))
         var5._services.Terrain:PasteRegion(var5._terrainRegion, var5._region.Min, true)
         var18.TerrainRegion = var120._services.Terrain:CopyRegion(var120)
         var18.TerrainRegionSize = var6[var13.SelectionSettings][var3.Size]
         var18.TerrainRegionTransform = var6[var13.SelectionSettings][var3.Transform]
         var18.TransformMode = var17.Import
         var11.Set(var13.TransformSettings, var7.Storage, var5._pluginController, {})
         var5._toolController.selectTabAndTool(var16.Edit, var14.Transform)
      end
   end
   
   var1.Schema = var103
   var1.Value = true
   var10.Generate = var1
   var11.BiomeSettings = {}
   arg1._overrides = {}
end

function var23.operation(arg1)
   return arg1._operation
end

return var23
