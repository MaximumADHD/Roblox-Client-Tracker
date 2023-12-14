-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.ContextItems)
local var4 = var0.Src.Components.Tools.ToolParts
local var5 = require(var4.Panel)
local var6 = require(var4.RegionFragment)
local var7 = var0.Src.Actions
local var8 = require(var7.ChangeSelection)
local var9 = require(var7.ChangeTool)
local var10 = require(var7.SetSnapToVoxels)
local var11 = require(var7.SetTransformMode)
local var12 = require(var7.SetTerrainRegion)
local var13 = require(var7.SetTerrainRegionCopyBuffer)
local var14 = require(var0.Src.Util.TerrainEnums)
local var15 = var14.ToolId
local var16 = var14.TransformMode
local var17 = require(var0.Src.Util.ConvertTransformToRegion)
local var18 = game:GetFastFlag("TerrainEditorOverhaul")
local var19 = game:GetService("ChangeHistoryService")
local var20 = game:GetService("Selection")
local var21 = var1.PureComponent:extend(script.Name)
function var21.init(arg1)
   function arg1.setRegion(arg1, arg2)
      arg1.props.dispatchChangeSelection(arg1, arg2)
   end
   
   if var18 then
      function arg1.copy()
         local var0 = arg1.props
         local var1 = var0.SelectionTransform
         local var2 = var0.SelectionSize
         var0.Analytics:report("regionAction", "Copy")
         local var315 = var17(var1, var2, true)
         var315 = var0.Terrain:get():CopyRegion()
         var0.dispatchSetTerrainRegionCopyBuffer(var315, var1, var2)
      end
      
      function arg1.delete()
         local var0 = arg1.props
         var0.Analytics:report("regionAction", "Delete")
         var0.Terrain:get():SetMaterialInTransform(var0.SelectionTransform, var0.SelectionSize, Enum.Material.Air)
         var19:SetWaypoint("TerrainDelete")
      end
      
      function arg1.cut()
         local var0 = arg1.props
         local var1 = var0.Terrain:get()
         local var2 = var0.SelectionTransform
         local var3 = var0.SelectionSize
         var0.Analytics:report("regionAction", "Cut")
         local var354 = var17(var2, var3, true)
         var1:SetMaterialInTransform(var2, var3, Enum.Material.Air)
         var354 = var1:CopyRegion()
         var0.dispatchSetTerrainRegionCopyBuffer(var354, var2, var3)
         var19:SetWaypoint("TerrainCut")
      end
      
      function arg1.paste()
         local var0 = arg1.props
         var0.Analytics:report("regionAction", "Paste")
         if var0.TerrainRegionCopyBuffer then
            var0.dispatchSetTransformMode(var16.Paste)
         end
      end
      
      function arg1.duplicate()
         local var0 = arg1.props
         var0.Analytics:report("regionAction", "Duplicate")
         local var392 = var17(var0.SelectionTransform, var0.SelectionSize, true)
         var392 = var0.Terrain:get():CopyRegion()
         var0.dispatchSetTerrainRegion(var392)
         var0.dispatchSetTransformMode(var16.Duplicate)
      end
      
      arg1.selection = {}
   end
end

if var18 then
   function var21.enable(arg1)
      local var0 = arg1.props
      var0.PluginActionsController:Enable("CopySelected")
      var0.PluginActionsController:Enable("CutSelected")
      var0.PluginActionsController:Enable("DeleteSelected")
      var0.PluginActionsController:Enable("PasteSelected")
      var0.PluginActionsController:Enable("DuplicateSelected")
   end
   
   function var21.disable(arg1)
      local var0 = arg1.props
      var0.PluginActionsController:Disable("CopySelected")
      var0.PluginActionsController:Disable("CutSelected")
      var0.PluginActionsController:Disable("DeleteSelected")
      var0.PluginActionsController:Disable("PasteSelected")
      var0.PluginActionsController:Disable("DuplicateSelected")
   end
   
   function var21.didMount(arg1)
      local var0 = arg1.props
      arg1.copyAction = var0.PluginActionsController:Connect("CopySelected", arg1.copy)
      arg1.cutAction = var0.PluginActionsController:Connect("CutSelected", arg1.cut)
      arg1.deleteAction = var0.PluginActionsController:Connect("DeleteSelected", arg1.delete)
      arg1.pasteAction = var0.PluginActionsController:Connect("PasteSelected", arg1.paste)
      arg1.duplicateAction = var0.PluginActionsController:Connect("DuplicateSelected", arg1.duplicate)
      arg1.selection = var20:Get() or {}
      var20:Set({})
      arg1.onSelectionChanged = var20.SelectionChanged:Connect(function()
         task.defer(function()
            var20:Set({})
         end)
      end)
      arg1:enable()
   end
   
   function var21.willUnmount(arg1)
      if arg1.onSelectionChanged then
         arg1.onSelectionChanged:Disconnect()
         arg1.onSelectionChanged = nil
      end
      var20:Set(arg1.selection)
      arg1:disable()
      if arg1.copyAction then
         arg1.copyAction:Disconnect()
      end
      if arg1.cutAction then
         arg1.cutAction:Disconnect()
      end
      if arg1.deleteAction then
         arg1.deleteAction:Disconnect()
      end
      if arg1.pasteAction then
         arg1.pasteAction:Disconnect()
      end
      if arg1.duplicateAction then
         arg1.duplicateAction:Disconnect()
      end
   end
   
end
local function fun19(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionTransform
   local var2 = var0.SelectionSize
   local var510 = {}
   local var514 = {}
   var514.Padding = UDim.new(0, 12)
   var514.LayoutOrder = 1
   var514.isSubsection = false
   var514.Title = var0.Localization:getText("SelectionSettings", "SelectionSettings")
   local var525 = {}
   local var529 = {}
   var529.LayoutOrder = 1
   var529.SetRegion = arg1.setRegion
   var529.SetSnapToVoxels = var0.dispatchSetSnapToVoxels
   var529.Size = var2
   var529.SnapToVoxels = var0.SnapToVoxels
   var529.SourceSize = var2
   var529.SourceTransform = var1
   var529.Transform = var1
   var529.ToolName = var15.Select
   var525.Dragger = var1.createElement(var6, var529)
   var510.SelectionSettings = var1.createElement(var5, var514, var525)
   return var1.createFragment(var510)
end

function var21.render(arg1)
   local var0 = arg1.props
   local var1 = var0.SelectionTransform
   local var2 = var0.SelectionSize
   local var510 = {}
   local var514 = {}
   var514.Padding = UDim.new(0, 12)
   var514.LayoutOrder = 1
   var514.isSubsection = false
   var514.Title = var0.Localization:getText("SelectionSettings", "SelectionSettings")
   local var525 = {}
   local var529 = {}
   var529.LayoutOrder = 1
   var529.SetRegion = arg1.setRegion
   var529.SetSnapToVoxels = var0.dispatchSetSnapToVoxels
   var529.Size = var2
   var529.SnapToVoxels = var0.SnapToVoxels
   var529.SourceSize = var2
   var529.SourceTransform = var1
   var529.Transform = var1
   var529.ToolName = var15.Select
   var525.Dragger = var1.createElement(var6, var529)
   var510.SelectionSettings = var1.createElement(var5, var514, var525)
   return var1.createFragment(var510)
end

fun19 = var2.withContext
local var538 = {}
var538.Analytics = var2.Analytics
var538.Localization = var2.Localization
var538.PluginActionsController = var3.PluginActionsController
var538.Terrain = var3.Terrain
var21 = fun19(var538)(var21)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.SelectionTransform = arg1.Tools.SelectionTransform
   var0.SelectionSize = arg1.Tools.SelectionSize
   var0.SnapToVoxels = arg1.Tools.SnapToVoxels
   var0.TerrainRegionCopyBuffer = arg1.Tools.TerrainRegionCopyBuffer
   return var0
end, function(arg1)
   local var0 = {}
   function var0.dispatchChangeSelection(arg1, arg2)
      arg1.props.dispatchChangeSelection(arg1, arg2)
   end
   
   function var0.dispatchChangeTool()
      local var0 = arg1.props
      local var1 = var0.SelectionTransform
      local var2 = var0.SelectionSize
      var0.Analytics:report("regionAction", "Copy")
      local var581 = var17(var1, var2, true)
      var581 = var0.Terrain:get():CopyRegion()
      var0.dispatchSetTerrainRegionCopyBuffer(var581, var1, var2)
   end
   
   function var0.dispatchSetSnapToVoxels()
      local var0 = arg1.props
      var0.Analytics:report("regionAction", "Delete")
      var0.Terrain:get():SetMaterialInTransform(var0.SelectionTransform, var0.SelectionSize, Enum.Material.Air)
      var19:SetWaypoint("TerrainDelete")
   end
   
   function var0.dispatchSetTransformMode()
      local var0 = arg1.props
      local var1 = var0.Terrain:get()
      local var2 = var0.SelectionTransform
      local var3 = var0.SelectionSize
      var0.Analytics:report("regionAction", "Cut")
      local var620 = var17(var2, var3, true)
      var1:SetMaterialInTransform(var2, var3, Enum.Material.Air)
      var620 = var1:CopyRegion()
      var0.dispatchSetTerrainRegionCopyBuffer(var620, var2, var3)
      var19:SetWaypoint("TerrainCut")
   end
   
   function var0.dispatchSetTerrainRegion()
      local var0 = arg1.props
      var0.Analytics:report("regionAction", "Paste")
      if var0.TerrainRegionCopyBuffer then
         var0.dispatchSetTransformMode(var16.Paste)
      end
   end
   
   function var0.dispatchSetTerrainRegionCopyBuffer()
      local var0 = arg1.props
      var0.Analytics:report("regionAction", "Duplicate")
      local var658 = var17(var0.SelectionTransform, var0.SelectionSize, true)
      var658 = var0.Terrain:get():CopyRegion()
      var0.dispatchSetTerrainRegion(var658)
      var0.dispatchSetTransformMode(var16.Duplicate)
   end
   
   return var0
end)(var21)
