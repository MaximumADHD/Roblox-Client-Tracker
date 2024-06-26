-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Components.VisualizationModeSection)
local var4 = require(var0.Src.Compute.computeVisualizationModeSectionEntries)
local var5 = require(var0.Src.Hooks.useFuzzySearch)
return function(arg1)
   local var123 = {}
   function var123.createSection()
      arg1.OnVisualizationModeCategoryToggle(var4.name, var4.enabled)
   end
   
   return table.freeze(var123)
end
