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
   local var2 = true
   local var3 = game:GetService("RunService"):IsEdit()
   var0.enabled = true
   local var74 = {}
   var74.id = "ControlsEmulator"
   var74.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
   function var74.getDockTitle(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Name")
   end
   
   var74.zIndexBehavior = Enum.ZIndexBehavior.Sibling
   var1.dockWidgetInfo = var74
   local var95 = var1
   var95 = var1
   local var6 = var95.build(var95)
   if not var6.pluginLoader:waitForUserInteraction() then
   end
   arg2(arg1, var6)
end
