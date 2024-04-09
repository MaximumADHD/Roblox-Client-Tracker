-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
if require(var0.Src.Utility.DebugFlags).RunningUnderCLI() then
end
local var1 = game:GetService("RunService")
require(script.Parent.defineLuaFlags)
local var2 = game:GetFastFlag("FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds")
local var3 = {}
var3.plugin = plugin
var3.pluginName = "AssetImporter"
var3.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var3.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var3.overrideLocaleId = nil
var3.localizationNamespace = nil
function var3.getToolbarName(arg1, arg2, arg3)
   local var42 = var2
   if var42 then
      return "Mesh Importer"
   end
   var42 = arg1
   return var42(arg2, arg3, "Plugin", "Toolbar")
end

local var49 = {}
function var49.getName(arg1, arg2, arg3)
   local var53 = var2
   if var53 then
      return "Import"
   end
   var53 = arg1
   return var53(arg2, arg3, "Plugin", "Button")
end

function var49.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var49.icon = "rbxlocaltheme://MeshImporter"
function var49.text(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

local var79 = true
var49.clickableWhenViewportHidden = var79
var3.buttonInfo = var49
var3.dockWidgetInfo = nil
var79 = var3
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var79)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var87 = script
var87 = var6
require(var87.Parent.main)(plugin, var87)
