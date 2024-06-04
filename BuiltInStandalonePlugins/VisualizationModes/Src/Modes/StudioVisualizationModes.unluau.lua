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
      local var0 = var1.createElement(var2, var49)
   end
   var43.DeviceEmulation = var45
   local var58 = {}
   var58.Title = var1:getText("StudioModes", "GUIOverlay")
   var58.Setting = game.StarterGui
   var58.Property = "ShowDevelopmentGui"
   var43.GUIOverlay = var1.createElement(var2, var58)
   local var68 = var3()
   if var68 then
      local var72 = {}
      var72.Title = var1:getText("StudioModes", "GUIGuides")
      local var0 = var1.createElement(var2, var72)
   end
   var43.GUIGuides = var68
   var34.GUI = var1.createElement("VisualizationModeCategory", var38, var43)
   local var82 = {}
   var82.Title = var1:getText("VisualizationModeCategories", "PhysicsGeometry")
   local var87 = {}
   local var91 = {}
   var91.Title = var1:getText("StudioModes", "AssemblyLabels")
   var91.Setting = var0.Physics
   var91.Property = "AreAssembliesShown"
   var87.AssemblyLabels = var1.createElement(var2, var91)
   local var102 = {}
   var102.Title = var1:getText("StudioModes", "DecompositionGeometry")
   var102.Setting = var0.Physics
   var102.Property = "ShowDecompositionGeometry"
   var87.DecompositionGeometry = var1.createElement(var2, var102)
   local var113 = {}
   var113.Title = var1:getText("StudioModes", "MechanismLabels")
   var113.Setting = var0.Physics
   var113.Property = "AreMechanismsShown"
   var87.MechanismLabels = var1.createElement(var2, var113)
   local var124 = {}
   var124.Title = var1:getText("StudioModes", "UnanchoredPartLabels")
   var124.Setting = var0.Physics
   var124.Property = "AreAnchorsShown"
   var87.UnanchoredPartLabels = var1.createElement(var2, var124)
   var34.PhysicsGeometry = var1.createElement("VisualizationModeCategory", var82, var87)
   local var136 = {}
   var136.Title = var1:getText("VisualizationModeCategories", "Lighting")
   local var141 = {}
   local var145 = {}
   var145.Title = var1:getText("StudioModes", "LightGuides")
   var145.Setting = var0.Studio
   var145.Property = "Show Light Guides"
   var141.LightGuides = var1.createElement(var2, var145)
   var34.Lighting = var1.createElement("VisualizationModeCategory", var136, var141)
   local var157 = {}
   var157.Title = var1:getText("VisualizationModeCategories", "Navigation")
   local var162 = {}
   local var166 = {}
   var166.Title = var1:getText("StudioModes", "NavigationMesh")
   var166.Setting = var0.Studio
   var166.Property = "Show Navigation Mesh"
   var162.NavigationMesh = var1.createElement(var2, var166)
   local var177 = {}
   var177.Title = var1:getText("StudioModes", "NavigationLabels")
   var177.Setting = var0.Studio
   var177.Property = "Show Navigation Labels"
   var162.NavigationLabels = var1.createElement(var2, var177)
   local var188 = {}
   var188.Title = var1:getText("StudioModes", "PathfindingLinks")
   var188.Setting = var0.Studio
   var188.Property = "Show Pathfinding Links"
   var162.PathfindingLinks = var1.createElement(var2, var188)
   var34.Navigation = var1.createElement("VisualizationModeCategory", var157, var162)
   local var200 = {}
   var200.Title = var1:getText("VisualizationModeCategories", "PhysicsConstraints")
   local var205 = {}
   local var207 = var3()
   if var207 then
      local var211 = {}
      var211.Title = var1:getText("StudioModes", "Constraints")
      local var0 = var1.createElement(var2, var211)
   end
   var205.Constraints = var207
   local var218 = var3()
   if var218 then
      local var222 = {}
      var222.Title = var1:getText("StudioModes", "ConstraintsOnTop")
      local var0 = var1.createElement(var2, var222)
   end
   var205.ConstraintsOnTop = var218
   local var229 = var3()
   if var229 then
      local var233 = {}
      var233.Title = var1:getText("StudioModes", "ContactPoints")
      local var0 = var1.createElement(var2, var233)
   end
   var205.ContactPoints = var229
   var34.PhysicsConstraints = var1.createElement("VisualizationModeCategory", var200, var205)
   local var243 = {}
   var243.Title = var1:getText("VisualizationModeCategories", "PhysicsSimulation")
   local var248 = {}
   local var252 = {}
   var252.Title = var1:getText("StudioModes", "HighlightAwakeParts")
   var252.Setting = var0.Physics
   var252.Property = "AreAwakePartsHighlighted"
   var248.AwakeParts = var1.createElement(var2, var252)
   local var263 = {}
   var263.Title = var1:getText("StudioModes", "NetworkOwner")
   var263.Setting = var0.Physics
   var263.Property = "AreOwnersShown"
   var248.NetworkOwner = var1.createElement(var2, var263)
   local var272 = var3()
   if var272 then
      local var276 = {}
      var276.Title = var1:getText("StudioModes", "WindDirection")
      local var0 = var1.createElement(var2, var276)
   end
   var248.WindDirection = var272
   var34.PhysicsSimulation = var1.createElement("VisualizationModeCategory", var243, var248)
   local var286 = {}
   var286.Title = var1:getText("VisualizationModeCategories", "View")
   local var291 = {}
   local var293 = var3()
   if var293 then
      local var297 = {}
      var297.Title = var1:getText("StudioModes", "ViewSelector")
      local var0 = var1.createElement(var2, var297)
   end
   var291.ViewSelector = var293
   local var9 = var3()
   if var9 then
      local var308 = {}
      var308.Title = var1:getText("StudioModes", "CollaboratorHighlights")
      local var0 = var1.createElement(var2, var308)
   end
   var291.CollaboratorHighlights = var9
   var34.View = var1.createElement("VisualizationModeCategory", var286, var291)
   return var1.createElement(var1.Fragment, {}, var34)
end
