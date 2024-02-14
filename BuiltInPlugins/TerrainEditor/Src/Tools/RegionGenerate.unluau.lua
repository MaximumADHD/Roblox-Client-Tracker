-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = var0.Src.Schemas.Settings
local var4 = require(var3.Transform)
local var5 = var0.Src.Util
local var6 = require(var5.ConvertTransformToRegion)
local var7 = require(var5.SettingsHelper)
local var8 = require(var0.Src.Util.Operations.GenerateOperation)
local var9 = require(var0.Src.Types)
local var10 = var9.Biome
local var11 = var9.BiomeSettings
local var12 = var9.Category
local var13 = var9.Gizmo
local var14 = var9.SelectionSettings
local var15 = var9.Tab
local var16 = var9.Tool
local var17 = var9.TransformMode
local var18 = var9.TransformSettings
local var19 = require(var0.Src.Flags.getFFlagTerrainEditorGenerateTransform)
local var254 = {}
var254.Defaults = {}
var254.Id = var12.SelectionSettings
var254.Schema = require(var3.Selection)
local var257 = {}
var10.Mountains = true
var10.Hills = true
local var265 = var10.Plains
local var266 = true
var10.Plains = var266
var11.Biomes = {}
var11.BiomeBlending = 0.25
var11.BiomeSize = 100
var11.Caves = true
var11.Seed = 618033988
var257.Defaults = {}
var257.Id = var12.BiomeSettings
var257.Schema = require(var3.Biome)
local var277 = {}
var277.Id = var13.Region
local var279 = {}
var279.Type = var13.Region
var279.Wireframe = false
var279.Rotation = false
var277.Schema = var279
var265 = {}
var266 = {}
local var24 = var2:new(var16.Generate, var15.Create, var265, var266)
function var24.startOperation(arg1, arg2)
   local var0 = arg1:getPayload()
   arg1._region = var6(var0[var12.SelectionSettings][var14.Transform], var0[var12.SelectionSettings][var14.Size], true)
   local var316 = arg1._services
   arg1._terrainRegion = var316.Terrain:CopyRegion(arg1._region)
   var316 = arg1._localization:getText("Operations", "GenerateName")
   arg1._operation = var8(var316, arg1._localization:getText("Operations", "GenerateDescription"), arg1._services, function()
      if var19() then
         local var340 = arg1
         var340 = Region3int16.new(arg1._region.Min, arg1._region.Max - Vector3int16.new(1, 1, 1))
         arg1._services.Terrain:PasteRegion(arg1._terrainRegion, arg1._region.Min, true)
         var18.TerrainRegion = var340._services.Terrain:CopyRegion(var340)
         var18.TerrainRegionSize = var0[var12.SelectionSettings][var14.Size]
         var18.TerrainRegionTransform = var0[var12.SelectionSettings][var14.Transform]
         var18.TransformMode = var17.Import
         var7.Set(var12.TransformSettings, var4.Storage, arg1._pluginController, {})
         arg1._toolController.selectTabAndTool(var15.Edit, var16.Transform)
      end
   end)
   local var399 = {}
   var399.Payload = var0
   local var1 = var1.join(var399, arg2)
   arg1._operation:start()
   arg1.OnOperationChanged:Fire()
end

function var24.init(arg1, arg2, arg3)
   local var408 = var2
   var408 = arg1
   var408.init(var408, arg2, arg3)
   local var1 = {}
   var1.Hidden = false
   var1.Label = ""
   local var421 = {}
   function var421.OnClick()
      if var19() then
         local var438 = arg1
         var438 = Region3int16.new(arg1._region.Min, arg1._region.Max - Vector3int16.new(1, 1, 1))
         arg1._services.Terrain:PasteRegion(arg1._terrainRegion, arg1._region.Min, true)
         var18.TerrainRegion = var438._services.Terrain:CopyRegion(var438)
         var18.TerrainRegionSize = var0[var12.SelectionSettings][var14.Size]
         var18.TerrainRegionTransform = var0[var12.SelectionSettings][var14.Transform]
         var18.TransformMode = var17.Import
         var7.Set(var12.TransformSettings, var4.Storage, arg1._pluginController, {})
         arg1._toolController.selectTabAndTool(var15.Edit, var16.Transform)
      end
   end
   
   var1.Schema = var421
   var1.Value = true
   var11.Generate = var1
   var12.BiomeSettings = {}
   arg1._overrides = {}
end

function var24.operation(arg1)
   return arg1._operation
end

return var24
