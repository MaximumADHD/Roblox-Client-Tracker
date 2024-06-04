-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.Framework).ContextServices
local var2 = var0.Src.Resources.Localization.SourceStrings
local var3 = var0.Src.Resources.Localization.LocalizedStrings
return function()
   local var20 = {}
   var20.stringResourceTable = var2
   var20.translationResourceTable = var3
   var20.pluginName = "VisualizationModes"
   return var1.Localization.new(var20)
end
