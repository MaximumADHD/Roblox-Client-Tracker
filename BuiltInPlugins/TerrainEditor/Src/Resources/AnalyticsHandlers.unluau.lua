-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash).join
local var2 = var0.Src.Util
local var3 = require(var2.ConvertForAnalytics)
local var4 = require(var2.DebugFlags)
local var5 = require(var0.Src.Flags.getFFlagTerrainEditorAnalytics)
local var138 = var0.Src.Flags
var138 = require(var138.getFStringTerrainEditorAnalyticsHandlers)
local var7 = string.split(var138(), ",")
local var8 = require(var0.Src.Types)
local var9 = game:GetService("HttpService")
local var10 = game:GetService("StudioService")
return function(arg1)
   local function var0(arg1, arg2)
      local var0 = {}
      var0.studioSid = arg1:GetSessionId()
      var0.placeId = game.PlaceId
      var0.userId = var10:GetUserId()
      arg2 = var3(var1(var0, arg2))
      local var1 = var4
      if var1.LogAnalytics() then
         var1 = `(EVENT) TerrainEditor reported event {tostring(arg1)}with payload {var9:JSONEncode(arg2)}`
         print(var1)
      end
      arg1:SendEventDeferred("studio", "TerrainEditor", arg1, arg2)
   end
   
   local function fun0(arg1, arg2)
      local var0 = var4
      if var0.LogAnalytics() then
         var0 = `Terrain ReportCounter counterName=%* count=%*`
         print(var0)
      end
      arg1:ReportCounter(arg1, arg2)
   end
   
   local var1 = {}
   function var1.Activated(arg1, arg2, arg3)
      if var5() then
         local var0 = table.find(var7, "Activated")
         if var0 then
            local var0 = `{arg2}`
            var0 = var0
            var0 = arg3
            local var1 = var4
            if var1.LogAnalytics() then
               var1 = `Terrain ReportCounter counterName=%* count=%*`
               print(var1)
            end
            arg1:ReportCounter(var0, var0)
         end
      end
   end
   
   function var1.Usage(arg1, arg2, arg3)
      if var5() then
         local var0 = table.find(var7, "Usage")
         if var0 then
            local var0 = `{arg2}`
            var0 = var0
            var0 = arg3
            local var1 = var4
            if var1.LogAnalytics() then
               var1 = `Terrain ReportCounter counterName=%* count=%*`
               print(var1)
            end
            arg1:ReportCounter(var0, var0)
         end
      end
   end
   
   function var1.BrushProperties(arg1, arg2)
      if var5() then
         if table.find(var7, "BrushProperties") then
            var0("terrainEditorBrushProperties", arg2)
         end
      end
   end
   
   function var1.RegionProperties(arg1, arg2)
      if var5() then
         if table.find(var7, "RegionProperties") then
            var0("terrainEditorRegionProperties", arg2)
         end
      end
   end
   
   function var1.MaterialProperties(arg1, arg2)
      if var5() then
         if table.find(var7, "MaterialProperties") then
            var0("terrainEditorMaterialProperties", arg2)
         end
      end
   end
   
   function var1.regionAction(arg1, arg2)
      if not var5() then
         local var0 = "TerrainToolsRegion" ... arg2
         local var1 = nil
         local var2 = var4
         if var2.LogAnalytics() then
            var2 = `Terrain ReportCounter counterName=%* count=%*`
            print(var2)
         end
         arg1:ReportCounter(var0, var1)
      end
   end
   
   return var1
end
