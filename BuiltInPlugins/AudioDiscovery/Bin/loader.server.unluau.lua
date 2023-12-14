-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
if not game:GetFastFlag("AudioDiscoveryLoader") then
end
if game:GetFastFlag("RetireAudioDiscoveryPlugin") then
end
local var0 = script.Parent.Parent
if require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
end
local var1 = require(var0.PluginLoader.PluginLoaderBuilder)
local var2 = {}
function var2.getName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

function var2.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var2.icon = "rbxlocaltheme://ViewSounds"
var2.enabled = false
local var3 = {}
var3.plugin = plugin
var3.pluginName = "AudioDiscovery"
var3.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var3.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
function var3.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

var3.buttonInfo = var2
if game:GetService("RunService"):IsEdit() then
   var2.enabled = true
   local var170 = {}
   var170.id = "AudioDiscovery"
   var170.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 640, 480, 250, 200)
   function var170.getDockTitle(arg1, arg2, arg3)
      return arg1(arg2, arg3, "Plugin", "Name")
   end
   
   local var190 = Enum.ZIndexBehavior.Sibling
   var170.zIndexBehavior = var190
   var3.dockWidgetInfo = var170
   var190 = var3
   local var2 = var1.build(var190)
   if not var2.pluginLoader:waitForUserInteraction() then
   end
   local var197 = script
   var197 = var2
   require(var197.Parent.main)(plugin, var197)
end
var1.build(var3)
