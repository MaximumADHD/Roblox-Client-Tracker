-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.DebugFlags)
local var3 = game:GetService("HttpService")
local var4 = game:GetService("StudioService")
return function(arg1)
   local function var0(arg1, arg2)
      arg2 = arg2 or {}
      local var30 = {}
      var30.studioSid = arg1:GetSessionId()
      var30.clientId = arg1:GetClientId()
      var30.placeId = game.PlaceId
      local var41 = var4:GetUserId()
      var30.userId = var41
      var41 = arg2
      local var1 = var1.Dictionary.join(var30, var41)
      if var2.LogAnalytics() then
         local var0 = tostring(arg1)
         local var1 = var3:JSONEncode(var1)
         print(`Terrain SendEvent eventName=%s args=%s`)
      end
      arg1:SendEventDeferred("studio", "Terrain", arg1, var1)
   end
   
   local function fun0(arg1, arg2)
      if var2.LogAnalytics() then
         print(`Terrain ReportCounter counterName=%s count=%s`)
      end
      arg1:ReportCounter(arg1, arg2)
   end
   
   local var1 = {}
   function var1.changeTool(arg1, arg2)
      local var87 = {}
      var87.name = arg2
      var0("ToolSelected", var87)
   end
   
   function var1.changeTab(arg1, arg2)
      local var92 = {}
      var92.name = arg2
      var0("TabSelected", var92)
   end
   
   function var1.toggleWidget()
      local var93 = nil
      if var2.LogAnalytics() then
         print(`Terrain ReportCounter counterName=%s count=%s`)
      end
      arg1:ReportCounter("TerrainToolsToggleButton", var93)
      var0("ToggleWidget")
   end
   
   function var1.openWidget()
      local var113 = nil
      if var2.LogAnalytics() then
         print(`Terrain ReportCounter counterName=%s count=%s`)
      end
      arg1:ReportCounter("TerrainToolsOpenWidget", var113)
      var0("OpenWidget")
   end
   
   function var1.closeWidget()
      local var133 = nil
      if var2.LogAnalytics() then
         print(`Terrain ReportCounter counterName=%s count=%s`)
      end
      arg1:ReportCounter("TerrainToolsCloseWidget", var133)
      var0("CloseWidget")
   end
   
   function var1.generateTerrain(arg1, arg2, arg3, arg4)
      local var159 = {}
      var159.numVoxels = arg2
      var159.biomesize = arg3
      var159.seed = arg4
      var0("GenerateTerrain", var159)
   end
   
   function var1.useBrushTool(arg1, arg2)
      local var164 = {}
      var164.toolName = arg2
      var0("UseTerrainTool", var164)
   end
   
   function var1.useBrushToolExtended(arg1, arg2)
      local var169 = {}
      var169.toolName = arg2.currentTool
      var169.brushShape = arg2.brushShape
      var169.cursorSize = arg2.cursorSize
      var169.cursorHeight = arg2.cursorHeight
      var169.strength = arg2.strength
      var169.material = arg2.material
      var169.autoMaterial = arg2.autoMaterial
      var169.flattenMode = arg2.flattenMode
      var169.pivot = arg2.pivot
      var169.ignoreWater = arg2.ignoreWater
      var169.ignoreParts = arg2.ignoreParts
      var169.planeLock = arg2.planeLock
      var169.fixedPlane = arg2.fixedPlane
      var169.snapToVoxel = arg2.snapToVoxel
      var169.planePositionY = arg2.planePositionY
      var169.source = arg2.source
      var169.target = arg2.target
      var0("UseTerrainTool", var169)
   end
   
   function var1.importTerrain(arg1, arg2, arg3, arg4)
      local var193 = {}
      var193.regionDims = `{arg2.Size.x}`
      var193.heightMapUrl = arg3
      var193.colorMapUrl = arg4
      var0("ImportTerrain", var193)
   end
   
   function var1.importTerrainLocal(arg1, arg2, arg3, arg4, arg5, arg6)
      local var0 = {}
      var0.regionDims = `{arg2.Size.x}`
      var0.heightMapImgDims = `{arg4.width}{arg4.height}`
      var0.heightMapChannels = arg4.channels
      var0.material = arg3
      var0.guid = arg6
      if next(arg5) then
         var0.colorMapImgDims = `{arg5.width}{arg5.height}`
         var0.colorMapChannels = arg5.channels
      end
      var0("ImportTerrainLocal", var0)
   end
   
   function var1.importTerrainLocalHeightMap(arg1, arg2, arg3)
      local var242 = {}
      var242.assetId = arg2
      var242.guid = arg3
      var0("ImportTerrainHeightmapMapping", var242)
   end
   
   function var1.importTerrainLocalColorMap(arg1, arg2, arg3)
      local var248 = {}
      var248.assetId = arg2
      var248.guid = arg3
      var0("ImportTerrainColormapMapping", var248)
   end
   
   function var1.upgradeShorelinesAction(arg1, arg2)
      local var253 = {}
      var253.source = arg2
      var0("UpgradeShorelinesAction", var253)
   end
   
   function var1.upgradeShorelinesCancel(arg1)
      var0("UpgradeShorelinesCancel", {})
   end
   
   function var1.upgradeShorelinesDismiss(arg1, arg2)
      local var262 = {}
      var262.dontAsk = arg2
      var0("UpgradeShorelinesDismiss", var262)
   end
   
   function var1.upgradeSmoothVoxelsAction(arg1, arg2)
      local var267 = {}
      var267.source = arg2
      var0("UpgradeSmoothVoxelsAction", var267)
   end
   
   function var1.upgradeSmoothVoxelsCancel(arg1)
      var0("UpgradeSmoothVoxelsCancel", {})
   end
   
   function var1.upgradeSmoothVoxelsDismiss(arg1, arg2)
      local var276 = {}
      var276.dontAsk = arg2
      var0("UpgradeSmoothVoxelsDismiss", var276)
   end
   
   function var1.regionAction(arg1, arg2)
      local var0 = "TerrainToolsRegion" ... arg2
      local var1 = nil
      if var2.LogAnalytics() then
         print(`Terrain ReportCounter counterName=%s count=%s`)
      end
      arg1:ReportCounter(var0, var1)
   end
   
   function var1.regionMode(arg1, arg2)
      local var0 = "TerrainToolsRegionMode" ... arg2
      local var1 = nil
      if var2.LogAnalytics() then
         print(`Terrain ReportCounter counterName=%s count=%s`)
      end
      arg1:ReportCounter(var0, var1)
   end
   
   return var1
end
