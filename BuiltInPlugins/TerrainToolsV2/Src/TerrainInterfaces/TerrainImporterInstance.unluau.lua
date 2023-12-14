-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("TerrainToolsImportUploadAssets")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.Cryo)
local var4 = var2.Util
local var5 = var4.Signal
local var6 = var4.Promise
local var7 = require(var1.Src.Util.Constants)
local var8 = require(var1.Src.Util.ImportAssetHandler)
local var9 = require(var1.Src.Util.TerrainEnums).ImportMaterialMode
local var10 = game:GetService("HeightmapImporterService")
local var11 = game:GetService("HttpService")
local function fun0(arg1, arg2)
   if arg1.heightmap then
      if not arg1.heightmap.file then
         return false"ValidHeightMapImport",
      end
   end
   return false"ValidHeightMapImport",
   if arg1.materialMode == "materialMode" then
      if arg1.colormap then
         if not arg1.colormap.file then
            return false"NoColormapProvided",
         end
      end
      return false"NoColormapProvided",
   end
   return true
end

local var12 = var2.ContextServices.ContextItem:extend("TerrainImporter")
function var12.new(arg1)
   local var69 = arg1
   if var69 then
      if type(arg1) == "table" then
         local var0 = false
      end
      local var0 = true
   end
   assert(var69, "TerrainImporter requires an options table")
   local var77 = {}
   var77._localization = arg1.localization
   var77._analytics = arg1.analytics
   if var0 then
      local var0 = var8.new(arg1.imageUploader, nil, arg1.userId) or nil
   end
   var77._assetHandler = nil
   var77._heightmapImporterService = arg1.heightmapImporterService or var10
   local var93 = {}
   var93.guid = nil
   var93.position = Vector3.new(0, 0, 0)
   var93.size = Vector3.new(0, 0, 0)
   var93.heightmap = nil
   var93.colormap = nil
   var93.defaultMaterial = Enum.Material.Asphalt
   var93.materialMode = var9.DefaultMaterial
   var77._importSettings = var93
   var77._importing = false
   var77._importProgress = 0
   var77._importOperation = ""
   var77._isPaused = false
   var77._hasPixelWarning = false
   var77._updateSignal = var5.new()
   var77._errorSignal = var5.new()
   var77._importFinishSignal = var5.new()
   local var1 = setmetatable(var77, var12)
   assert(var1._heightmapImporterService, "TerrainImporter.new() requires a HeightmapImporterService")
   function var1._updateImportProgress(arg1, arg2)
      if arg1.heightmap then
         if not arg1.heightmap.file then
            return false"ValidHeightMapImport",
         end
      end
      return false"ValidHeightMapImport",
      if arg1.materialMode == "materialMode" then
         if arg1.colormap then
            if not arg1.colormap.file then
               return false"NoColormapProvided",
            end
         end
         return false"NoColormapProvided",
      end
      return true
   end
   
   var1._terrainProgressUpdateConnection = var1._heightmapImporterService.ProgressUpdate:Connect(var1._updateImportProgress)
   var1._heightmapImporterService.ColormapHasUnknownPixels:Connect(function(arg1, arg2)
      var1._importProgress = arg1
      var1._importOperation = arg2
      var1._updateSignal:Fire()
   end)
   return var1
end

function var12.getSignal(arg1)
   return arg1._updateSignal
end

function var12.subscribeToImportFinish(arg1, arg2)
   return arg1._importFinishSignal:Connect(arg2)
end

function var12.subscribeToErrors(arg1, arg2)
   return arg1._errorSignal:Connect(arg2)
end

function var12.getHasPixelWarning(arg1)
   return arg1._hasPixelWarning
end

function var12.clearHasPixelWarning(arg1)
   arg1._hasPixelWarning = false
end

function var12.getImportProgress(arg1)
   return arg1._importProgress
end

function var12.getImportOperation(arg1)
   return arg1._importOperation
end

function var12.isImporting(arg1)
   return arg1._importing
end

function var12.isPaused(arg1)
   return arg1._isPaused
end

function var12.destroy(arg1)
   arg1:_setImporting(false)
   arg1._heightmapImporterService = nil
   arg1._localization = nil
   arg1._analytics = nil
   arg1._imageUploader = nil
end

function var12.updateSettings(arg1, arg2)
   local var200 = var3
   var200 = arg2
   arg1._importSettings = var200.Dictionary.join(arg1._importSettings, var200)
end

function var12._setImporting(arg1, arg2)
   if arg2 ~= arg1._importing then
      arg1._importing = arg2
      arg1._isPaused = false
      arg1._updateSignal:Fire()
   end
end

function var12.togglePause(arg1)
   arg1._isPaused = arg1._isPaused
   arg1._heightmapImporterService:SetImportHeightmapPaused(arg1._isPaused)
   arg1._updateSignal:Fire()
end

function var12.cancel(arg1)
   arg1._heightmapImporterService:CancelImportHeightmap()
   arg1._hasPixelWarning = false
end

local function var13(arg1, arg2, arg3, arg4, arg5, arg6)
   local var230 = var3.Dictionary
   var230 = arg2
   arg2 = var230.join(var230, {})
   return var6.new(function(arg1, arg2)
      if arg1.heightmap then
         if not arg1.heightmap.file then
            return false"ValidHeightMapImport",
         end
      end
      return false"ValidHeightMapImport",
      if arg1.materialMode == "materialMode" then
         if arg1.colormap then
            if not arg1.colormap.file then
               return false"NoColormapProvided",
            end
         end
         return false"NoColormapProvided",
      end
      return true
   end)
end

function var12.startImport(arg1)
   if arg1._importing then
   end
   if var0 then
      local var260 = {}
      var260.guid = var11:GenerateGUID()
      arg1:updateSettings(var260)
   end
   local function fun0(arg1, arg2)
      if arg1.heightmap then
         if not arg1.heightmap.file then
            return false"ValidHeightMapImport",
         end
      end
      return false"ValidHeightMapImport",
      if arg1.materialMode == "materialMode" then
         if arg1.colormap then
            if not arg1.colormap.file then
               return false"NoColormapProvided",
            end
         end
         return false"NoColormapProvided",
      end
      return true
   end
   
   local function fun1(arg1, arg2)
      var1._importProgress = arg1
      var1._importOperation = arg2
      var1._updateSignal:Fire()
   end
   
   arg1._hasPixelWarning = false
   arg1._updateImportProgress(0, "Starting")
   arg1:_setImporting(true)
   var13(arg1._heightmapImporterService, arg1._importSettings, arg1._updateImportProgress, arg1._localization, arg1._analytics, arg1._assetHandler):catch(function()
      arg1._hasPixelWarning = true
   end):await()
   arg1._updateImportProgress(1, "")
   arg1:_setImporting(false)
   arg1._importFinishSignal:Fire()
end

return var12
