-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Dash).join
local var2 = var0.Src.Util
local var3 = require(var2.ConvertForAnalytics)
local var4 = require(var2.DebugFlags)
local var262 = var0.Src.Flags
var262 = require(var262.getFStringTerrainEditorAnalyticsHandlers)
local var6 = string.split(var262(), ",")
local var7 = require(var0.Src.Types)
local var8 = game:GetService("HttpService")
local var9 = game:GetService("StudioService")
return function(arg1)
   local function var0(arg1, arg2)
      local var0 = {}
      var0.studioSid = arg1:GetSessionId()
      var0.placeId = game.PlaceId
      var0.userId = var9:GetUserId()
      arg2 = var3(var1(var0, arg2))
      local var1 = var4
      if var1.LogAnalytics() then
         var1 = `(EVENT) TerrainEditor reported event {tostring(arg1)}with payload {var8:JSONEncode(arg2)}`
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
      local var0 = table.find(var6, "Activated")
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
   
   function var1.Usage(arg1, arg2, arg3)
      local var0 = table.find(var6, "Usage")
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
   
   function var1.BrushProperties(arg1, arg2)
      if table.find(var6, "BrushProperties") then
         var0("terrainEditorBrushProperties", arg2)
      end
   end
   
   function var1.RegionProperties(arg1, arg2)
      if table.find(var6, "RegionProperties") then
         var0("terrainEditorRegionProperties", arg2)
      end
   end
   
   function var1.MaterialProperties(arg1, arg2)
      if table.find(var6, "MaterialProperties") then
         var0("terrainEditorMaterialProperties", arg2)
      end
   end
   
   return var1
end
