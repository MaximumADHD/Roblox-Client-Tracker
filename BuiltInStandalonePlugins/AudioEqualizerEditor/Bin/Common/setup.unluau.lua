-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AudioEqualizerEditor")
local var1 = require(var0.Packages.PluginLoader.PluginLoaderBuilder)
local var2 = var0.Src.Resources.Localization.SourceStrings
local var3 = var0.Src.Resources.Localization.LocalizedStrings
local var4 = require(var0.Bin.Common.pluginType)
return function(arg1, arg2)
   arg1.Name = var0.Name
   local var0 = {}
   var0.plugin = arg1
   var0.pluginName = "AudioEqualizerEditor"
   var0.translationResourceTable = var3
   var0.fallbackResourceTable = var2
   function var0.getToolbarName(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Toolbar")
   end
   
   var0.noToolbar = true
   if var4.get() ~= var4.Standalone then
      local var0 = false
   end
   local var53 = var1
   var53 = var0
   local var1 = var53.build(var53)
   if not true then
      if game:GetService("RunService"):IsEdit() then
         arg2(arg1, var1)
      end
   end
   arg2(arg1, var1)
end
