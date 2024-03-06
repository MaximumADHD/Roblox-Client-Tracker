-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("TerrainToolsImportUploadAssets")
local var1 = script.Parent.Parent.Parent
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.Cryo)
local var4 = var2.Util
local var5 = var4.Signal
local var6 = var4.Promise
local var7 = require(var1.Src.Util.Constants)
local var8 = require(var1.Src.Util.TerrainEnums).ImportMaterialMode
local var9 = game:GetService("HeightmapImporterService")
local var10 = game:GetService("HttpService")
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

local var11 = var2.ContextServices.ContextItem:extend("TerrainImporter")
function var11.new(arg1)
   local var64 = arg1
   if var64 then
      if type(arg1) == "table" then
         local var0 = false
      end
      local var0 = true
   end
   assert(var64, "TerrainImporter requires an options table")
   local var72 = {}
   var72._localization = arg1.localization
   var72._analytics = arg1.analytics
   var72._heightmapImporterService = arg1.heightmapImporterService or var9
   local var78 = {}
   var78.guid = nil
   var78.position = Vector3.new(0, 0, 0)
   var78.size = Vector3.new(0, 0, 0)
   var78.heightmap = nil
   var78.colormap = nil
   var78.defaultMaterial = Enum.Material.Asphalt
   var78.materialMode = var8.DefaultMaterial
   var72._importSettings = var78
   var72._importing = false
   var72._importProgress = 0
   var72._importOperation = ""
   var72._isPaused = false
   var72._hasPixelWarning = false
   var72._updateSignal = var5.new()
   var72._errorSignal = var5.new()
   var72._importFinishSignal = var5.new()
   local var1 = setmetatable(var72, var11)
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

function var11.getSignal(arg1)
   return arg1._updateSignal
end

function var11.subscribeToImportFinish(arg1, arg2)
   return arg1._importFinishSignal:Connect(arg2)
end

function var11.subscribeToErrors(arg1, arg2)
   return arg1._errorSignal:Connect(arg2)
end

function var11.getHasPixelWarning(arg1)
   return arg1._hasPixelWarning
end

function var11.clearHasPixelWarning(arg1)
   arg1._hasPixelWarning = false
end

function var11.getImportProgress(arg1)
   return arg1._importProgress
end

function var11.getImportOperation(arg1)
   return arg1._importOperation
end

function var11.isImporting(arg1)
   return arg1._importing
end

function var11.isPaused(arg1)
   return arg1._isPaused
end

function var11.destroy(arg1)
   arg1:_setImporting(false)
   arg1._heightmapImporterService = nil
   arg1._localization = nil
   arg1._analytics = nil
end

function var11.updateSettings(arg1, arg2)
   local var184 = var3
   var184 = arg2
   arg1._importSettings = var184.Dictionary.join(arg1._importSettings, var184)
end

function var11._setImporting(arg1, arg2)
   if arg2 ~= arg1._importing then
      arg1._importing = arg2
      arg1._isPaused = false
      arg1._updateSignal:Fire()
   end
end

function var11.togglePause(arg1)
   arg1._isPaused = arg1._isPaused
   arg1._heightmapImporterService:SetImportHeightmapPaused(arg1._isPaused)
   arg1._updateSignal:Fire()
end

function var11.cancel(arg1)
   arg1._heightmapImporterService:CancelImportHeightmap()
   arg1._hasPixelWarning = false
end

local function var12(arg1, arg2, arg3, arg4, arg5, arg6)
   local var214 = var3.Dictionary
   var214 = arg2
   arg2 = var214.join(var214, {})
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

function var11.startImport(arg1)
   if arg1._importing then
   end
   if var0 then
      local var244 = {}
      var244.guid = var10:GenerateGUID()
      arg1:updateSettings(var244)
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
   var12(arg1._heightmapImporterService, arg1._importSettings, arg1._updateImportProgress, arg1._localization, arg1._analytics, arg1._assetHandler):catch(function()
      arg1._hasPixelWarning = true
   end):await()
   arg1._updateImportProgress(1, "")
   arg1:_setImporting(false)
   arg1._importFinishSignal:Fire()
end

return var11
