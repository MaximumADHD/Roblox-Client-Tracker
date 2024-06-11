-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
local var1 = require(var0.Packages.PluginLoader.PluginLoaderBuilder)
local var2 = var0.Src.Resources.Localization.SourceStrings
local var3 = var0.Src.Resources.Localization.LocalizedStrings
local var4 = require(var0.Bin.Common.pluginType)
return function(arg1, arg2)
   arg1.Name = var0.Name
   local var0 = {}
   var0.plugin = arg1
   var0.pluginName = "AttenuationCurveEditor"
   var0.translationResourceTable = var3
   var0.fallbackResourceTable = var2
   function var0.getToolbarName(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Toolbar")
   end
   
   var0.noToolbar = true
   if var4.get() ~= var4.standalone then
      local var0 = false
   end
   if not true then
      if game:GetService("RunService"):IsEdit() then
         local var114 = var1
         var114 = var0
         arg2(arg1, var114.build(var114))
      end
   end
   local var120 = var1
   var120 = var0
   arg2(arg1, var120.build(var120))
   local var126 = var1
   var126 = var0
   var126.build(var126)
end
