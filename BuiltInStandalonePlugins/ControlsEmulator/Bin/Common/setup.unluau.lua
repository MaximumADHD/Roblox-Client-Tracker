-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ControlsEmulator")
local var1 = require(var0.Packages.PluginLoader.PluginLoaderBuilder)
local var2 = var0.Src.Resources.Localization.SourceStrings
local var3 = var0.Src.Resources.Localization.LocalizedStrings
local var4 = require(var0.Bin.Common.pluginType)
return function(arg1, arg2)
   arg1.Name = var0.Name
   local var0 = {}
   function var0.getName(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Button")
   end
   
   function var0.getDescription(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Description")
   end
   
   var0.icon = "rbxlocaltheme://GameSettings"
   var0.enabled = false
   local var1 = {}
   var1.plugin = arg1
   var1.pluginName = "ControlsEmulator"
   var1.translationResourceTable = var3
   var1.fallbackResourceTable = var2
   function var1.getToolbarName(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Toolbar")
   end
   
   var1.buttonInfo = var0
   if var4.get() ~= var4.Standalone then
      local var0 = false
   end
   if not true then
      if game:GetService("RunService"):IsEdit() then
         var0.enabled = true
         local var265 = {}
         var265.id = "ControlsEmulator"
         var265.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
         function var265.getDockTitle(arg1, arg2, arg3)
            return arg1(arg2, arg3, "Plugin", "Name")
         end
         
         var265.zIndexBehavior = Enum.ZIndexBehavior.Sibling
         var1.dockWidgetInfo = var265
         local var286 = var1
         var286 = var1
         local var2 = var286.build(var286)
         if not var2.pluginLoader:waitForUserInteraction() then
         end
         arg2(arg1, var2)
      end
   end
   var0.enabled = true
   local var296 = {}
   var296.id = "ControlsEmulator"
   var296.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
   function var296.getDockTitle(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Name")
   end
   
   var296.zIndexBehavior = Enum.ZIndexBehavior.Sibling
   var1.dockWidgetInfo = var296
   local var317 = var1
   var317 = var1
   local var319 = var317.build(var317)
   if not var319.pluginLoader:waitForUserInteraction() then
   end
   arg2(arg1, var319)
   local var326 = var1
   var326 = var1
   var326.build(var326)
end
