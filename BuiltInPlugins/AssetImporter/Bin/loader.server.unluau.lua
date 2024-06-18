-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
if require(var0.Src.Utility.DebugFlags).RunningUnderCLI() then
end
require(script.Parent.defineLuaFlags)
local var1 = game:GetFastFlag("FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds")
local var2 = {}
var2.plugin = plugin
var2.pluginName = "AssetImporter"
var2.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var2.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var2.overrideLocaleId = nil
var2.localizationNamespace = nil
function var2.getToolbarName(arg1, arg2, arg3)
   local var39 = var1
   if var39 then
      return "Mesh Importer"
   end
   var39 = arg1
   return var39(arg2, arg3, "Plugin", "Toolbar")
end

local var46 = {}
function var46.getName(arg1, arg2, arg3)
   local var50 = var1
   if var50 then
      return "Import"
   end
   var50 = arg1
   return var50(arg2, arg3, "Plugin", "Button")
end

function var46.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var46.icon = "rbxlocaltheme://MeshImporter"
function var46.text(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

local var76 = true
var46.clickableWhenViewportHidden = var76
var2.buttonInfo = var46
var2.dockWidgetInfo = nil
var76 = var2
local var5 = require(var0.Packages.PluginLoader.PluginLoaderBuilder).build(var76)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var84 = script
var84 = var5
require(var84.Parent.main)(plugin, var84)
