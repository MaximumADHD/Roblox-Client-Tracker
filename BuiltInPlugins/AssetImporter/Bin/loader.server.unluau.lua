-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:GetFastFlag("ImprovePluginSpeed_AssetImporter3") then
end
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
   local var46 = var2
   if var46 then
      return "Mesh Importer"
   end
   var46 = arg1
   return var46(arg2, arg3, "Plugin", "Toolbar")
end

local var53 = {}
function var53.getName(arg1, arg2, arg3)
   local var57 = var2
   if var57 then
      return "Import"
   end
   var57 = arg1
   return var57(arg2, arg3, "Plugin", "Button")
end

function var53.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var53.icon = "rbxlocaltheme://MeshImporter"
function var53.text(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

local var83 = true
var53.clickableWhenViewportHidden = var83
var3.buttonInfo = var53
var3.dockWidgetInfo = nil
var83 = var3
local var6 = require(var0.PluginLoader.PluginLoaderBuilder).build(var83)
if not var6.pluginLoader:waitForUserInteraction() then
end
local var91 = script
var91 = var6
require(var91.Parent.main)(plugin, var91)
