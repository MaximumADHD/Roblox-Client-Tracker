-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
if not game:GetFastFlag("DeviceEmulatorPluginBasedUi") then
end
local var0 = script.Parent.Parent
if require(var0.Src.Util.DebugFlags).RunningUnderCLI() then
end
local var1 = {}
var1.plugin = plugin
var1.pluginName = "DeviceEmulator"
var1.translationResourceTable = var0.Src.Resources.Localization.LocalizedStrings
var1.fallbackResourceTable = var0.Src.Resources.Localization.SourceStrings
var1.overrideLocaleId = nil
var1.localizationNamespace = nil
function var1.getToolbarName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Toolbar")
end

local var44 = {}
function var44.getName(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Button")
end

function var44.getDescription(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Description")
end

var44.icon = "rbxasset://textures/DeviceEmulator/emulator.png"
var44.text = nil
var44.clickableWhenViewportHidden = true
var1.buttonInfo = var44
local var66 = {}
var66.id = "DeviceEmulator"
var66.dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Bottom, false, false, 360, 420, 300, 200)
function var66.getDockTitle(arg1, arg2, arg3)
   return arg1(arg2, arg3, "Plugin", "Name")
end

local var86 = Enum.ZIndexBehavior.Sibling
var66.zIndexBehavior = var86
var1.dockWidgetInfo = var66
var86 = var1
local var5 = require(var0.PluginLoader.PluginLoaderBuilder).build(var86)
if not var5.pluginLoader:waitForUserInteraction() then
end
local var93 = script
var93 = var5
require(var93.Parent.main)(plugin, var93)
