-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash)
local var2 = require(script.Parent.BaseTool)
local var3 = require(var0.Src.Flags.getFFlagTerrainEditorTimeStatistic)
local var4 = var0.Src.Util
local var5 = require(var4.AnalyticsHelper)
local var6 = require(var4.ConvertTransformToRegion)
local var7 = require(var4.hasCorrectAspectRatio)
local var8 = require(var4.hasCorrectScaling)
local var9 = require(var0.Src.Util.Operations.ImportOperation)
local var10 = require(var0.Src.Resources.Constants)
local var11 = require(var0.Src.Types)
local var12 = var11.Category
local var13 = var11.Gizmo
local var14 = var11.HeightmapSettings
local var15 = var11.SelectionSettings
local var16 = var11.Tool
local var558 = {}
var558.Defaults = {}
var558.Id = var12.SelectionSettings
local var561 = {}
local var564 = {}
var564.Error = ""
var14.Colormap = var564
var14.DefaultMaterial = Enum.Material.Grass
local var569 = {}
local var570 = ""
var569.Error = var570
var14.Heightmap = var569
var14.Import = true
var561.Defaults = {}
var561.Id = var12.HeightmapSettings
local var575 = {}
var575.Id = var13.Region
local var577 = {}
var577.Type = var13.Region
var577.Wireframe = false
var577.Rotation = false
var575.Schema = var577
var570 = {}
local var21 = var2:new(var16.Import, var11.Tab.Create, var570, {})
function var21.startOperation(arg1, arg2)
   local var0 = arg1:getPayload()
   local var611 = var15.Size
   arg1._region = var6(var0[var12.SelectionSettings][var15.Transform], var0[var12.SelectionSettings][var611], true)
   local var615 = arg1._services
   arg1._terrainRegion = var615.Terrain:CopyRegion(arg1._region)
   var615 = arg1._localization:getText("Operations", "ImportName")
   arg1._operation = var9(var615, arg1._localization:getText("Operations", "ImportDescription"), arg1._services)
   arg1._operationFinishedConnection = arg1._operation.Finished:Connect(function()
      if var3() then
         arg1:finishOperation()
      end
      if not arg1._operation:wasCanceled() then
         local var639 = "RegionProperties"
         local var640 = var5
         var640 = arg1:getPayload()
         local var648 = var640.getRegionPayload(var640, arg1._operation:getTimeTaken(), var16.Import)
         arg1._analytics:report()
         arg1._analytics:report("Usage", var16.Import, 1)
         if arg1._operationFinishedConnection then
            arg1._operationFinishedConnection:Disconnect()
            arg1._operationFinishedConnection = nil
         end
      end
   end)
   local var669 = {}
   var669.Payload = var0
   var611 = arg2
   local var2 = var1.join(var669, var611)
   arg1._operation:start()
   arg1.OnOperationChanged:Fire()
end

function var21.init(arg1, arg2, arg3)
   local var677 = var2
   var677 = arg1
   var677.init(var677, arg2, arg3)
   local var1 = arg1:getPayload()[var12.SelectionSettings][var15.Size]
   local var695 = {}
   function var695.Validate()
      if var3() then
         arg1:finishOperation()
      end
      if not arg1._operation:wasCanceled() then
         local var709 = "RegionProperties"
         local var710 = var5
         var710 = arg1:getPayload()
         local var718 = var710.getRegionPayload(var710, arg1._operation:getTimeTaken(), var16.Import)
         arg1._analytics:report()
         arg1._analytics:report("Usage", var16.Import, 1)
         if arg1._operationFinishedConnection then
            arg1._operationFinishedConnection:Disconnect()
            arg1._operationFinishedConnection = nil
         end
      end
   end
   
   var15.Size = var695
   var12.SelectionSettings = {}
   local var3 = {}
   local var748 = arg1._sessionUserSettings[var12.HeightmapSettings][var14.Heightmap].Image
   if not var748 then
      local var0 = true
      if var1.X * var1.Y * var1.Z > var10.MaxImportVolume then
         local var0 = true
         if var10.VoxelResolution > var1.X then
            local var0 = true
            if var10.VoxelResolution > var1.Y then
               if var10.VoxelResolution > var1.Z then
                  local var0 = false
               end
               local var0 = true
            end
         end
      end
   end
   var3.Disabled = var748
   var3.Hidden = false
   var3.Label = ""
   local var5 = {}
   function var5.OnClick(arg1, arg2)
      local var0 = arg1:getPayload()
      local var798 = var15.Size
      arg1._region = var6(var0[var12.SelectionSettings][var15.Transform], var0[var12.SelectionSettings][var798], true)
      local var802 = arg1._services
      arg1._terrainRegion = var802.Terrain:CopyRegion(arg1._region)
      var802 = arg1._localization:getText("Operations", "ImportName")
      arg1._operation = var9(var802, arg1._localization:getText("Operations", "ImportDescription"), arg1._services)
      arg1._operationFinishedConnection = arg1._operation.Finished:Connect(function()
         if var3() then
            arg1:finishOperation()
         end
         if not arg1._operation:wasCanceled() then
            local var826 = "RegionProperties"
            local var827 = var5
            var827 = arg1:getPayload()
            local var835 = var827.getRegionPayload(var827, arg1._operation:getTimeTaken(), var16.Import)
            arg1._analytics:report()
            arg1._analytics:report("Usage", var16.Import, 1)
            if arg1._operationFinishedConnection then
               arg1._operationFinishedConnection:Disconnect()
               arg1._operationFinishedConnection = nil
            end
         end
      end)
      local var856 = {}
      var856.Payload = var0
      var798 = arg2
      local var2 = var1.join(var856, var798)
      arg1._operation:start()
      arg1.OnOperationChanged:Fire()
   end
   
   var3.Schema = var5
   var14.Import = var3
   var12.HeightmapSettings = {}
   arg1._overrides = {}
end

function var21.operation(arg1)
   return arg1._operation
end

function var21.saveForm(arg1, arg2)
   local var865 = var2
   var865 = arg1
   var865.saveForm(var865, arg2)
   local var1 = arg1:getPayload()[var12.SelectionSettings][var15.Size]
   local var2 = arg1._sessionUserSettings[var12.HeightmapSettings][var14.Heightmap].Image
   if not var2 then
      local var0 = true
      if var1.X * var1.Y * var1.Z > var10.MaxImportVolume then
         local var0 = true
         if var10.VoxelResolution > var1.X then
            local var0 = true
            if var10.VoxelResolution > var1.Y then
               if var10.VoxelResolution > var1.Z then
                  local var0 = false
               end
               local var0 = true
            end
         end
      end
   end
   if arg1._overrides[var12.HeightmapSettings][var14.Import].Disabled ~= var2 then
      arg1._overrides[var12.HeightmapSettings][var14.Import].Disabled = var2
      arg1.OnGizmoChanged:Fire()
   end
end

function var21.activate(arg1)
   local var924 = var2
   var924 = arg1
   var924.activate(var924)
   local var1 = arg1:getPayload()[var12.SelectionSettings][var15.Size]
   local var2 = arg1._sessionUserSettings[var12.HeightmapSettings][var14.Heightmap].Image
   if not var2 then
      local var0 = true
      if var1.X * var1.Y * var1.Z > var10.MaxImportVolume then
         local var0 = true
         if var10.VoxelResolution > var1.X then
            local var0 = true
            if var10.VoxelResolution > var1.Y then
               if var10.VoxelResolution > var1.Z then
                  local var0 = false
               end
               local var0 = true
            end
         end
      end
   end
   arg1._overrides[var12.HeightmapSettings][var14.Import].Disabled = var2
   arg1.OnGizmoChanged:Fire()
   arg1._analytics:report("Activated", var16.Import)
end

return var21
