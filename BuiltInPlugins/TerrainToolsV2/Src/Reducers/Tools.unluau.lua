-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Util.TerrainEnums)
local var3 = var2.ToolId
local var4 = var2.TransformMode
local var21 = {}
var21.currentTab = var2.TabId.Create
var21.currentTool = var3.None
var21.SelectionTransform = CFrame.new()
var21.SelectionSize = Vector3.new(64, 32, 64)
var21.ShorelinesUpgradePercent = 65535
var21.ShorelinesUpgradePossible = false
var21.ShorelinesUpgradeSuggestion = false
var21.SmoothVoxelsUpgradePercent = 65535
var21.SmoothVoxelsUpgradePossible = false
var21.SmoothVoxelsUpgradeSuggestion = false
var21.SnapToVoxels = true
var21.TransformMode = var4.Move
var21.lastToolPerTab = {}
local var40 = {}
function var40.ChangeSelection(arg1, arg2)
   local var46 = var1.Dictionary
   var46 = arg1
   local var48 = {}
   var48.SelectionTransform = arg2.selectionTransform
   var48.SelectionSize = arg2.selectionSize
   return var46.join(var46, var48)
end

function var40.ChangeTab(arg1, arg2)
   local var0 = arg2.tabName
   local var59 = var1.Dictionary
   var59 = arg1
   local var61 = {}
   var61.currentTab = var0
   var61.currentTool = arg1.lastToolPerTab[var0] or var3.None
   return var59.join(var59, var61)
end

function var40.ChangeTool(arg1, arg2)
   local var0 = arg2.currentTool
   if var0 == "join" then
      local var0 = var3.None
   end
   arg1.currentTab = var0
   local var77 = var1.Dictionary
   var77 = arg1
   local var79 = {}
   var79.currentTool = var0
   var79.lastToolPerTab = var1.Dictionary.join(arg1.lastToolPerTab, {})
   var79.TransformMode = var4.Move
   return var77.join(var77, var79)
end

function var40.SetShorelinesUpgradePercent(arg1, arg2)
   local var87 = var1.Dictionary
   var87 = arg1
   local var89 = {}
   var89.ShorelinesUpgradePercent = arg2.shorelinesUpgradePercent
   return var87.join(var87, var89)
end

function var40.SetShorelinesUpgradePossible(arg1, arg2)
   local var95 = var1.Dictionary
   var95 = arg1
   local var97 = {}
   var97.ShorelinesUpgradePossible = arg2.shorelinesUpgradePossible
   return var95.join(var95, var97)
end

function var40.SetShorelinesUpgradeSuggestion(arg1, arg2)
   local var103 = var1.Dictionary
   var103 = arg1
   local var105 = {}
   var105.ShorelinesUpgradeSuggestion = arg2.shorelinesUpgradeSuggestion
   return var103.join(var103, var105)
end

function var40.SetSmoothVoxelsUpgradePercent(arg1, arg2)
   local var111 = var1.Dictionary
   var111 = arg1
   local var113 = {}
   var113.SmoothVoxelsUpgradePercent = arg2.smoothVoxelsUpgradePercent
   return var111.join(var111, var113)
end

function var40.SetSmoothVoxelsUpgradePossible(arg1, arg2)
   local var119 = var1.Dictionary
   var119 = arg1
   local var121 = {}
   var121.SmoothVoxelsUpgradePossible = arg2.smoothVoxelsUpgradePossible
   return var119.join(var119, var121)
end

function var40.SetSmoothVoxelsUpgradeSuggestion(arg1, arg2)
   local var127 = var1.Dictionary
   var127 = arg1
   local var129 = {}
   var129.SmoothVoxelsUpgradeSuggestion = arg2.smoothVoxelsUpgradeSuggestion
   return var127.join(var127, var129)
end

function var40.SetSnapToVoxels(arg1, arg2)
   local var135 = var1.Dictionary
   var135 = arg1
   local var137 = {}
   var137.SnapToVoxels = arg2.snapToVoxels
   return var135.join(var135, var137)
end

function var40.SetTerrainRegion(arg1, arg2)
   local var143 = var1.Dictionary
   var143 = arg1
   local var145 = {}
   var145.TerrainRegion = arg2.TerrainRegion
   return var143.join(var143, var145)
end

function var40.SetTerrainRegionCopyBuffer(arg1, arg2)
   local var153 = var1.Dictionary
   var153 = arg1
   local var155 = {}
   var155.TerrainRegionCopyBuffer = arg2.TerrainRegionCopyBuffer
   var155.TerrainRegionCopyTransform = arg2.TerrainRegionCopyTransform
   var155.TerrainRegionCopySize = arg2.TerrainRegionCopySize
   return var153.join(var153, var155)
end

function var40.SetTransformMode(arg1, arg2)
   local var161 = var1.Dictionary
   var161 = arg1
   local var163 = {}
   var163.TransformMode = arg2.TransformMode
   var163.currentTool = var3.Transform
   return var161.join(var161, var163)
end

return require(var0.Packages.Rodux).createReducer(var21, var40)
