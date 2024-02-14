-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Schemas.Settings.Transform)
local var4 = var0.Src.Util
local var5 = require(var4.ConvertTransformToRegion)
local var6 = require(var4.hasCorrectAspectRatio)
local var7 = require(var4.hasCorrectScaling)
local var8 = require(var4.SettingsHelper)
local var9 = require(var0.Src.Util.Operations.ImportOperation)
local var10 = require(var0.Src.Types)
local var11 = var10.Category
local var12 = var10.Gizmo
local var13 = var10.HeightmapSettings
local var14 = var10.SelectionSettings
local var15 = var10.Tab
local var16 = var10.Tool
local var17 = var10.TransformMode
local var18 = var10.TransformSettings
local var19 = require(var0.Src.Flags.getFFlagTerrainEditorImportTransform)
local var69 = {}
var69.Defaults = {}
var69.Id = var11.SelectionSettings
var69.Schema = require(var0.Src.Schemas.Settings.Selection)
local var72 = {}
local var75 = {}
var75.Error = ""
var13.Colormap = var75
var13.DefaultMaterial = Enum.Material.Grass
local var80 = {}
local var81 = ""
var80.Error = var81
var13.Heightmap = var80
var13.Import = true
var72.Defaults = {}
var72.Id = var11.HeightmapSettings
var72.Schema = require(var0.Src.Schemas.Settings.Heightmap)
local var86 = {}
var86.Id = var12.Region
local var88 = {}
var88.Type = var12.Region
var88.Wireframe = true
var88.Rotation = false
var86.Schema = var88
var81 = {}
local var24 = var2:new(var16.Import, var15.Create, var81, {})
function var24.startOperation(arg1, arg2)
   local var0 = arg1:getPayload()
   arg1._region = var5(var0[var11.SelectionSettings][var14.Transform], var0[var11.SelectionSettings][var14.Size], true)
   local var126 = arg1._services
   arg1._terrainRegion = var126.Terrain:CopyRegion(arg1._region)
   var126 = arg1._localization:getText("Operations", "ImportName")
   arg1._operation = var9(var126, arg1._localization:getText("Operations", "ImportDescription"), arg1._services, function()
      if var19() then
         local var150 = arg1
         var150 = Region3int16.new(arg1._region.Min, arg1._region.Max - Vector3int16.new(1, 1, 1))
         arg1._services.Terrain:PasteRegion(arg1._terrainRegion, arg1._region.Min, true)
         var18.TerrainRegion = var150._services.Terrain:CopyRegion(var150)
         var18.TerrainRegionSize = var0[var11.SelectionSettings][var14.Size]
         var18.TerrainRegionTransform = var0[var11.SelectionSettings][var14.Transform]
         var18.TransformMode = var17.Import
         var8.Set(var11.TransformSettings, var3.Storage, arg1._pluginController, {})
         arg1._toolController.selectTabAndTool(var15.Edit, var16.Transform)
      end
   end)
   local var209 = {}
   var209.Payload = var0
   local var1 = var1.join(var209, arg2)
   arg1._operation:start()
   arg1.OnOperationChanged:Fire()
end

function var24.init(arg1, arg2, arg3)
   local var218 = var2
   var218 = arg1
   var218.init(var218, arg2, arg3)
   local var228 = {}
   function var228.Validate()
      if var19() then
         local var245 = arg1
         var245 = Region3int16.new(arg1._region.Min, arg1._region.Max - Vector3int16.new(1, 1, 1))
         arg1._services.Terrain:PasteRegion(arg1._terrainRegion, arg1._region.Min, true)
         var18.TerrainRegion = var245._services.Terrain:CopyRegion(var245)
         var18.TerrainRegionSize = var0[var11.SelectionSettings][var14.Size]
         var18.TerrainRegionTransform = var0[var11.SelectionSettings][var14.Transform]
         var18.TransformMode = var17.Import
         var8.Set(var11.TransformSettings, var3.Storage, arg1._pluginController, {})
         arg1._toolController.selectTabAndTool(var15.Edit, var16.Transform)
      end
   end
   
   var14.Size = var228
   var11.SelectionSettings = {}
   local var2 = {}
   var2.Hidden = false
   var2.Label = ""
   local var3 = {}
   function var3.OnClick(arg1, arg2)
      local var0 = arg1:getPayload()
      arg1._region = var5(var0[var11.SelectionSettings][var14.Transform], var0[var11.SelectionSettings][var14.Size], true)
      local var338 = arg1._services
      arg1._terrainRegion = var338.Terrain:CopyRegion(arg1._region)
      var338 = arg1._localization:getText("Operations", "ImportName")
      arg1._operation = var9(var338, arg1._localization:getText("Operations", "ImportDescription"), arg1._services, function()
         if var19() then
            local var362 = arg1
            var362 = Region3int16.new(arg1._region.Min, arg1._region.Max - Vector3int16.new(1, 1, 1))
            arg1._services.Terrain:PasteRegion(arg1._terrainRegion, arg1._region.Min, true)
            var18.TerrainRegion = var362._services.Terrain:CopyRegion(var362)
            var18.TerrainRegionSize = var0[var11.SelectionSettings][var14.Size]
            var18.TerrainRegionTransform = var0[var11.SelectionSettings][var14.Transform]
            var18.TransformMode = var17.Import
            var8.Set(var11.TransformSettings, var3.Storage, arg1._pluginController, {})
            arg1._toolController.selectTabAndTool(var15.Edit, var16.Transform)
         end
      end)
      local var421 = {}
      var421.Payload = var0
      local var1 = var1.join(var421, arg2)
      arg1._operation:start()
      arg1.OnOperationChanged:Fire()
   end
   
   var3.Disabled = arg1._sessionUserSettings[var11.HeightmapSettings][var13.Heightmap].Image
   var2.Schema = var3
   var13.Import = var2
   var11.HeightmapSettings = {}
   arg1._overrides = {}
end

function var24.operation(arg1)
   return arg1._operation
end

function var24.saveForm(arg1, arg2)
   local var440 = var2
   var440 = arg1
   var440.saveForm(var440, arg2)
   arg1._overrides[var11.HeightmapSettings][var13.Import].Schema.Disabled = arg1._sessionUserSettings[var11.HeightmapSettings][var13.Heightmap].Image
end

return var24
