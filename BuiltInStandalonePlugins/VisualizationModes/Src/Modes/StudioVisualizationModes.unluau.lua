-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Modes.SettingVisualizationMode)
local var3 = require(var0.Src.Flags.getFFlagDebugStudioShowBrokenVisualizationModes)
local var4 = require(var0.Packages.Framework).ContextServices
return function()
   local var0 = settings()
   local var1 = var4.Localization:use()
   local var34 = {}
   local var38 = {}
   var38.Title = var1:getText("VisualizationModeCategories", "GUI")
   local var43 = {}
   local var45 = var3()
   if var45 then
      local var49 = {}
      var49.Title = var1:getText("StudioModes", "DeviceEmulation")
      var49.ToolTip = var1:getText("StudioModes", "DeviceEmulationToolTip")
      local var0 = var1.createElement(var2, var49)
   end
   var43.DeviceEmulation = var45
   local var62 = {}
   var62.Title = var1:getText("StudioModes", "GUIOverlay")
   var62.ToolTip = var1:getText("StudioModes", "GUIOverlayToolTip")
   var62.Setting = game.StarterGui
   var62.Property = "ShowDevelopmentGui"
   var43.GUIOverlay = var1.createElement(var2, var62)
   local var76 = var3()
   if var76 then
      local var80 = {}
      var80.Title = var1:getText("StudioModes", "GUIGuides")
      var80.ToolTip = var1:getText("StudioModes", "GUIGuidesToolTip")
      local var0 = var1.createElement(var2, var80)
   end
   var43.GUIGuides = var76
   var34.GUI = var1.createElement("VisualizationModeCategory", var38, var43)
   local var94 = {}
   var94.Title = var1:getText("VisualizationModeCategories", "PhysicsGeometry")
   local var99 = {}
   local var103 = {}
   var103.Title = var1:getText("StudioModes", "AssemblyLabels")
   var103.ToolTip = var1:getText("StudioModes", "AssemblyLabelsToolTip")
   var103.Setting = var0.Physics
   var103.Property = "AreAssembliesShown"
   var99.AssemblyLabels = var1.createElement(var2, var103)
   local var118 = {}
   var118.Title = var1:getText("StudioModes", "DecompositionGeometry")
   var118.ToolTip = var1:getText("StudioModes", "DecompositionGeometryToolTip")
   var118.Setting = var0.Physics
   var118.Property = "ShowDecompositionGeometry"
   var99.DecompositionGeometry = var1.createElement(var2, var118)
   local var133 = {}
   var133.Title = var1:getText("StudioModes", "MechanismLabels")
   var133.ToolTip = var1:getText("StudioModes", "MechanismLabelsToolTip")
   var133.Setting = var0.Physics
   var133.Property = "AreMechanismsShown"
   var99.MechanismLabels = var1.createElement(var2, var133)
   local var148 = {}
   var148.Title = var1:getText("StudioModes", "UnanchoredPartLabels")
   var148.ToolTip = var1:getText("StudioModes", "UnanchoredPartLabelsToolTip")
   var148.Setting = var0.Physics
   var148.Property = "AreAnchorsShown"
   var99.UnanchoredPartLabels = var1.createElement(var2, var148)
   var34.PhysicsGeometry = var1.createElement("VisualizationModeCategory", var94, var99)
   local var164 = {}
   var164.Title = var1:getText("VisualizationModeCategories", "Lighting")
   local var169 = {}
   local var173 = {}
   var173.Title = var1:getText("StudioModes", "LightGuides")
   var173.ToolTip = var1:getText("StudioModes", "LightGuidesToolTip")
   var173.Setting = var0.Studio
   var173.Property = "Show Light Guides"
   var169.LightGuides = var1.createElement(var2, var173)
   var34.Lighting = var1.createElement("VisualizationModeCategory", var164, var169)
   local var189 = {}
   var189.Title = var1:getText("VisualizationModeCategories", "Navigation")
   local var194 = {}
   local var198 = {}
   var198.Title = var1:getText("StudioModes", "NavigationMesh")
   var198.ToolTip = var1:getText("StudioModes", "NavigationMeshToolTip")
   var198.Setting = var0.Studio
   var198.Property = "Show Navigation Mesh"
   var194.NavigationMesh = var1.createElement(var2, var198)
   local var213 = {}
   var213.Title = var1:getText("StudioModes", "NavigationLabels")
   var213.ToolTip = var1:getText("StudioModes", "NavigationLabelsToolTip")
   var213.Setting = var0.Studio
   var213.Property = "Show Navigation Labels"
   var194.NavigationLabels = var1.createElement(var2, var213)
   local var228 = {}
   var228.Title = var1:getText("StudioModes", "PathfindingLinks")
   var228.ToolTip = var1:getText("StudioModes", "PathfindingLinksToolTip")
   var228.Setting = var0.Studio
   var228.Property = "Show Pathfinding Links"
   var194.PathfindingLinks = var1.createElement(var2, var228)
   var34.Navigation = var1.createElement("VisualizationModeCategory", var189, var194)
   local var244 = {}
   var244.Title = var1:getText("VisualizationModeCategories", "PhysicsConstraints")
   local var249 = {}
   local var251 = var3()
   if var251 then
      local var255 = {}
      var255.Title = var1:getText("StudioModes", "Constraints")
      var255.ToolTip = var1:getText("StudioModes", "ConstraintsToolTip")
      local var0 = var1.createElement(var2, var255)
   end
   var249.Constraints = var251
   local var266 = var3()
   if var266 then
      local var270 = {}
      var270.Title = var1:getText("StudioModes", "ConstraintsOnTop")
      var270.ToolTip = var1:getText("StudioModes", "ConstraintsOnTopToolTip")
      local var0 = var1.createElement(var2, var270)
   end
   var249.ConstraintsOnTop = var266
   local var281 = var3()
   if var281 then
      local var285 = {}
      var285.Title = var1:getText("StudioModes", "ContactPoints")
      var285.ToolTip = var1:getText("StudioModes", "ContactPointsToolTip")
      local var0 = var1.createElement(var2, var285)
   end
   var249.ContactPoints = var281
   var34.PhysicsConstraints = var1.createElement("VisualizationModeCategory", var244, var249)
   local var299 = {}
   var299.Title = var1:getText("VisualizationModeCategories", "PhysicsSimulation")
   local var304 = {}
   local var308 = {}
   var308.Title = var1:getText("StudioModes", "HighlightAwakeParts")
   var308.ToolTip = var1:getText("StudioModes", "HighlightAwakePartsToolTip")
   var308.Setting = var0.Physics
   var308.Property = "AreAwakePartsHighlighted"
   var304.AwakeParts = var1.createElement(var2, var308)
   local var323 = {}
   var323.Title = var1:getText("StudioModes", "NetworkOwner")
   var323.ToolTip = var1:getText("StudioModes", "NetworkOwnerToolTip")
   var323.Setting = var0.Physics
   var323.Property = "AreOwnersShown"
   var304.NetworkOwner = var1.createElement(var2, var323)
   local var336 = var3()
   if var336 then
      local var340 = {}
      var340.Title = var1:getText("StudioModes", "WindDirection")
      var340.ToolTip = var1:getText("StudioModes", "WindDirectionToolTip")
      local var0 = var1.createElement(var2, var340)
   end
   var304.WindDirection = var336
   var34.PhysicsSimulation = var1.createElement("VisualizationModeCategory", var299, var304)
   local var354 = {}
   var354.Title = var1:getText("VisualizationModeCategories", "View")
   local var359 = {}
   local var361 = var3()
   if var361 then
      local var365 = {}
      var365.Title = var1:getText("StudioModes", "ViewSelector")
      var365.ToolTip = var1:getText("StudioModes", "ViewSelectorToolTip")
      local var0 = var1.createElement(var2, var365)
   end
   var359.ViewSelector = var361
   local var9 = var3()
   if var9 then
      local var380 = {}
      var380.Title = var1:getText("StudioModes", "CollaboratorHighlights")
      var380.ToolTip = var1:getText("StudioModes", "CollaboratorHighlightsToolTip")
      local var0 = var1.createElement(var2, var380)
   end
   var359.CollaboratorHighlights = var9
   var34.View = var1.createElement("VisualizationModeCategory", var354, var359)
   return var1.createElement(var1.Fragment, {}, var34)
end
