-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.DebugFlags)
if not var1.RunTests() then
   if var1.RunRhodiumTests() then
   end
end
local var2 = game:GetFastFlag("FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds")
local var3 = require(var0.Src.Util.Constants)
local var4 = {}
var4.plugin = plugin
var4.pluginName = var3.PLUGIN_NAME
var4.translationResourceTable = var0.Src.Resources.LocalizedStrings
var4.fallbackResourceTable = var0.Src.Resources.SourceStrings
var4.overrideLocaleId = nil
var4.localizationNamespace = nil
function var4.getToolbarName(arg1, arg2, arg3)
   local var40 = var2
   if var40 then
      return "Animations"
   end
   var40 = arg1
   return var40(arg2, arg3, "Plugin", "Toolbar")
end

local var47 = {}
function var47.getName(arg1, arg2, arg3)
   local var51 = var2
   if var51 then
      return "Animation Editor"
   end
   var51 = arg1
   return var51(arg2, arg3, "Plugin", "Button")
end

function var47.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var47.icon = var3.PLUGIN_ICON
var47.text = nil
var4.buttonInfo = var47
local var69 = {}
var69.id = "AnimationClipEditor"
var69.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, true, var3.MAIN_FLOATING_SIZE.X, var3.MAIN_FLOATING_SIZE.Y, var3.MAIN_MINIMUM_SIZE.X, var3.MAIN_MINIMUM_SIZE.Y)
function var69.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

var69.name = "AnimationClipEditor"
local var94 = Enum.ZIndexBehavior.Sibling
var69.zIndexBehavior = var94
var4.dockWidgetInfo = var69
var94 = var4
local var8 = require(var0.PluginLoader.PluginLoaderBuilder).build(var94)
if not var8.pluginLoader:waitForUserInteraction() then
end
local var101 = script
var101 = var8
require(var101.Parent.main)(plugin, var101)
