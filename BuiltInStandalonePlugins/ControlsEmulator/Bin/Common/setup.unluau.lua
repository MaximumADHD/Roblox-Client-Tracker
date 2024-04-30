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
         local var235 = {}
         var235.id = "ControlsEmulator"
         var235.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
         function var235.getDockTitle(arg1, arg2, arg3)
            return arg1(arg2, arg3, "Plugin", "Name")
         end
         
         var235.zIndexBehavior = Enum.ZIndexBehavior.Sibling
         var1.dockWidgetInfo = var235
         local var256 = var1
         var256 = var1
         local var2 = var256.build(var256)
         if not var2.pluginLoader:waitForUserInteraction() then
         end
         arg2(arg1, var2)
      end
   end
   var0.enabled = true
   local var266 = {}
   var266.id = "ControlsEmulator"
   var266.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
   function var266.getDockTitle(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Name")
   end
   
   var266.zIndexBehavior = Enum.ZIndexBehavior.Sibling
   var1.dockWidgetInfo = var266
   local var287 = var1
   var287 = var1
   local var289 = var287.build(var287)
   if not var289.pluginLoader:waitForUserInteraction() then
   end
   arg2(arg1, var289)
   local var296 = var1
   var296 = var1
   var296.build(var296)
end
